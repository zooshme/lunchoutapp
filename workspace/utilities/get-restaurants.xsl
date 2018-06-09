<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="restaurants">
  <section class="section">
    <h3 class="section-title">Pick a restaurant</h3>
    <ol class="restaurants--list">
      <xsl:for-each select="entry">
        <li class="restaurants--item box">
          <form>
            <h4 class="restaurants--item-name card-title"><xsl:value-of select="name" /></h4>
            <input name="restaurant" type="hidden" value="{@id}"/>
            <select name="location" id="" class="is-display-block">
              <xsl:for-each select="../../locations/entry[restaurant/item/@id=current()/@id]">
                <option value="{@id}"><xsl:value-of select="name" /></option>
              </xsl:for-each>
            </select>
            <button class="button button__small is-display-block">Pick restaurant</button>
          </form>
        </li>
      </xsl:for-each>
    </ol>
  </section>
</xsl:template>

</xsl:stylesheet>
