<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/get-bookings.xsl" />

<xsl:template match="data">
	<div class="page-header is-centred">
		<div class="container">
			<h1 class="page-title"><strong>Lunch Out</strong> <span>Quickly with Your Crew</span></h1>
			<p class="page-description">A straight-forward app to organize lunch with your peers</p>
			<a href="{$root}/booking" class="button">Start booking</a>
		</div>
	</div>

	<xsl:apply-templates select="previous-bookings" />
</xsl:template>

</xsl:stylesheet>
