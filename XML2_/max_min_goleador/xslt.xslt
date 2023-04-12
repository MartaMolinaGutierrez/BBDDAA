<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Máximo y mínimo goleador de cada temporada</title>
      </head>
      <body>
        <h1>Máximo y mínimo goleador de cada temporada</h1>
        <xsl:for-each select="resultados/resultado">
          <h2>En la temporada <xsl:value-of select="@temporada" />:</h2>
          <p>El máximo goleador fue el <xsl:value-of select="@equipo" /> con <xsl:value-of select="@goles" /> goles.</p>
          <p>El equipo que menos goles metió fue el <xsl:choose><xsl:when test="position()=1"><xsl:value-of select="../resultado[position()=last()]/@equipo" /></xsl:when><xsl:otherwise><xsl:value-of select="../resultado[1]/@equipo" /></xsl:otherwise></xsl:choose> con <xsl:value-of select="../resultado[position()=last()]/@goles" /> goles.
          </p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
