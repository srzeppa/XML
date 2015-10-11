<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl"> 
    <head> 
        <meta charset="utf-8"/> 
		<link rel="stylesheet" type="text/css" href="style.css" />
        <title>6</title> 
    </head> 
  <body>
  
  <table>
      <xsl:for-each select="//zwierzaki/zwierze[gatunek='pies']">
      <xsl:sort select="imie"/>
      
      <tr>
		<span style="font-weight: bold">
        <xsl:value-of select="imie"/><xsl:text>  </xsl:text> 
        <xsl:value-of select="gatunek"/><br></br>
        </span>
      </tr>
    </xsl:for-each>
    
    <xsl:for-each select="//zwierzaki/zwierze[gatunek='kot']">
      <xsl:sort select="imie"/>
      <tr>
		<span style="font-style: italic">
        <xsl:value-of select="imie"/><xsl:text>  </xsl:text> 
        <xsl:value-of select="gatunek"/><br></br>
        </span>
      </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
