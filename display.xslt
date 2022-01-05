<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
      <div>
    <h2>IGNITE-Vehicle</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>ID</th>
        <th>BRAND</th>
        <th>VEHICLE NO</th>
        <th>DESCRIPTION</th>
        <th>categoryid</th>
        <th>servicetype</th>
        <th>status</th>
      </tr>
      <xsl:for-each select="ignite/vehicle">
      <tr>
        <td><xsl:value-of select="id" /></td>
        <td><xsl:value-of select="brand" /></td>
        <td><xsl:value-of select="vehicleno" /></td>
        <td><xsl:value-of select="des" /></td>
        <td><xsl:value-of select="categoryid" /></td>
        <td><xsl:value-of select="servicetype" /></td>
        <td><xsl:value-of select="status" /></td>
      </tr>
      </xsl:for-each>
    </table>
</div>
<div>
    <h2>SORTING VEHICLES</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
          <th>ID</th>
        <th>BRAND</th>
        <th>VEHICLE NO</th>
        <th>DESCRIPTION</th>
        <th>categoryid</th>
        <th>servicetype</th>
        <th>status</th>
      </tr>
      <xsl:for-each select="ignite/vehicle">
        <xsl:sort select="id"/>
        <tr>
            <td><xsl:value-of select="id" /></td>
            <td><xsl:value-of select="brand" /></td>
            <td><xsl:value-of select="vehicleno" /></td>
            <td><xsl:value-of select="des" /></td>
            <td><xsl:value-of select="categoryid" /></td>
            <td><xsl:value-of select="servicetype" /></td>
            <td><xsl:value-of select="status" /></td>
        </tr>
      </xsl:for-each>
    </table>
</div>
<div>
    <h2>Displaying mechanic whose type is Engine</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>ID</th>
        <th>NAME</th>
        <th>ADDRESS</th>
        <th>PHONE</th>
        <th>TYPE</th>
        <th>USETYPE</th>
      </tr>
      <xsl:for-each select="ignite/mechanic">
      <xsl:if test="type='Engine'">
         
        <tr>
            <td><xsl:value-of select="id" /></td>
            <td><xsl:value-of select="name" /></td>
            <td><xsl:value-of select="address" /></td>
            <td><xsl:value-of select="phone" /></td>
            <td><xsl:value-of select="usetype" /></td>
            <td><xsl:value-of select="type" /></td>

        </tr>
      </xsl:for-each>
    </table>
</div>
<div>
    
    <h2>MECHANIC TYPE </h2>
    <table border="1">
        <tr bgcolor="#9acd32">
          <th>id</th>
          <th>type</th>
        </tr>
        <xsl:for-each select="ignite">
        <tr>
          <td><xsl:value-of select="type"/></td>
          <xsl:choose>
        <xsl:when test="noofveh &gt; 45">
          <td bgcolor="#ff00ff">
          <xsl:value-of select="id"/></td>
        </xsl:when>
        <xsl:when test="price &ls; 46">
          <td bgcolor="#cccccc">
          <xsl:value-of select="type"/></td>
        </xsl:when>
        
        <xsl:otherwise>
          <td><xsl:value-of select="type"/></td>
        </xsl:otherwise>
      </xsl:choose>
        </tr>
        </xsl:for-each>
      </table>
</div>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
