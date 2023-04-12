<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Partidos</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Id Partido</th>
            <th>Temporada</th>
            <th>División</th>
            <th>Jornada</th>
            <th>Equipo Local</th>
            <th>Equipo Visitante</th>
            <th>Goles Local</th>
            <th>Goles Visitante</th>
            <th>Fecha</th>
            <th>Timestamp</th>
          </tr>
          <xsl:for-each select="partidos/partido">
            <tr>
              <td><xsl:value-of select="@idPartido"/></td>
              <td><xsl:value-of select="@temporada"/></td>
              <td><xsl:value-of select="@division"/></td>
              <td><xsl:value-of select="@jornada"/></td>
              <td><xsl:value-of select="@EquipoLocal"/></td>
              <td><xsl:value-of select="@EquipoVisitante"/></td>
              <td><xsl:value-of select="@golesLocal"/></td>
              <td><xsl:value-of select="@golesVisitante"/></td>
              <td><xsl:value-of select="@fecha"/></td>
              <td><xsl:value-of select="@timestamp"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
