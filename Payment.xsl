<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<head>
		</head>
		<body>
		<h2 style="text-align:center">Welcome To Train Freight Management System </h2>
		<h5 style="text-align:center">USER PAYMENT DETAILS</h5>
		<table border="2" align="center">
		<tr>
		<th>pid</th>
		<th>pstatus</th>
		<th>amt</th>
		<th>pmethod</th>
		<th>bid</th>
		</tr>
		<xsl:for-each select="FIOS/Payment">
		<xsl:choose>
        <xsl:when test="pstatus=SUCCESS"></xsl:when>
        </xsl:choose>
		<xsl:if test="amt &gt; 10000">
		<tr>
		<td>
		<xsl:value-of select="pid"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="pstatus"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="amt"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="pmethod"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="bid"></xsl:value-of>
		</td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>