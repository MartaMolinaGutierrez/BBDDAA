<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
        <html>
      <head>
        <title>Goles Real Madrid vs Barcelona</title>
        <style type="text/css">
          table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
          }
          td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #dddddd;
          }
          .rm {
            background-color: #f2c53d;
          }
          .bar {
            background-color: #a50044;
          }
        </style>
      </head>
      <body>
        <h1>Goles del Real Madrid vs Barcelona por temporada</h1>
        <table>
          <tr>
            <th>Temporada</th>
            <th>Real Madrid</th>
            <th>Barcelona</th>
          </tr>
          <xsl:for-each select="//temporada">
            <tr>
              <td><xsl:value-of select="@nombre"/></td>
              <td><xsl:value-of select="equipo[@nombre='Real Madrid']/@golesLocal + equipo[@nombre='Real Madrid']/@golesVisitante"/></td>
              <td><xsl:value-of select="equipo[@nombre='Barcelona']/@golesLocal + equipo[@nombre='Barcelona']/@golesVisitante"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
