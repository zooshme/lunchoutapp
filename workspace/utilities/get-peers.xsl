<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="peers">
  <section class="section">
    <h3 class="section-title">Add your peers</h3>
    <ol class="peers--list">
      <xsl:for-each select="entry">
        <li class="peers--item">
          <label for="peer-{@id}">
            <input type="checkbox" name="peers[]" value="{@id}" id="peer-{@id}"/>
            <xsl:text>@</xsl:text>
            <xsl:value-of select="username" />
          </label>
        </li>
      </xsl:for-each>
    </ol>
    <button type="submit" class="button button__small">Add your peers</button>
  </section>

</xsl:template>


</xsl:stylesheet>
