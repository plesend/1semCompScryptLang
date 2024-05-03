<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head><title>Аттестация</title></head>
    <body>
        <table border="1">
            <tr bgcolor="lightgrey">
                <th>Имя</th>
                <th>Предмет</th>
            </tr>
                <xsl:for-each select="attestation/block">
                <xsl:sort select="person"/>
            <tr>
                    <td>
                        <xsl:value-of select="person"/>
                    </td>
                <xsl:choose>
                <xsl:when test="mark &gt;8">
                    <td bgcolor="green">
                        <xsl:value-of select="mark"/>
                    </td>
                </xsl:when>
                <xsl:when test="mark &lt;4">
                    <td bgcolor="red">
                        <xsl:value-of select="mark"/>
                    </td>
                </xsl:when>
                <xsl:otherwise>
                    <td>
                        <xsl:value-of select="mark"/>
                    </td>
                </xsl:otherwise>
                </xsl:choose>
            </tr>
                </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>

</xsl:stylesheet>