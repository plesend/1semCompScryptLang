<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <body style="background: url(photos/emu.jpg) no-repeat fixed left,
                            url(photos/haruka.jpg) no-repeat fixed right">
            <xsl:for-each select="sekai/block">
            <xsl:sort select="title" order="ascending"/>

                <table style="background: white;
                                opacity: 90%
                                display: block;
                                width: 400px;
                                height: 160px;
                                padding: 10px;
                                margin: 10px;
                                margin-left: auto;
                                margin-right: auto;">
                    <tr style="color: #EE1166;
                                text-align: center;
                                color: #884499;
                                font-size: 25px;">
                        <td><xsl:value-of select="title"/></td>
                    </tr>
                    <tr>
                        <td style="text-align: center;"><xsl:value-of select="names"/></td>
                    </tr>
                    <tr>
                        <td style="text-align: justify;"><xsl:value-of select="bandinfo"/></td>
                    </tr>
                
                    
                </table>
                
            </xsl:for-each>
    </body>
</html>
</xsl:template>

</xsl:stylesheet>