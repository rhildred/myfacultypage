<%@page contentType="application/json; charset=UTF-8"%>
<%@page import="ca.on.conestogac.*"%>
<%
	WebClient oWebClient = new WebClient();
	String sQ = "test";
	if(request.getParameter("q") != null)
	{
		sQ = request.getParameter("q");
	}
	String sUrl = String.format("GET https://www.googleapis.com/customsearch/v1?q=%s&cx=014261563278459372447%3Agww5jxzf954&key=%s",
			sQ, application.getInitParameter("ApiKey"));
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