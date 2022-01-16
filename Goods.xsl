<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
		
    <head>
        <style>
            h2{
                color:green;
                text-decoration:underline;
            }
            table{
                background-color:white;
            }
            th{
                color:purple;
            }
        </style>
	</head>
	<body>
		<h2 style="text-align:center">Employee Management System</h2>
		<h3 style="text-align:center">Employee Details</h3>
		<table border="2" align="center">
		<tr>
            <th>G_ID</th>
            <th>GOODS_TYPE</th>
		    <th>GOODS_Name</th>
		    <th>RATE PER KG/PIS</th>
		</tr>
		<xsl:for-each select="FIOS/goods">
		<tr>
            <td>
                <xsl:value-of select="gid"></xsl:value-of>
            </td>
		    <td>
		        <xsl:value-of select="type"></xsl:value-of>
		    </td>
		    <td>
		        <xsl:value-of select="Name"></xsl:value-of>
		    </td>
		    <td>
		        <xsl:value-of select="rate"></xsl:value-of>
            </td>
		</tr>
		</xsl:for-each>
		</table>
	</body>
</html>
	</xsl:template>
</xsl:stylesheet>