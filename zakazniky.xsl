<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  
  <xsl:template match="/">
    {
      "banka": {
        "zakazniky": [
          <xsl:for-each select="banka/zakazniky/zakaznik">
            {
              "id": "<xsl:value-of select="@id"/>",
              "jmeno": "<xsl:value-of select="jmeno"/>",
              "ucet": {
                "cislo_uctu": "<xsl:value-of select="ucet/cislo_uctu"/>",
                "cislo_karty": "<xsl:value-of select="ucet/cislo_karty"/>",
                "balance": "<xsl:value-of select="ucet/balance"/>",
                "datum_vytvoreni": "<xsl:value-of select="ucet/datum_vytvoreni"/>",
                "platnost_karty": "<xsl:value-of select="ucet/platnost_karty"/>",
                "internetove_platby": "<xsl:value-of select="ucet/internetove_platby"/>",
                "limit_internetove_platby": "<xsl:value-of select="ucet/limit_internetove_platby"/>"
              },
              "historie_transakci": [
                <xsl:for-each select="historie_transakci/transakce">
                  {
                    "datum": "<xsl:value-of select="datum"/>",
                    "castka": "<xsl:value-of select="castka"/>",
                    "popis": "<xsl:value-of select="popis"/>",
                    "typ_uctu": "<xsl:value-of select="typ_uctu"/>",
                    "zpusob_platby": "<xsl:value-of select="zpusob_platby"/>"
                  }<xsl:if test="position() != last()">,</xsl:if>
                </xsl:for-each>
              ],
              "kontaktni_informace": {
                "email": "<xsl:value-of select="kontaktni_informace/email"/>",
                "telefon": "<xsl:value-of select="kontaktni_informace/telefon"/>"
              },
              "adresa": {
                "ulice": "<xsl:value-of select="adresa/ulice"/>",
                "mesto": "<xsl:value-of select="adresa/mesto"/>",
                "psc": "<xsl:value-of select="adresa/psc"/>",
                "zeme": "<xsl:value-of select="adresa/zeme"/>"
              },
              "osobni_udaje": {
                "datum_narozeni": "<xsl:value-of select="osobni_udaje/datum_narozeni"/>",
                "pohlavi": "<xsl:value-of select="osobni_udaje/pohlavi"/>",
                "narodnost": "<xsl:value-of select="osobni_udaje/narodnost"/>"
              }
            }<xsl:if test="position() != last()">,</xsl:if>
          </xsl:for-each>
        ]
      }
    }
  }
</xsl:template>
</xsl:stylesheet>        