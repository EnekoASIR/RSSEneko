<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
      </head>
      <body>
        <h2>Informacion sobre las carreteras de Navarra</h2>
        <table>
          <tr>
            <th>Titulo</th>
            <th>Gravedad</th>
            <th>Afeccion</th>
            <th>Categoria</th>
            <th>Tipo</th>
          </tr>
          <xsl:for-each select="//row">
            <xsl:choose>
              <xsl:when test="Gravedad = 'Leve' ">
                <tr class="Leve">
                  <td>
                    <xsl:value-of select="Titulo"/>
                  </td>
                  <td>
                    <xsl:value-of select="Gravedad"/>
                  </td>
                  <td>
                    <xsl:value-of select="Afeccion"/>
                  </td>
                  <td>
                    <xsl:value-of select="Categoria"/>
                  </td>
                  <td>
                    <xsl:value-of select="Tipo"/>
                  </td>
                </tr>
              </xsl:when>
              <xsl:when test="Gravedad = 'Medio' ">
                <tr class="Medio">
                  <td>
                    <xsl:value-of select="Titulo"/>
                  </td>
                  <td>
                    <xsl:value-of select="Gravedad"/>
                  </td>
                  <td>
                    <xsl:value-of select="Afeccion"/>
                  </td>
                  <td>
                    <xsl:value-of select="Categoria"/>
                  </td>
                  <td>
                    <xsl:value-of select="Tipo"/>
                  </td>
                </tr>
              </xsl:when>
              <xsl:otherwise>
                <tr class="Grave">
                  <td>
                    <xsl:value-of select="Titulo"/>
                  </td>
                  <td>
                    <xsl:value-of select="Gravedad"/>
                  </td>
                  <td>
                    <xsl:value-of select="Afeccion"/>
                  </td>
                  <td>
                    <xsl:value-of select="Categoria"/>
                  </td>
                  <td>
                    <xsl:value-of select="Tipo"/>
                  </td>
                </tr>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
