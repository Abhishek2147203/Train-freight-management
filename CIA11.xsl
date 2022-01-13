<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
		
    <head>
        <style>
            table{
                background-color:red;
            }
        </style>
	</head>
	<body>
		<h2 style="text-align:center">Employee Management System</h2>
		<h3 style="text-align:center">Employee Details</h3>
		<table border="2" align="center">
		<tr>
            <th>ID</th>
		    <th>Name</th>
		    <th>Age</th>
		    <th>Salary</th>
		    <th>email</th>
            <th>MobNum</th>
            <th>Designation</th>
            <th>Promotion</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<tr>
		    <td>
		        <xsl:value-of select="id"></xsl:value-of>
		    </td>
		    <td>
		        <xsl:value-of select="Name"></xsl:value-of>
		    </td>
		    <td>
		        <xsl:value-of select="Age"></xsl:value-of>
		    </td>
		    <td>
		        <xsl:value-of select="Salary"></xsl:value-of>
		    </td>
		    <td>
		        <xsl:value-of select="email"></xsl:value-of>
		    </td>
            <td>
                <xsl:value-of select="MobNum"></xsl:value-of>
             </td>
           <td>
              <xsl:value-of select="Designation"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="Promotion"></xsl:value-of>
            </td>
		</tr>
		</xsl:for-each>
		</table>
	</body>
</html>
	</xsl:template>
</xsl:stylesheet>
