<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Music Library</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                        margin: 0;
                        padding: 20px;
                    }
                    h1 {
                        color: #333;
                    }
                    .song {
                        background-color: #fff;
                        border: 1px solid #ddd;
                        border-radius: 5px;
                        padding: 15px;
                        margin-bottom: 10px;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    }
                    .song h2 {
                        margin: 0;
                        color:rgb(255, 0, 170);
                    }
                    .song p {
                        margin: 5px 0;
                    }
                    .albums {
                        margin-left: 20px;
                        color: #555;
                    }
                </style>
            </head>
            <body>
                <h1>Music Library</h1>
                <xsl:apply-templates select="music/song"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="song">
        <div class="song">
            <h2><xsl:value-of select="songTitle"/></h2>
            <p><strong>Artist:</strong> <xsl:value-of select="artist"/></p>
            <p><strong>Debut Year:</strong> <xsl:value-of select="debutYear"/></p>
            <div class="albums">
                <strong>Albums:</strong>
                <ul>
                    <xsl:for-each select="albums/album">
                        <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ul>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>