<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/style-guide.xsl" />

<xsl:template match="data">
	<xsl:call-template name="sg-component">
		<xsl:with-param name="name" select="'Page Header'" />
		<xsl:with-param name="html">
			<header class="page-header">
				<div class="container">
					<h1 class="page-title">Page Header</h1>
				</div>
			</header>
		</xsl:with-param>
	</xsl:call-template>


	<xsl:call-template name="sg-component">
		<xsl:with-param name="name" select="'Page Title'" />
		<xsl:with-param name="html">
			<h1 class="page-title">Page Title</h1>
		</xsl:with-param>
	</xsl:call-template>

	<xsl:call-template name="sg-component">
		<xsl:with-param name="name" select="'Page Subtitle'" />
		<xsl:with-param name="html">
			<h2 class="page-subtitle">Page Subtitle</h2>
		</xsl:with-param>
	</xsl:call-template>


	<xsl:call-template name="sg-component">
		<xsl:with-param name="name" select="'Section Title'" />
		<xsl:with-param name="html">
			<h3 class="section-title">Section Title</h3>
		</xsl:with-param>
	</xsl:call-template>

	<xsl:call-template name="sg-component">
		<xsl:with-param name="name" select="'Default Button'" />
		<xsl:with-param name="html">
			<button class="button">Default Button</button>
		</xsl:with-param>
	</xsl:call-template>

	<xsl:call-template name="sg-component">
		<xsl:with-param name="name" select="'Small Button'" />
		<xsl:with-param name="html">
			<button class="button button__small">Small Button</button>
		</xsl:with-param>
	</xsl:call-template>

	<xsl:call-template name="sg-component">
		<xsl:with-param name="name" select="'Box'" />
		<xsl:with-param name="html">
			<div class="box">
				<h4 class="box--title">Box</h4>
			</div>
		</xsl:with-param>
	</xsl:call-template>

	<xsl:call-template name="sg-component">
		<xsl:with-param name="name" select="'Bookings'" />
		<xsl:with-param name="html">
			<div class="bookings">
				<div class="bookings--list">
					<div class="box bookings--item">
						<h4 class="bookings--item-restaurant-and-location">
							<strong class="bookings--item-restaurant">MOZZA</strong>
							<span class="bookings--item-location">Glasgow</span>
						</h4>
					</div>
				</div>
			</div>
		</xsl:with-param>
	</xsl:call-template>



</xsl:template>

</xsl:stylesheet>
