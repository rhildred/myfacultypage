<%@page contentType="application/json; charset=UTF-8"%>
<%@page import="ca.on.conestogac.*"%>
<%
	WebClient oWebClient = new WebClient();
	String sUrl = "GET https://www.googleapis.com/customsearch/v1?q=%s&cx=014261563278459372447%3Agww5jxzf954&key=%s";
	try
	{
		out.print(oWebClient.downloadString(sUrl));
	}
	catch(Exception e)
	{
		response.sendError(500, "Exception " + e.getMessage() + " Url=\"" + sUrl + "\"");
	}
	finally
	{
		oWebClient.dispose();
	}
%>