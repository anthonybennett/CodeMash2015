CREATE TABLE BEACSS_SCHEMA_VERSION (CURRENT_VERSION INT NOT NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (CURRENT_VERSION));
CREATE TABLE BEAPC (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, CREDN VARCHAR(400) NOT NULL, CTS DATETIME NULL, PP IMAGE NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, CREDN));
CREATE TABLE BEAPCM (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, CN VARCHAR(400) NOT NULL, CTS DATETIME NULL, AN VARCHAR(256) NULL, MN VARCHAR(256) NULL, RN VARCHAR(256) NULL, WCN VARCHAR(256) NULL, WCI VARCHAR(256) NULL, PN VARCHAR(256) NULL, PP VARCHAR(256) NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, CN));
CREATE TABLE BEAPRMP (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, TYPEN VARCHAR(30) NOT NULL, CN VARCHAR(400) NOT NULL, CTS DATETIME NULL, CA VARCHAR(256) NULL, KAN VARCHAR(256) NULL, KAP VARCHAR(256) NULL, PN VARCHAR(256) NULL, PNIU VARCHAR(256) NULL, RN VARCHAR(256) NULL, WCN VARCHAR(256) NULL, WCI VARCHAR(256) NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, TYPEN, CN));
CREATE TABLE BEARM (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, CN VARCHAR(400) NOT NULL, CTS DATETIME NULL, AN VARCHAR(256) NULL, MN VARCHAR(256) NULL, PN VARCHAR(256) NULL, RN VARCHAR(256) NULL, WCN VARCHAR(256) NULL, WCI VARCHAR(256) NULL, MTS DATETIME NULL, PM_CN VARCHAR(400) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, CN));
CREATE TABLE BEASAML2_CACHE (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, CACHE_NAME VARCHAR(100) NOT NULL, ENTRY_KEY VARCHAR(400) NOT NULL, CTS DATETIME NULL, EXP_TIME NUMERIC(38) NULL, ENTRY_VALUE IMAGE NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, CACHE_NAME, ENTRY_KEY));
CREATE TABLE BEASAML2_ENDPOINT (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, BINDING_LOCAL VARCHAR(384) NOT NULL, BINDING_TYPE VARCHAR(32) NOT NULL, PARTNER_NAME VARCHAR(128) NOT NULL, SERVICE_TYPE VARCHAR(32) NOT NULL, CTS DATETIME NULL, DFT_ENDPOINT TINYINT NULL, DFT_SET TINYINT NULL, IDX INT NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, BINDING_LOCAL, BINDING_TYPE, PARTNER_NAME, SERVICE_TYPE));
CREATE TABLE BEASAML2_IDPPARTNER (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, NAME VARCHAR(128) NOT NULL, CTS DATETIME NULL, ARTPOSTFORM VARCHAR(256) NULL, ARTUSEPOST TINYINT NULL, C_PASSSWD VARCHAR(256) NULL, C_PASSWDSET TINYINT NULL, C_USERNAME VARCHAR(128) NULL, CONFM_METHOD VARCHAR(128) NULL, CP_COMPANY VARCHAR(64) NULL, CP_EMAILADD VARCHAR(64) NULL, CP_GIVENNAME VARCHAR(64) NULL, CP_SURNAME VARCHAR(64) NULL, CP_TELENUM VARCHAR(64) NULL, CP_TYPE VARCHAR(64) NULL, DESCRIPTION VARCHAR(512) NULL, ENABLED TINYINT NULL, ENTITYID VARCHAR(512) NULL, ERROR_URL VARCHAR(512) NULL, ISSUER_URI VARCHAR(512) NULL, OG_NAME VARCHAR(64) NULL, OG_URL VARCHAR(512) NULL, PT_TYPE VARCHAR(64) NULL, POSTPOSTFORM VARCHAR(256) NULL, SIGNINGCERT IMAGE NULL, TPLAYER_CLIENTCERT IMAGE NULL, ARTREQSIGNED TINYINT NULL, IDP_NM_CLASSN VARCHAR(128) NULL, PROC_ATTR TINYINT NULL, VIRUSER_ENABLED TINYINT NULL, WANT_ASSERTION_SIGNED TINYINT NULL, WANTATNREQSIGNED TINYINT NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, NAME));
CREATE TABLE BEASAML2_IDP_AUDIENCEURI (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, PARTNER_NAME VARCHAR(128) NULL, URI VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEASAML2_IDP_PT_EP (DOMN VARCHAR(255) NULL, REALMN VARCHAR(255) NULL, NAME VARCHAR(255) NULL, SERVICE_TYPE VARCHAR(128) NULL, BINDING_TYPE VARCHAR(128) NULL, BINDING_LOCAL VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEASAML2_IDP_REDIRECTURI (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, PARTNER_NAME VARCHAR(128) NULL, URI VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEASAML2_SPPARTNER (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, NAME VARCHAR(128) NOT NULL, CTS DATETIME NULL, ARTPOSTFORM VARCHAR(256) NULL, ARTUSEPOST TINYINT NULL, C_PASSSWD VARCHAR(256) NULL, C_PASSWDSET TINYINT NULL, C_USERNAME VARCHAR(128) NULL, CONFM_METHOD VARCHAR(128) NULL, CP_COMPANY VARCHAR(64) NULL, CP_EMAILADD VARCHAR(64) NULL, CP_GIVENNAME VARCHAR(64) NULL, CP_SURNAME VARCHAR(64) NULL, CP_TELENUM VARCHAR(64) NULL, CP_TYPE VARCHAR(64) NULL, DESCRIPTION VARCHAR(512) NULL, ENABLED TINYINT NULL, ENTITYID VARCHAR(512) NULL, ERROR_URL VARCHAR(512) NULL, ISSUER_URI VARCHAR(512) NULL, OG_NAME VARCHAR(64) NULL, OG_URL VARCHAR(512) NULL, PT_TYPE VARCHAR(64) NULL, POSTPOSTFORM VARCHAR(256) NULL, SIGNINGCERT IMAGE NULL, TPLAYER_CLIENTCERT IMAGE NULL, ARTREQSIGNED TINYINT NULL, GENATTRS TINYINT NULL, ONETIMEUSE TINYINT NULL, KEYINFO_INC TINYINT NULL, SP_NM_CLASSN VARCHAR(128) NULL, TIME_TOLIVE INT NULL, TIME_TOLIVEOFFSET INT NULL, WANT_ASSERTION_SIGNED TINYINT NULL, WANT_ANTREQSIGNED TINYINT NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, NAME));
CREATE TABLE BEASAML2_SP_AUDIENCEURI (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, PARTNER_NAME VARCHAR(128) NULL, URI VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEASAML2_SP_PT_EP (DOMN VARCHAR(255) NULL, REALMN VARCHAR(255) NULL, NAME VARCHAR(255) NULL, SERVICE_TYPE VARCHAR(128) NULL, BINDING_TYPE VARCHAR(128) NULL, BINDING_LOCAL VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEASAMLAP (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, REGN VARCHAR(128) NOT NULL, CN VARCHAR(400) NOT NULL, CTS DATETIME NULL, SPD VARCHAR(512) NULL, SPE VARCHAR(16) NULL, SARU VARCHAR(512) NULL, SASCA VARCHAR(128) NULL, SAP VARCHAR(128) NULL, SAU VARCHAR(128) NULL, SGAE VARCHAR(16) NULL, SITU VARCHAR(512) NULL, SIU VARCHAR(512) NULL, SNMC VARCHAR(128) NULL, SPARSCE VARCHAR(16) NULL, SP VARCHAR(32) NULL, SPSCA VARCHAR(128) NULL, SSA VARCHAR(16) NULL, SSI VARCHAR(512) NULL, STU VARCHAR(512) NULL, SVUE VARCHAR(16) NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, REGN, CN));
CREATE TABLE BEASAMLAP_AURI (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, REGN VARCHAR(128) NULL, CN VARCHAR(400) NULL, SAURI VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEASAMLAP_ITP (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, REGN VARCHAR(128) NULL, CN VARCHAR(400) NULL, SITP VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEASAMLAP_RURI (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, REGN VARCHAR(128) NULL, CN VARCHAR(400) NULL, SRURI VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEASAMLRP (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, REGN VARCHAR(128) NOT NULL, CN VARCHAR(400) NOT NULL, CTS DATETIME NULL, SPD VARCHAR(512) NULL, SPE VARCHAR(16) NULL, SACU VARCHAR(512) NULL, SAP VARCHAR(128) NULL, SASCCA VARCHAR(128) NULL, SAU VARCHAR(128) NULL, SDNCC VARCHAR(16) NULL, SGAE VARCHAR(16) NULL, SKI VARCHAR(16) NULL, SNMC VARCHAR(128) NULL, SPF VARCHAR(128) NULL, SP VARCHAR(32) NULL, SSA VARCHAR(16) NULL, STU VARCHAR(512) NULL, STTL VARCHAR(32) NULL, STTLO VARCHAR(32) NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, REGN, CN));
CREATE TABLE BEASAMLRP_ACP (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, REGN VARCHAR(128) NULL, CN VARCHAR(400) NULL, SACP VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEASAMLRP_AU (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, REGN VARCHAR(128) NULL, CN VARCHAR(400) NULL, SAU VARCHAR(512) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEAUPC (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, CREDN VARCHAR(128) NOT NULL, CTS DATETIME NULL, PN VARCHAR(128) NULL, PP IMAGE NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, CREDN));
CREATE TABLE BEAWCMCI (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, WCN VARCHAR(128) NOT NULL, CTS DATETIME NULL, WCT VARCHAR(128) NULL, WCV VARCHAR(128) NULL, WXF IMAGE NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, WCN));
CREATE TABLE BEAWCRE (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, REGN VARCHAR(128) NOT NULL, CN VARCHAR(400) NOT NULL, CTS DATETIME NULL, UC IMAGE NULL, WCRIDN VARCHAR(400) NULL, WCRSN VARCHAR(400) NULL, WCRSDN VARCHAR(400) NULL, WCRSKI VARCHAR(400) NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, REGN, CN));
CREATE TABLE BEAWPCI (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, WCN VARCHAR(128) NOT NULL, CTS DATETIME NULL, WCT VARCHAR(128) NULL, WCV VARCHAR(128) NULL, WXF IMAGE NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, WCN));
CREATE TABLE BEAWRCI (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, WCN VARCHAR(128) NOT NULL, CTS DATETIME NULL, WCT VARCHAR(128) NULL, WCV VARCHAR(128) NULL, WXF IMAGE NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, WCN));
CREATE TABLE BEAXACMLAP (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, TYPEN VARCHAR(32) NOT NULL, CN VARCHAR(400) NOT NULL, XVER VARCHAR(10) NOT NULL, CTS DATETIME NULL, WCN VARCHAR(128) NULL, WCI VARCHAR(128) NULL, WXF IMAGE NULL, XD IMAGE NULL, XS VARCHAR(10) NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, TYPEN, CN, XVER));
CREATE TABLE BEAXACMLAP_RS (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, TYPEN VARCHAR(32) NULL, CN VARCHAR(400) NULL, XVER VARCHAR(10) NULL, XRS VARCHAR(400) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEAXACMLRAP (DOMN VARCHAR(128) NOT NULL, REALMN VARCHAR(128) NOT NULL, TYPEN VARCHAR(32) NOT NULL, CN VARCHAR(400) NOT NULL, XVER VARCHAR(10) NOT NULL, CTS DATETIME NULL, WCN VARCHAR(128) NULL, WCI VARCHAR(128) NULL, WXF IMAGE NULL, XD IMAGE NULL, XS VARCHAR(10) NULL, MTS DATETIME NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE, PRIMARY KEY (DOMN, REALMN, TYPEN, CN, XVER));
CREATE TABLE BEAXACMLRAP_R (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, TYPEN VARCHAR(400) NULL, CN VARCHAR(400) NULL, XVER VARCHAR(10) NULL, XR VARCHAR(400) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
CREATE TABLE BEAXACMLRAP_RS (DOMN VARCHAR(128) NULL, REALMN VARCHAR(128) NULL, TYPEN VARCHAR(32) NULL, CN VARCHAR(400) NULL, XVER VARCHAR(10) NULL, XRS VARCHAR(400) NULL, UNQ_INDEX NUMERIC IDENTITY UNIQUE);
INSERT INTO BEACSS_SCHEMA_VERSION VALUES (2);
COMMIT;