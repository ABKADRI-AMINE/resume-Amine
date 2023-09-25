<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>CV AMINE ABKADRI</title>
                <style>
                    
                    @import url("https://cdn.jsdelivr.net/npm/flag-icon-css/css/flag-icon.min.css");
                  
                </style>
                <link rel="stylesheet" href="styles.css"/>
                <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
            </head>
            <body>
                
                <div class="resume">
                    <div class="resume_left">
                        <div class="resume_profile">
                            <img src="amine.jpg"  alt="profile image"/>
                        </div>
                        <div class="resume_content">
                            <div class="resume_item resume_info">
                                <div class="title">
                                    <p class="bold"><xsl:value-of select="cv/entete/nom"/></p>
                                    <p class="regular"><xsl:value-of select="cv/entete/filiere"/></p>
                                </div>
                                <ul>
                                    <li>
                                        <div class="icon">
                                            <i class="fas fa-map-marker-alt"></i>
                                        </div>
                                        <div class="data">
                                            <xsl:value-of select="cv/entete/adresse"/> <br />  <xsl:value-of select="cv/entete/nationalite"/>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="fas fa-mobile-alt"></i>
                                        </div>
                                        <div class="data">
                                            <xsl:value-of select="cv/entete/telephone"/>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="fas fa-envelope"></i>
                                        </div>
                                        <div class="data">
                                            <xsl:value-of select="cv/entete/mail"/>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="fab fa-github"></i>
                                        </div>
                                        <div class="data">
                                            <xsl:value-of select="cv/entete/git"/>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="resume_item resume_skills">
                                <div class="title">
                                    <p class="bold">COMPETENCES</p>
                                </div>
                                <ul>
                                    <li>
                                        <xsl:for-each select="cv/competences/competence">
                                            <li>
                                                <div class="skill_name">
                                                    <xsl:value-of select="titre"/>
                                                </div>
                                                <div class="skill_progress">
                                                    <span style="width: {description};"></span>
                                                </div>
                                                <div class="skill_per">
                                                    <xsl:value-of select="description"/>
                                                </div>
                                            </li>
                                        </xsl:for-each>
                                        
                                    </li>
                                    
                                </ul>
                            </div>
                            <div class="resume_item resume_social">
                                <div class="title">
                                    <p class="bold">SOCIAL</p>
                                </div>
                                <ul>
                                    <li>
                                        <xsl:for-each select="cv/socials/social">
                                            <li>
                                                <div class="icon">
                                                    <xsl:choose>
                                                        <xsl:when test="nomr = 'Facebook'">
                                                            <i class="fab fa-facebook-square"></i>
                                                        </xsl:when>
                                                        <xsl:when test="nomr = 'Instagram'">
                                                            <i class="fab fa-instagram"></i>
                                                        </xsl:when>
                                                        <xsl:when test="nomr = 'Twitter'">
                                                            <i class="fab fa-twitter-square"></i>
                                                        </xsl:when>
                                                        <xsl:when test="nomr = 'LinkedIn'">
                                                            <i class="fab fa-linkedin"></i>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <i class="fas fa-globe"></i>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </div>
                                                <div class="data">
                                                    <p class="semi-bold"><xsl:value-of select="nomr"/></p>
                                                    <p><xsl:value-of select="compte"/></p>
                                                </div>
                                            </li>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </div>
                            <div class="resume_item resume_languages">
                                <div class="title">
                                    <p class="bold">LANGUES</p>
                                </div>
                                <ul>
                                    <xsl:for-each select="cv/langues/langue">
                                        <li>
                                            <div class="icon">
                                                <xsl:choose>
                                                    <xsl:when test="intitule = 'Espagnol'">
                                                        <i class="flag-icon flag-icon-es"></i>
                                                    </xsl:when>
                                                    <xsl:when test="intitule = 'Francais'">
                                                        <i class="flag-icon flag-icon-fr"></i>
                                                    </xsl:when>
                                                    <xsl:when test="intitule = 'Anglais'">
                                                        <i class="flag-icon flag-icon-gb"></i>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <i class="flag-icon"></i>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                
                                            </div>
                                            <div class="data">
                                                <p class="semi-bold"><xsl:value-of select="intitule"/></p>
                                                <p><xsl:value-of select="niveau"/></p>
                                            </div>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </div>
                    </div>
                    

                    
                    
                    <div class="resume_right">
                        <div class="resume_item resume_about">
                            <div class="title">
                                <p class="bold">PROFILE INFO</p>
                            </div>
                            <p><xsl:value-of select="cv/entete/about"/></p>
                        </div>
                        <div class="resume_item resume_work">
                            <div class="title">
                                <p class="bold">EXPÉRIENCE PROFESSIONNELLE</p>
                            </div>
                            <xsl:for-each select="cv/stages/stage">
                                <ul>
                                    <li>
                                        <div class="date"><xsl:value-of select="date"/></div> 
                                        <div class="info">
                                            <p class="semi-bold"><xsl:value-of select="titre"/>.</p> 
                                            <p><xsl:value-of select="description"/></p>
                                        </div>
                                    </li>
                                </ul>
                            </xsl:for-each>
                            
                        </div>
                        <div class="resume_item resume_education">
                            <div class="title">
                                <p class="bold">Education</p>
                            </div>
                            <ul>
                                <xsl:for-each select="cv/formations/diplome">
                                    <li>
                                        <div class="date"><xsl:value-of select="annee"/></div> 
                                        <div class="info">
                                            <p class="semi-bold"><xsl:value-of select="branche"/></p> 
                                            <p><xsl:value-of select="intitule"/></p>
                                        </div>
                                    </li>
                                    
                                </xsl:for-each>
                            </ul>
                        </div>
                        <div class="resume_item resume_hobby">
                            <div class="title">
                                <p class="bold">Centre d'intérêt</p>
                            </div>
                            <ul>
                                <xsl:for-each select="cv/loisirs/loisir/loisi">
                                    <li>
                                        <div class="date">
                                            <xsl:choose>
                                                <xsl:when test=". = 'natation'">
                                                    <i class="fas fa-swimmer"></i>
                                                </xsl:when>
                                                <xsl:when test=". = 'gaming'">
                                                    <i class="fas fa-gamepad"></i>
                                                </xsl:when>
                                                <xsl:when test=". = 'music'">
                                                    <i class="fas fa-music"></i>
                                                </xsl:when>
                                                <xsl:when test=". = 'travel'">
                                                    <i class="fas fa-plane"></i>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <i class="fas fa-book"></i>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div> 
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </div>
                </div>
                
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>