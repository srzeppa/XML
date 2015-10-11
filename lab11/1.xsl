<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl"> 
    <head> 
        <meta charset="utf-8"/> 
		<link rel="stylesheet" type="text/css" href="style.css" />
        <title>1</title> 
    </head> 
  <body>
  
  <table>
      <xsl:for-each select="zwierzaki/zwierze">
      <xsl:sort select="plec"/>
      <xsl:sort select="@wiek"/>
      <tr>
        <td><xsl:value-of select="plec"/></td>
        <td><xsl:value-of select="@wiek"/></td>
		<td><xsl:value-of select="gatunek"/></td>
        <td><xsl:value-of select="imie"/></td>
      </tr>
    </xsl:for-each>
  </table>
  
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
