<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
  <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
    <head>
      <meta name="viewport" content="width=device-width"/>
      <title>
        RSS Feed | <xsl:value-of select="/rss/channel/title"/>
      </title>
      <style>
      :root { max-width: 70ch; padding: 3em 1em; margin: auto; line-height: 1.75; font-size: 1.25em; }
      body { background: #fdfdfd; color: #555555; }
      a { color: #24890d; }
      dl { margin-bottom: 24px; }
      dt { font-weight: bold; }
      dd { margin: 0 0 24px; }
      @media screen and (min-width: 810px) { img { float: left; margin-right: .7em; } }
      </style>
    </head>
    <body>
      <img src="/images/rrra-logo-2017.gif" alt="RRRA"/>
      <p>
        <strong>This is a preview of an RSS feed.</strong>
        Subscribe to it by copying the URL from the address bar into your newsreader.
	Visit <a href="https://aboutfeeds.com">About Feeds</a> to learn more and get started. It’s free.
      </p>
      <ul>
        <li>Visit our <a href="/about/rss/">RSS Feeds page</a> for an index of feeds available from this website.</li>
      </ul>
      <h1><xsl:value-of select="/rss/channel/title"/></h1>
      <dl>
      <xsl:for-each select="/rss/channel/item">
        <dt>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="link"/>
          </xsl:attribute>
          <xsl:value-of select="title"/>
        </a>
        </dt>
        <dd>
        <xsl:value-of select="description"/>
	</dd>
      </xsl:for-each>
      </dl>
      <address><a href="mailto:webmaster@rrra.org">webmaster@rrra.org</a></address>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
