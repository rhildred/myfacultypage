<%@page contentType="application/json; charset=UTF-8"%>
<%@page import="org.json.simple.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="ca.on.conestogac.*"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page import="java.net.*"%>
<%

String sUrl = request.getRequestURL().toString();
Oauth2 oauth2 = new Oauth2(application.getInitParameter("ClientID"),
		application.getInitParameter("ClientSecret"),
		sUrl,
		session
		);
String sConn = application.getInitParameter("dburl"); 
Connection connection = null;
PreparedStatement statement = null;
ResultSet rs = null;

try {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	connection = DriverManager.getConnection(sConn);
	
	statement = connection.prepareStatement("INSERT INTO entries(id, title, updated, link, summary) VALUES(?,?,?,?,?)");

	String sUid = UUID.randomUUID().toString();
	statement.setString(1, sUid);
	String sTitle = request.getParameter("title");
	statement.setString(2, sTitle);
	
	SimpleDateFormat formatter=
	          new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");
	String sUpdated = formatter.format(new Date());
	statement.setString(3, sUpdated);
	
	String sLink = "articles/" + URLEncoder.encode(sTitle, "UTF-8") + ".html";
	statement.setString(4, sLink);
	statement.setString(5, request.getParameter("summary"));
	int nRows = statement.executeUpdate();
	if(nRows != 1){
		throw new Exception(nRows + " inserted expected 1");
	}
	
	PreparedStatement sInsertAuthor = connection.prepareStatement("INSERT INTO authors(id, entryid, name, email) VALUES(?,?,?,?)");
	sInsertAuthor.setString(1,oauth2.getGoogleId());
	sInsertAuthor.setString(2, sUid);
	sInsertAuthor.setString(3, oauth2.getName());
	sInsertAuthor.setString(4, oauth2.getEmail());
	nRows = sInsertAuthor.executeUpdate();
	if(nRows != 1){
		throw new Exception(nRows + " inserted expected 1");
	}
	out.println(nRows + " row(s) inserted");
}
finally
{
	if(connection != null)
	{
		connection.close();
	}
}





%>