<xsl:stylesheet xmlns:xsl=
http://www.w3.org/1999/XSL/Transform xmlns:xs="http://www.w3.org/2001/XMLSchema" 
exclude-result-prefixes="xs" version="2.0">
<xsl:output method="xml" indent="yes" encoding="utf-8" />    
<xsl:param name="input" as="xs:string" required="yes"/>

<xsl:variable name="src">
 <doc>
  <xsl:for-each select="tokenize(unparsed-text($input, 'iso-8859-1'),
 '\r\n')">
    <line><xsl:value-of select="."/></line>
  </xsl:for-each>
 </doc>
</xsl:variable>

<xsl:template match="/">         
<xsl:result-document href = "src1.xml">
  <xsl:copy-of select="$src"/>
 </xsl:result-document>
</xsl:template> 