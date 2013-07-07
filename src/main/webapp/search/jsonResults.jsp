<%@page contentType="application/json; charset=UTF-8"%>
<%@page import="ca.on.conestogac.*"%>
<%@page import="java.net.*"%>
<%
	WebClient oWebClient = new WebClient();
	String sQ = "test";
	if(request.getParameter("q") != null)
	{
		sQ = URLEncoder.encode(request.getParameter("q"),"UTF-8");
	}
	String sUrl = String.format("https://www.googleapis.com/customsearch/v1?q=%s&cx=014261563278459372447:gww5jxzf954&key=%s",
			sQ, application.getInitParameter("ApiKey"));
	try
	{
		out.print(oWebClient.downloadString(sUrl));
	}
	catch(Exception e)
	{
		response.sendError(500, "Exception " + e.getMessage());
	}
	finally
	{
		oWebClient.dispose();
	}
%>