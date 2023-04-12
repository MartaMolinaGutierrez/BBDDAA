<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<h2>Equipos que han metido más goles como visitante que como local</h2>
<p>Tan solo <xsl:value-of select="count(resultados/resultado[@visitante='si'])"/> equipos han metido más goles jugando como equipo visitante que como equipo local.</p>
<ul>
<xsl:for-each select="resultados/resultado[@visitante='si']">
<li><xsl:value-of select="@equipo"/></li>
</xsl:for-each>
</ul>
</body>
</html>
</xsl:template>

</xsl:stylesheet>