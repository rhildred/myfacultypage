package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\" />\n");
      out.write("<title>Rich Hildred - Faculty Page</title>\n");
      out.write("<style>\n");
      out.write("html, body, div, span, applet, object, iframe,\n");
      out.write("h1, h2, h3, h4, h5, h6, p, blockquote, pre,\n");
      out.write("a, abbr, acronym, address, big, cite, code,\n");
      out.write("del, dfn, em, img, ins, kbd, q, s, samp,\n");
      out.write("small, strike, strong, sub, sup, tt, var,\n");
      out.write("b, u, i, center,\n");
      out.write("dl, dt, dd, ol, ul, li,\n");
      out.write("fieldset, form, label, legend,\n");
      out.write("table, caption, tbody, tfoot, thead, tr, th, td,\n");
      out.write("article, aside, canvas, details, embed, \n");
      out.write("figure, figcaption, footer, header, hgroup, \n");
      out.write("menu, nav, output, ruby, section, summary,\n");
      out.write("time, mark, audio, video {\n");
      out.write("\tmargin: 0;\n");
      out.write("\tpadding: 0;\n");
      out.write("\tborder: 0;\n");
      out.write("\tfont-size: 100%;\n");
      out.write("\tfont: inherit;\n");
      out.write("\tvertical-align: baseline;\n");
      out.write("}\n");
      out.write("/* HTML5 display-role reset for older browsers */\n");
      out.write("article, aside, details, figcaption, figure, \n");
      out.write("footer, header, hgroup, menu, nav, section {\n");
      out.write("\tdisplay: block;\n");
      out.write("}\n");
      out.write("body {\n");
      out.write("\tline-height: 1;\n");
      out.write("}\n");
      out.write("ol, ul {\n");
      out.write("\tlist-style: none;\n");
      out.write("}\n");
      out.write("blockquote, q {\n");
      out.write("\tquotes: none;\n");
      out.write("}\n");
      out.write("blockquote:before, blockquote:after,\n");
      out.write("q:before, q:after {\n");
      out.write("\tcontent: '';\n");
      out.write("\tcontent: none;\n");
      out.write("}\n");
      out.write("table {\n");
      out.write("\tborder-collapse: collapse;\n");
      out.write("\tborder-spacing: 0;\n");
      out.write("}\n");
      out.write("header img{\n");
      out.write("\tfloat:right;\n");
      out.write("\theight: 4em;\n");
      out.write("\tpadding: .1em;\n");
      out.write("}\n");
      out.write("hgroup{\n");
      out.write("\tfont-family: Verdana, Arial, sans-serif;\n");
      out.write("\tfont-weight:lighter;\n");
      out.write("\tpadding: .2em .2em .4em .2em;\n");
      out.write("}\n");
      out.write("\n");
      out.write("hgroup a{\n");
      out.write("\ttext-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("hgroup h1{\n");
      out.write("\tfont-size: 1.5em;\n");
      out.write("\tpadding: .2em;\n");
      out.write("}\n");
      out.write("hgroup h2{\n");
      out.write("\tfont-size: 1.2em;\n");
      out.write("\tpadding: .2em;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#tabs form{\n");
      out.write("\tpadding:.5em;\n");
      out.write("\tfloat:right;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#tabs form img{\n");
      out.write("\theight: .91em;\n");
      out.write("\tpadding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\thref=\"http://code.jquery.com/ui/1.10.3/themes/humanity/jquery-ui.css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<header><a href=\"http://github.com/rhildred\" target=\"_blank\"><img src=\"images/github.svg\" alt=\"github\" title=\"github\" /></a><a href=\"http://ca.linkedin.com/in/rhildred\" target=\"_blank\"><img src=\"images/Linkedin.svg\" alt=\"linkedin\" title=\"linkedin\" /></a>\n");
      out.write("\t<hgroup><h1>Rich Hildred - Faculty Page</h1>\n");
      out.write("\t<h2>&ldquo;Tell me and I forget. Teach me and I remember. Involve me and I learn.&rdquo; Benjamin Franklin</h2>\n");
      out.write("\t</hgroup>\n");
      out.write("\t</header>\n");
      out.write("\t<div id=\"tabs\">\n");
      out.write("\t<form><input type=\"text\" placeholder=\"search string\"/>\n");
      out.write("\t<button><img alt=\"search\" src=\"images/search.svg\" /></button></form>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li><a href=\"ajax/content0.html\">Preloaded</a></li>\n");
      out.write("\t\t\t<li><a href=\"ajax/content1.html\">Tab 1</a></li>\n");
      out.write("\t\t\t<li><a href=\"ajax/content2.html\">Tab 2</a></li>\n");
      out.write("\t\t\t<li><a href=\"ajax/content3-slow.php\">Tab 3 (slow)</a></li>\n");
      out.write("\t\t\t<li><a href=\"ajax/content4-broken.php\">broken tab</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("<script src=\"http://code.jquery.com/jquery-1.9.1.js\"></script>\n");
      out.write("<script src=\"http://code.jquery.com/ui/1.10.3/jquery-ui.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"/resources/demos/style.css\" />\n");
      out.write("<script>\n");
      out.write("\t$(function() {\n");
      out.write("\t\t$(\"#tabs\")\n");
      out.write("\t\t\t\t.tabs(\n");
      out.write("\t\t\t\t\t\t{\n");
      out.write("\t\t\t\t\t\t\tbeforeLoad : function(event, ui) {\n");
      out.write("\t\t\t\t\t\t\t\tui.jqXHR\n");
      out.write("\t\t\t\t\t\t\t\t\t\t.error(function() {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tui.panel\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t.html(\"Couldn't load this tab. We'll try to fix this as soon as possible. \"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t+ \"If this wouldn't be a demo.\");\n");
      out.write("\t\t\t\t\t\t\t\t\t\t});\n");
      out.write("\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t});\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("</html>\n");
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
