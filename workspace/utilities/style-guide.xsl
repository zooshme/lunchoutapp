<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:exsl="http://exslt.org/common"
  extension-element-prefixes="exsl">

<xsl:import href="typography.xsl" />
<xsl:import href="nodeset-to-string.xsl" />

<xsl:template name="sg-component">
  <xsl:param name="name" />
  <xsl:param name="html" />

  <div class="sg-component">
    <div class="container">
      <h3 class="sg-component--name"><xsl:value-of select="$name"/></h3>
    </div>

    <div class="sg-component--preview">
      <div class="container">
        <xsl:apply-templates select="exsl:node-set($html)/*" mode="html" />
      </div>
    </div>

    <div class="sg-component--code">
      <div class="container">
        <pre>
          <code data-language="html">
            <xsl:apply-templates select="exsl:node-set($html)/*" mode="nodetostring"  />
          </code>
        </pre>
      </div>
    </div>
  </div>

</xsl:template>


</xsl:stylesheet>
