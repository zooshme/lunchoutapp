<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/get-restaurants.xsl" />
<xsl:import href="../utilities/get-peers.xsl" />
<xsl:import href="../utilities/get-slots.xsl" />

<xsl:variable name="restaurant" select="/data/params/url-restaurant" />
<xsl:variable name="location" select="/data/params/url-location" />
<xsl:variable name="peers" select="/data/params/*[starts-with(name(), 'url-peers.')]" />


<xsl:template match="data">
	<header class="page-header">
		<div class="container">
			<h1 class="page-title is-centred">Your Booking</h1>
		</div>
	</header>
	<div class="container">
		<xsl:apply-templates select="$peers"/>
		<xsl:value-of select="count($peers)"/>
		<xsl:choose>
			<xsl:when test="$restaurant and $location and $peers">
				<p>Restaurant already selected</p>
				<p>Peers already selected</p>
				<form>
					<input type="hidden" name="restaurant" value="{$restaurant}"/>
					<input type="hidden" name="location" value="{$location}"/>
					<xsl:for-each select="$peers">
						<input type="hidden" name="peers[]" value="{.}"/>
					</xsl:for-each>
					<xsl:call-template name="slots">
						<xsl:with-param name="tables" select="tables-for-location//entry" />
						<xsl:with-param name="lunch-hours" select="lunch-hours-for-location//entry" />
						<xsl:with-param name="peers" select="$peers" />
					</xsl:call-template>
				</form>
			</xsl:when>
			<xsl:when test="$restaurant and $location">
				<p>Restaurant already selected</p>
				<form>
					<input type="hidden" name="restaurant" value="{$restaurant}"/>
					<input type="hidden" name="location" value="{$location}"/>
					<xsl:apply-templates select="peers" />
				</form>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select="restaurants" />
			</xsl:otherwise>
		</xsl:choose>
	</div>
</xsl:template>

</xsl:stylesheet>
