package org.apache.jsp.currentUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.json.simple.*;
import java.util.*;
import java.sql.*;
import ca.on.conestogac.*;
import org.apache.commons.lang.StringUtils;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("application/json; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


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


    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
