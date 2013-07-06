<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Rich Hildred - Faculty Page</title>
<style>
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}
header img{
	float:right;
	height: 4em;
	padding: .1em;
}
hgroup{
	font-family: Verdana, Arial, sans-serif;
	font-weight:lighter;
	padding: .2em .2em .4em .2em;
}

hgroup a{
	text-decoration: none;
}

hgroup h1{
	font-size: 1.5em;
	padding: .2em;
}
hgroup h2{
	font-size: 1.2em;
	padding: .2em;
}

#tabs form{
	padding:.5em;
	float:right;
}

#tabs form img{
	height: .91em;
	padding: 0;
}

</style>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/humanity/jquery-ui.css" />
</head>
<body>
	<header><a href="http://github.com/rhildred" target="_blank"><img src="images/github.svg" alt="github" title="github" /></a><a href="http://ca.linkedin.com/in/rhildred" target="_blank"><img src="images/Linkedin.svg" alt="linkedin" title="linkedin" /></a>
	<hgroup><h1>Rich Hildred - Faculty Page</h1>
	<h2>&ldquo;Tell me and I forget. Teach me and I remember. Involve me and I learn.&rdquo; Benjamin Franklin</h2>
	</hgroup>
	</header>
	<div id="tabs">
	<form><input type="text" placeholder="search string"/>
	<button><img alt="search" src="images/search.svg" /></button></form>
		<ul>
			<li><a href="ajax/content0.html">Preloaded</a></li>
			<li><a href="ajax/content1.html">Tab 1</a></li>
			<li><a href="ajax/content2.html">Tab 2</a></li>
			<li><a href="ajax/content3-slow.php">Tab 3 (slow)</a></li>
			<li><a href="ajax/content4-broken.php">broken tab</a></li>
		</ul>
	</div>
</body>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<script>
	$(function() {
		$("#tabs")
				.tabs(
						{
							beforeLoad : function(event, ui) {
								ui.jqXHR
										.error(function() {
											ui.panel
													.html("Couldn't load this tab. We'll try to fix this as soon as possible. "
															+ "If this wouldn't be a demo.");
										});
							}
						});
	});
</script>
</html>
