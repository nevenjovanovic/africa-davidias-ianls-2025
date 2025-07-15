<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    exclude-result-prefixes="tei">
    <xsl:output method = "xml" indent="yes" omit-xml-declaration="no" /> 
    <!-- 23-delete-parent-keep-children: copy everything, transform lg/l to l -->
    <!-- note -->
    <xsl:include href="copy.xsl"/>
    <xsl:template match="//tei:text//tei:lg[tei:l]">
            <xsl:apply-templates select="node()" />
    </xsl:template>
</xsl:stylesheet>

