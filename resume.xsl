<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns="http://www.w3.org/1999/xhtml">

<xsl:output method="html" indent="yes" encoding="UTF-8" version="5.0"/>

<xsl:template match="/">
  <html>
    <head>
      <title>Casey Billett | Resume</title>
      <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0" />
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
      <link href="css/resume.css" type="text/css" rel="stylesheet"/>
      <link rel="icon" type="image/png" href="img/favicon-64x64.png" />
      <script type="text/javascript" src="js/analytics.js"></script>
      <script type="text/javascript" src="js/jquery-1.11.0.js"></script>
      <script type="text/javascript" src="js/jquery.inview.js"></script>
      <script type="text/javascript" src="js/jquery.velocity.min.js"></script>
    </head>
    <body>
      <div id="container">
      <xsl:apply-templates select="/resume/engineer"/>
      <xsl:apply-templates select="/resume/education"/>
      <xsl:apply-templates select="/resume/experience"/>
      </div> 
      <section id="end" class="noprint">
my skills are heroic.
      </section>
      <script type="text/javascript" src="js/resume.js"></script>
    </body>
  </html>
</xsl:template>

<xsl:template match="engineer">
  <header class="header-animate">
    <h1 id="name">
      <xsl:value-of select="name"/>
    </h1>
    <div class="social noprint">
      <a class="website"><xsl:attribute name="href"><xsl:value-of select="website"/></xsl:attribute><i class="fa fa-male"></i></a>
      <a class="linkedin"><xsl:attribute name="href"><xsl:value-of select="linkedin"/></xsl:attribute><i class="fa fa-linkedin"></i></a>
      <a class="github"><xsl:attribute name="href"><xsl:value-of select="github"/></xsl:attribute><i class="fa fa-github"></i></a>
      <a class="email"><xsl:attribute name="href">mailto:<xsl:value-of select="email"/></xsl:attribute><i class="fa fa-envelope"></i></a>
      <a class="phone"><xsl:attribute name="href">tel:<xsl:value-of select="phone"/></xsl:attribute><i class="fa fa-phone-square"></i></a>
    </div>
    <div class="contact noscreen">
      <div class="contact-email"><xsl:value-of select="email"/></div>
      <div class="contact-phone"><xsl:value-of select="phone"/></div>
    </div>
  </header>
</xsl:template>

<xsl:template match="experience">
  <section id="experience">
    <xsl:apply-templates/>
  </section>
</xsl:template>

<xsl:template match="job">
  <div>
    <xsl:attribute name="class">job <xsl:value-of select="tag"/></xsl:attribute>
    <div class="company"><xsl:value-of select="company"/></div>
    <div class="location"><xsl:value-of select="location"/></div>
    <xsl:apply-templates select="area"/>
  </div>
</xsl:template>

<xsl:template match="area">
  <div class="area">
    <div class="info">
      <div class="product"><xsl:value-of select="product"/></div>
      <div class="unit"><xsl:value-of select="unit"/></div>
      <div class="period"><xsl:value-of select="period"/></div>
    </div>
    <xsl:apply-templates select="work"/>
    <xsl:apply-templates select="skills"/>
  </div>
</xsl:template>

<xsl:template match="work">
  <div class="work">
    <div class="role"><xsl:value-of select="../role"/></div>
    <xsl:element name="ul" namespace="http://www.w3.org/1999/xhtml">
      <xsl:for-each select="item">
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
    </xsl:element>
  </div>
</xsl:template>

<xsl:template match="skills">
  <div class="skills">
    <xsl:element name="ul" namespace="http://www.w3.org/1999/xhtml">
      <xsl:for-each select="item">
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
    </xsl:element>
  </div>
</xsl:template>

<xsl:template match="education">
  <section id="education">
  <xsl:apply-templates select="school"/>
  </section>
</xsl:template>

<xsl:template match="school">
  <div class="school">
    <div class="info">
      <div class="location"><xsl:value-of select="location"/></div>
      <div class="period"><xsl:value-of select="period"/></div>
    </div>
    <div class="desc">
      <div class="name"><xsl:value-of select="name"/></div>
      <div class="degree"><xsl:value-of select="degree"/></div>
    </div>
  </div>
</xsl:template>

</xsl:stylesheet>
