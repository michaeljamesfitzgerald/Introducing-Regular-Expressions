#!/usr/bin/sed

1 i\
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">\

s/^</\
<xsl:template match="/;s/ id=\".*\"//;s/>$/">\
 <xsl:apply-templates\/>\
<\/xsl:template>/;$ a\
\
</xsl:stylesheet>\

