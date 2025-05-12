<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Noticias de Eneko</title>
        <link rel="stylesheet" type="text/css" href="estilosRSS.css"/>
      </head>
      <body>
        <h1><xsl:value-of select="rss/channel/title"/></h1>
        <xsl:for-each select="rss/channel/item">
          <div class="item">
            <h2><xsl:value-of select="title"/></h2>
            <p><strong>Enlace:</strong> <a href="{link}" target="_blank"><xsl:value-of select="link"/></a></p>
            <p><strong>Descripción:</strong> <xsl:value-of select="description"/></p>
            <p><strong>Autor:</strong> <xsl:value-of select="author"/></p>
            <p><strong>Categoría:</strong> <xsl:value-of select="category"/></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
