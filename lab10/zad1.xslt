<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
<html> 
	<head> 
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
		<title>Moje zadanie</title> 
	</head> 

	<body>
		<h2>Moje zadanie</h2>
		<ol>
			<xsl:for-each select="zwierzaki/zwierze">
				<li>
					<xsl:if test="plec='k' and gatunek='kot'">
						<span style="color:green; text-decoration: underline"><xsl:value-of select="imie"/></span><xsl:text> </xsl:text><xsl:value-of select="@wiek"/><xsl:text> Kotka</xsl:text>
					</xsl:if>
					<xsl:if test="plec='k' and gatunek='pies'">
						<span style="text-decoration: underline"><xsl:value-of select="imie"/></span><xsl:text> </xsl:text><xsl:value-of select="@wiek"/><xsl:text> Suczka</xsl:text>
					</xsl:if>
					<xsl:if test="plec='m' and gatunek='kot'">
						<span style="color:green; text-decoration: underline"><xsl:value-of select="imie"/></span><xsl:text> </xsl:text><xsl:value-of select="@wiek"/><xsl:text> Kocur</xsl:text>
					</xsl:if>
					<xsl:if test="plec='m' and gatunek='pies'">
						<span style="text-decoration: underline"><xsl:value-of select="imie"/></span><xsl:text> </xsl:text><xsl:value-of select="@wiek"/><xsl:text> Pies</xsl:text>
					</xsl:if>
				</li>		
			</xsl:for-each>
		</ol>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
