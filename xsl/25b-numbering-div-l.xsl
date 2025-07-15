<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    exclude-result-prefixes="tei">
    <xsl:output method = "xml" indent="yes" omit-xml-declaration="no" /> 
    <!-- copy everything, number only the l elements, consecutively in each div -->
    <xsl:include href="copy.xsl"/>
    <xsl:template match="//tei:text/tei:body/tei:div/tei:l">
        <xsl:element name="{local-name()}" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="n" xmlns:tei="http://www.tei-c.org/ns/1.0"><xsl:text>.</xsl:text><xsl:value-of select="count(preceding-sibling::tei:l) + 1"/></xsl:attribute> 
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>

