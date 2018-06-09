<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="previous-bookings">
  <section class="section bookings previous-bookings">
    <div class="container">
      <h3 class="section-title">Previous Bookings</h3>
      <ol class="bookings--list">
        <xsl:for-each select="entry">
          <li class="bookings--item box">
            <div class="bookings--item-date-and-time">
              <strong class="bookings--item-date">
                <xsl:call-template name="format-date">
                  <xsl:with-param name="date" select="date-and-time/date/start" />
                  <xsl:with-param name="format" select="'x M'" />
                </xsl:call-template>
              </strong>
              <span class="bookings--item-time">
                <xsl:call-template name="format-date">
                  <xsl:with-param name="date" select="date-and-time/date/start" />
                  <xsl:with-param name="format" select="'t'" />
                </xsl:call-template>
              </span>
            </div>
            <div class="bookings--item-restaurant-and-location">
              <strong class="bookings--item-restaurant"><xsl:value-of select="restaurant/item" /></strong>
              <span class="bookings--item-location"><xsl:value-of select="location/item" /></span>
            </div>
            <form>
              <button class="button button__small is-display-block">Book again</button>
            </form>
          </li>
        </xsl:for-each>
      </ol>
    </div>
  </section>
</xsl:template>

</xsl:stylesheet>
