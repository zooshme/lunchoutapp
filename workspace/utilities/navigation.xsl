<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation">
	<nav class="navigation">
		<xsl:apply-templates select="page[types/type = 'navigation']"/>
		<!-- <xsl:if test="$is-logged-in">
			<li><a href="{$root}/drafts/">Drafts</a></li>
			<li><a href="{$root}/symphony/">Admin</a></li>

			<xsl:if test="/data/logged-in-author/author[@user-type = 'developer']">
				<li><a href="?debug">Debug</a></li>
			</xsl:if>
		</xsl:if> -->
	</nav>
</xsl:template>

<xsl:template match="page">
	<a href="{$root}/{@handle}/">
		<xsl:if test="@handle = $root-page">
			<xsl:attribute name="class">active</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="name"/>
	</a>
</xsl:template>

</xsl:stylesheet>
