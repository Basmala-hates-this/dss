<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Library Inventory</title>
        <style>
          table { width: 100%; border-collapse: collapse; font-family: sans-serif; }
          th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
          th { background-color: #f4f4f4; }
       
          .high-price { background-color: #ffeb3b; font-weight: bold; }
        </style>
      </head>
      <body>
        <h1>Book List</h1>
        <table>
          <tr>
            <th>Title</th>
            <th>Year</th>
            <th>Price (DA)</th>
          </tr>
          <xsl:for-each select="library/book">
            <tr>
              <xsl:if test="price > 3000">
                <xsl:attribute name="class">high-price</xsl:attribute>
              </xsl:if>
              
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="year"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>