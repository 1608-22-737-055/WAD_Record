<?xml version="1.0"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Book Data</title>
            </head>
            <body>
                <table align="center" border="1" bgcolor="#aaccff" cellpadding="5" cellspacing="0">
                    <caption>Book Data</caption>
                    <tr bgcolor="#331155">
                        <th style="color: white;">Title</th>
                        <th style="color: white;">Author</th>
                        <th style="color: white;">Price</th>
                    </tr>
                    <xsl:for-each select="bookstore/book">
                        <tr>
                            <td><xsl:value-of select="title" /></td>
                            <td><xsl:value-of select="author" /></td>
                            <td><xsl:value-of select="price" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:transform>
