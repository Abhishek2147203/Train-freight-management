<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<head>
		</head>
		<body>
			<h2 style="text-align:center">Welcome To Train Freight Management System </h2>
		<h5 style="text-align:center">Tracking</h5>
		<table border="2" align="center">
		<tr>
		<th>UID</th>
		<th>BID</th>
		<th>TID</th>
		<th>ExpDate</th>
		<th>trainNo.</th>
		</tr>
		<xsl:for-each select="FIOS/tracking">
		<xsl:sort select="ExpDate></xsl:sort>
		<tr>
		<td>
		<xsl:value-of select="UID"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="BID"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="TID"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="ExpDate"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="trainNo."></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>