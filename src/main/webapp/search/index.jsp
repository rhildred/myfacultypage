<%@page import="net.htmlparser.jericho.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>
<%@page import="ca.on.conestogac.*"%>
<%@page import="org.json.simple.*"%>
<%

WebClient oWebClient = new WebClient();
try
{
		String sourceUrlString="searchresults.html";
		URL sourceUrl=new URL(new URL(request.getRequestURL().toString()), sourceUrlString);
		Source source=new Source(sourceUrl);
		OutputDocument outputDocument=new OutputDocument(source);
		StringBuilder sb=new StringBuilder();
		sb.setLength(0);
		String sQ = "test";
		if(request.getParameter("q") != null)
		{
			sQ = URLEncoder.encode(request.getParameter("q"),"UTF-8");
		}
		String sUrl = String.format("https://www.googleapis.com/customsearch/v1?q=%s&cx=014261563278459372447:gww5jxzf954&key=%s",
				sQ, application.getInitParameter("ApiKey"));
		
		JSONObject jsonObject = (JSONObject)oWebClient.downloadJson(sUrl);
		// loop array
		JSONArray msg = (JSONArray) jsonObject.get("items");
		Iterator<JSONObject> iterator = msg.iterator();
		while (iterator.hasNext()) {
			JSONObject oResult = iterator.next();
			Source link = new Source(new URL((String)oResult.get("link")));
			List<StartTag> linkStartTags2=link.getAllStartTags("article");
			if(!linkStartTags2.isEmpty())
			{
				sb.append(linkStartTags2.get(0).getElement().toString());
			}
		}
		
		List<StartTag> linkStartTags=source.getAllStartTags("article");
		outputDocument.replace(linkStartTags.get(0).getElement(),sb.toString());
		outputDocument.writeTo(out);
}
catch(Exception e)
{
	response.sendError(500, "Exception " + e.toString());
}
finally
{
	oWebClient.dispose();
}
%>