<%@page contentType="application/json; charset=UTF-8"%>
<%@page import="org.json.simple.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="ca.on.conestogac.*"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%

String sUrl = request.getRequestURL().toString();
Oauth2 oauth2 = new Oauth2(application.getInitParameter("ClientID"),
		application.getInitParameter("ClientSecret"),
		sUrl,
		session
		);
try{
	if(oauth2.getGoogleId() == null && request.getParameter("code") == null)
	{
		oauth2.redirect(response);
	}
	else if(request.getParameter("code") != null)
	{
		oauth2.handleCode(request.getParameter("code"));
		List<String> aUrl = new ArrayList<String>(Arrays.asList(sUrl.split("/")));
		aUrl.remove(aUrl.size() - 1);
		String sNewUrl = StringUtils.join(aUrl.toArray(), "/");
		response.sendRedirect(sNewUrl);
	}
	Map m2 = new HashMap();
	m2.put("name", oauth2.getName());
	m2.put("googleId", oauth2.getGoogleId());
	m2.put("email", oauth2.getEmail());
	out.print(JSONValue.toJSONString(m2));
}
catch(Exception e)
{
	response.sendError(500, "Exception " + e.getMessage());
}
finally
{
	oauth2.close();
}

%>