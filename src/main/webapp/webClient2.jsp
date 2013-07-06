<%@page contentType="application/json; charset=UTF-8"%>
<%@page import="ca.on.conestogac.*"%>
<%@page import="org.json.simple.*"%>
<%@page import="java.util.*"%>
<%

WebClient oWebClient = new WebClient();

String sUrl = "http://api.flickr.com/services/feeds/photos_public.gne?id=51035594111@N01&format=json";

try
{
	JSONObject jsonObject = (JSONObject)oWebClient.downloadJson(sUrl);
	// loop array
	JSONArray msg = (JSONArray) jsonObject.get("items");
	Iterator<JSONObject> iterator = msg.iterator();
	while (iterator.hasNext()) {
		JSONObject oResult = iterator.next();
		out.println(oResult.get("title"));
	}
}
catch(Exception e)
{
	out.println("Exception " + e.getMessage());
}
finally
{
	oWebClient.dispose();
}


%>