<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="page-title.xsl"/>
<xsl:import href="navigation.xsl"/>
<xsl:import href="date-time.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:variable name="is-logged-in" select="/data/logged-in-author/author"/>

<xsl:template match="/">

<html>
	<head>
		<title>
			<xsl:call-template name="page-title"/>
		</title>
		<link rel="icon" type="images/png" href="{$workspace}/images/icons/bookmark.png" />
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/assets/dist/css/styles.css" />
		<link rel="stylesheet" type="text/css" href="https://cloud.typography.com/611456/7934192/css/fonts.css" />
	</head>
	<body>
		<header class="header">
			<div class="container">
				<a href="{$root}" class="logo">LunchOut.App</a>
				<xsl:apply-templates select="data/navigation"/>
			</div>
		</header>
		<main class="main">
			<xsl:apply-templates />
		</main>
		<footer class="footer">
			<div class="container">
				A Product by Zoosh Me!
			</div>
		</footer>
		<script src="{$workspace}/assets/dist/js/rainbow-custom.min.js"></script>
	</body>
</html>

</xsl:template>

</xsl:stylesheet>
