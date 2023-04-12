<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>XML to HTML</title>
      </head>
      <body>
        <h1>XML to HTML</h1>
        <xsl:apply-templates select="ystfeed/vespaadd/document"/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="document">
    <h2><xsl:value-of select="subject"/></h2>
    <p><xsl:value-of select="content"/></p>
    <h3>Best Answer:</h3>
    <p><xsl:value-of select="bestanswer"/></p>
    <ul>
      <xsl:for-each select="nbestanswers/answer_item">
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
    </ul>
  </xsl:template>
</xsl:stylesheet>
