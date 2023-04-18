<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" />
	<xsl:template match="/">
		{
		"restaurace": {
		"info": { <!-- Informace o restauraci -->
		"nazev": "<xsl:value-of select="restaurace/info/nazev" />",
		"adresa": "<xsl:value-of select="restaurace/info/adresa" />",
		"telefon": "<xsl:value-of select="restaurace/info/telefon" />",
		"email": "<xsl:value-of select="restaurace/info/email" />"
		},
		"menu": [ <!-- Jídelní lístek -->
		<xsl:for-each select="restaurace/menu/jidlo">
			{
			"nazev": "<xsl:value-of select="nazev" />",
			"popis": "<xsl:value-of select="popis" />",
			"cena": <xsl:value-of select="cena" />
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		],
		"novinky": [ <!-- Novinky a akce -->
		<xsl:for-each select="restaurace/novinky/polozka">
			{
			"nazev": "<xsl:value-of select="nazev" />",
			"datum": "<xsl:value-of select="datum" />",
			"popis": "<xsl:value-of select="popis" />"
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		]
		}
		}
	</xsl:template>
</xsl:stylesheet>