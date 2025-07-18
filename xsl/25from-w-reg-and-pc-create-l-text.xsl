<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    exclude-result-prefixes="tei">
    <xsl:output method = "xml" indent="yes" omit-xml-declaration="no" /> 
    <!-- from w/@reg and pc recreate the l text: in each s wrap \w+ into w and \p{P} into pc -->
    <xsl:include href="copy.xsl"/>
    <xsl:template match="//*:text//*:l">
        <xsl:copy>
            <xsl:apply-templates select="@n"/>
            <xsl:value-of select="*:w/@norm|*:pc"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="//*:text//*:note"/>
</xsl:stylesheet>

