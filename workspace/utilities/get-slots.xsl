<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:func="http://exslt.org/functions"
  xmlns:exsl="http://exslt.org/common"
  xmlns:str="http://exslt.org/strings"
  extension-element-prefixes="str func exsl">

<xsl:import href="date-time.xsl" />
<xsl:import href="string-split.xsl" />
<xsl:import href="day-name.xsl" />

<xsl:template name="slots">
  <xsl:param name="restaurant" />
  <xsl:param name="location" />
  <xsl:param name="tables" />
  <xsl:param name="lunch-hours" />
  <xsl:param name="peers" />

  <xsl:variable name="lunch-hours-today" select="$lunch-hours[days-of-week/item=$this-weekday]" />

  <xsl:variable name="this-time">
    <hours><xsl:value-of select="str:split($current-time, ':')" /></hours>
    <minutes><xsl:value-of select="str:split($current-time, ':')[last()]" /></minutes>
  </xsl:variable>

  <xsl:variable name="compatible-tables">
    <xsl:choose>
      <xsl:when test="$peers mod 2 = 0">
        <xsl:copy-of select="$tables[seats = count($peers)]" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:copy-of select="$tables[seats = (count($peers) + 1)]" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:variable name="opens-at">
      <hours><xsl:value-of select="$lunch-hours-today/hours-opens-at/item" /></hours>
      <minutes><xsl:value-of select="$lunch-hours-today/minutes-opens-at/item" /></minutes>
  </xsl:variable>

  <xsl:variable name="closes-at">
      <hours><xsl:value-of select="$lunch-hours-today/hours-closes-at/item" /></hours>
      <minutes><xsl:value-of select="$lunch-hours-today/minutes-closes-at/item" /></minutes>
  </xsl:variable>

  <xsl:value-of select="$opens-at" />
  <xsl:value-of select="$closes-at" />

  <xsl:variable name="slots">
    <xsl:for-each select="exsl:node-set($compatible-tables)/*">
      <table table-number="{table-number}">
        <xsl:call-template name="generate-slots">
          <xsl:with-param name="start" select="exsl:node-set($opens-at)" />
          <xsl:with-param name="closes-at" select="exsl:node-set($closes-at)" />
        </xsl:call-template>
      </table>
    </xsl:for-each>
  </xsl:variable>


  <section class="section slots">
    <h3 class="section-title">Pick your slot</h3>
    <table class="slots-table">
      <thead>
        <tr>
          <td>
            <table class="slots-table--header">
              <tr>
                <th class="slots-table--header-cell slots-table--header-cell__table-number">Table</th>
                <xsl:for-each select="exsl:node-set($slots)/table[position()=1]/slot">
                  <xsl:choose>
                    <xsl:when test="start/minutes = '00'">
                      <th class="slots-table--header-cell slots-table--header-cell__hours">
                        <xsl:value-of select="start/hours" />
                      </th>
                    </xsl:when>
                    <xsl:otherwise>
                      <th class="slots-table--header-cell slots-table--header-cell__minutes">
                        <xsl:value-of select="start/minutes" />
                      </th>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:for-each>
                <th class="slots-table--header-cell slots-table--header-cell__action">
                  <xsl:value-of select="exsl:node-set($slots)/table/slot[last()]" />
                </th>
              </tr>
            </table>
          </td>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="exsl:node-set($slots)/table">
          <tr>
            <td>
              <form>
                <table class="slots-table--body">
                  <tr>
                    <th class="slots-table--body-cell slots-table--body-cell__table-number">
                      <span><xsl:value-of select="@table-number" /></span>
                    </th>
                    <xsl:for-each select="slot">
                      <td class="slots-table--body-cell">
                        <label class="slots-table--body-label">
                          <input type="checkbox" name="slots[]" value="{start/hours}:{start/minutes}" class="slots-table--body-checkbox" />
                          <span class="slots-table--body-check-area"></span>
                        </label>
                      </td>
                    </xsl:for-each>
                    <td class="slots-table--body-cell slots-table--body-cell__action">
                      <button class="button button__small is-display-block" type="submit">Book table</button>
                    </td>
                  </tr>
                </table>
              </form>
            </td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </section>
</xsl:template>


<xsl:template name="generate-slots">
  <xsl:param name="start" />
  <xsl:param name="closes-at" />
  <xsl:choose>
    <xsl:when test="$start/hours &lt; $closes-at/hours">
      <xsl:choose>
        <xsl:when test="$start/minutes &lt; 45">
          <slot>
            <start>
              <hours><xsl:value-of select="$start/hours" /></hours>
              <minutes><xsl:value-of select="$start/minutes" /></minutes>
            </start>
            <end>
              <hours><xsl:value-of select="$start/hours" /></hours>
              <minutes><xsl:value-of select="$start/minutes + 15" /></minutes>
            </end>
          </slot>
          <xsl:variable name="new-start">
            <hours><xsl:value-of select="$start/hours" /></hours>
            <minutes><xsl:value-of select="$start/minutes + 15" /></minutes>
          </xsl:variable>
          <xsl:call-template name="generate-slots">
            <xsl:with-param name="start" select="exsl:node-set($new-start)" />
            <xsl:with-param name="closes-at" select="$closes-at" />
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <slot>
            <start>
              <hours><xsl:value-of select="$start/hours" /></hours>
              <minutes><xsl:value-of select="$start/minutes" /></minutes>
            </start>
            <end>
              <hours><xsl:value-of select="$start/hours + 1" /></hours>
              <minutes>00</minutes>
            </end>
          </slot>
          <xsl:variable name="new-start">
            <hours><xsl:value-of select="$start/hours + 1" /></hours>
            <minutes>00</minutes>
          </xsl:variable>
          <xsl:call-template name="generate-slots">
            <xsl:with-param name="start" select="exsl:node-set($new-start)" />
            <xsl:with-param name="closes-at" select="$closes-at" />
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>
