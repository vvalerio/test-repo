SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
SET default_tablespace = '';
SET default_table_access_method = heap;
CREATE TABLE public.cfcite (
    cfciteid character(128) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfcite_class (
    cfciteid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfcite_medium (
    cfciteid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfcitedescr (
    cfciteid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfcitetitle (
    cfciteid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cftitle character(254) NOT NULL
);
CREATE TABLE public.cfclass (
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone DEFAULT to_date('1901-01-01 00:00:00'::text, 'yyyy-mm-dd hh24:mi:ss'::text) NOT NULL,
    cfenddate timestamp without time zone DEFAULT to_date('2099-12-31 23:59:59'::text, 'yyyy-mm-dd hh24:mi:ss'::text) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfclass_class (
    cfclassid1 character(128) NOT NULL,
    cfclassid2 character(128) NOT NULL,
    cfclassschemeid1 character(128) NOT NULL,
    cfclassschemeid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfclassdef (
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdef text NOT NULL,
    cfdefsrc text
);
CREATE TABLE public.cfclassdescr (
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL,
    cfdescrsrc text
);
CREATE TABLE public.cfclassex (
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfex text NOT NULL,
    cfexsrc text
);
CREATE TABLE public.cfclassscheme (
    cfclassschemeid character(128) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfclassscheme_classscheme (
    cfclassschemeid1 character(128) NOT NULL,
    cfclassschemeid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfclassschemedescr (
    cfclassschemeid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL,
    cfdescrsrc text
);
CREATE TABLE public.cfclassschemename (
    cfclassschemeid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname text NOT NULL,
    cfnamesrc text
);
CREATE TABLE public.cfclassterm (
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfterm character(64) NOT NULL,
    cftermsrc text,
    cfroleexpr character varying(128),
    cfroleexpropp character varying(128)
);
CREATE TABLE public.cfcountry (
    cfcountrycode character(2) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfcountry_class (
    cfcountrycode character(2) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfcountryname (
    cfcountrycode character(2) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(64) NOT NULL
);
CREATE TABLE public.cfcurrency (
    cfcurrcode character(3) NOT NULL,
    cfnumcurrcode character(3) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfcurrency_class (
    cfcurrcode character(3) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfcurrencyentname (
    cfcurrcode character(3) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfentname character(64) NOT NULL
);
CREATE TABLE public.cfcurrencyname (
    cfcurrcode character(3) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(64) NOT NULL
);
CREATE TABLE public.cfcv (
    cfcvid character(128) NOT NULL,
    cfcvdoc bytea,
    cfuri character(128)
);
CREATE TABLE public.cfcv_class (
    cfcvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfdc (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdcschemeuri character(128)
);
CREATE TABLE public.cfdcaudience (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdccontributor (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdccoverage (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdccoveragespatial (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdcvalue text,
    cffdcxcoordinate numeric(12,6),
    cffdcycoordinate numeric(12,6),
    cffdczcoordinate numeric(12,6),
    cffdcprecision numeric(12,6)
);
CREATE TABLE public.cfdccoveragetemporal (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdcvalue text,
    cffdcstartdatetime timestamp without time zone,
    cffdcenddatetime timestamp without time zone,
    cffdcprecision numeric(12,6)
);
CREATE TABLE public.cfdccreator (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcdate (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text,
    cfdcdatebegin timestamp without time zone,
    cfdcdateend timestamp without time zone
);
CREATE TABLE public.cfdcdescription (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcformat (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdclanguage (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcprovenance (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcpublisher (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcrelation (
    cfdcid1 character(32) NOT NULL,
    cfdcid2 character(32) NOT NULL,
    cfdcscheme1 character(32) NOT NULL,
    cfdcscheme2 character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdcstartdate timestamp without time zone NOT NULL,
    cfdcenddate timestamp without time zone NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcresourceidentifier (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcresourcetype (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcrightsholder (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcrightsmm (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdcvalue text,
    cfdctype character(30)
);
CREATE TABLE public.cfdcrightsmmaccessrights (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdcvalue text
);
CREATE TABLE public.cfdcrightsmmlicense (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdcvalue text
);
CREATE TABLE public.cfdcsource (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdcsubject (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfdctitle (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cfdctype character(30),
    cfdcvalue text
);
CREATE TABLE public.cfeaddr (
    cfeaddrid character(128) NOT NULL,
    cfpaddrid character(128),
    cfuri character(128)
);
CREATE TABLE public.cfeaddr_class (
    cfeaddrid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfequip (
    cfequipid character(128) NOT NULL,
    cfacro character(16),
    cfuri character(128)
);
CREATE TABLE public.cfequip_class (
    cfequipid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfequip_equip (
    cfequipid1 character(128) NOT NULL,
    cfequipid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfequip_event (
    cfequipid character(128) NOT NULL,
    cfeventid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfequip_fund (
    cfequipid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3)
);
CREATE TABLE public.cfequip_indic (
    cfequipid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfequip_meas (
    cfequipid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfequip_medium (
    cfequipid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfequip_paddr (
    cfequipid character(128) NOT NULL,
    cfpaddrid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfequip_srv (
    cfequipid character(128) NOT NULL,
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfequipdescr (
    cfequipid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfequipkeyw (
    cfequipid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfequipname (
    cfequipid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cfevent (
    cfeventid character(128) NOT NULL,
    cfcountrycode character(2) NOT NULL,
    cfcitytown character(30),
    cffeeorfree character(1),
    cfstartdate date,
    cfenddate date,
    cfuri character(128)
);
CREATE TABLE public.cfevent_class (
    cfeventid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfevent_event (
    cfeventid1 character(128) NOT NULL,
    cfeventid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfevent_fund (
    cfeventid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3)
);
CREATE TABLE public.cfevent_indic (
    cfeventid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfevent_meas (
    cfeventid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfevent_medium (
    cfeventid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfeventdescr (
    cfeventid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfeventkeyw (
    cfeventid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfeventname (
    cfeventid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cfexpskills (
    cfexpskillsid character(128) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfexpskills_class (
    cfexpskillsid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfexpskillsdescr (
    cfexpskillsid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfexpskillskeyw (
    cfexpskillsid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfexpskillsname (
    cfexpskillsid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cffacil (
    cffacilid character(128) NOT NULL,
    cfacro character(16),
    cfuri character(128)
);
CREATE TABLE public.cffacil_class (
    cffacilid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffacil_equip (
    cffacilid character(128) NOT NULL,
    cfequipid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffacil_event (
    cffacilid character(128) NOT NULL,
    cfeventid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffacil_facil (
    cffacilid1 character(128) NOT NULL,
    cffacilid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffacil_fund (
    cffacilid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3)
);
CREATE TABLE public.cffacil_indic (
    cffacilid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffacil_meas (
    cffacilid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffacil_medium (
    cffacilid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffacil_paddr (
    cffacilid character(128) NOT NULL,
    cfpaddrid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffacil_srv (
    cffacilid character(128) NOT NULL,
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffacildescr (
    cffacilid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cffacilkeyw (
    cffacilid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cffacilname (
    cffacilid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cffdcrightsmmpricing (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cffdctrans character(1) NOT NULL,
    cffdcpriceconstraint text
);
CREATE TABLE public.cffdcrightsmmprivacy (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cffdctrans character(1) NOT NULL,
    cffdcprivacyconstraint text
);
CREATE TABLE public.cffdcrightsmmrights (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cfdctrans character(1) NOT NULL,
    cffdcrightsconstraint text
);
CREATE TABLE public.cffdcrightsmmsecurity (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfdclangtag character(5) NOT NULL,
    cffdctrans character(1) NOT NULL,
    cffdcsecurityconstraint character(32)
);
CREATE TABLE public.cffedid (
    cffedidid character(128) NOT NULL,
    cfinstid character(128) NOT NULL,
    cffedid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone,
    cfenddate timestamp without time zone
);
CREATE TABLE public.cffedid_class (
    cffedidid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffedid_srv (
    cffedidid character(128) NOT NULL,
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffund (
    cffundid character(128) NOT NULL,
    cfcurrcode character(3),
    cfstartdate date,
    cfenddate date,
    cfacro character(16),
    cfamount double precision,
    cfuri character(128)
);
CREATE TABLE public.cffund_class (
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffund_fund (
    cffundid1 character(128) NOT NULL,
    cffundid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cffund_indic (
    cffundid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3) NOT NULL,
    cfclassid character(128) NOT NULL
);
CREATE TABLE public.cffund_meas (
    cffundid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3) NOT NULL,
    cfclassid character(128) NOT NULL
);
CREATE TABLE public.cffunddescr (
    cffundid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cffundkeyw (
    cffundid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cffundname (
    cffundid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cfgeobbox (
    cfgeobboxid character(128) NOT NULL,
    cfwblong double precision,
    cfeblong double precision,
    cfsblat double precision,
    cfnblat double precision,
    cfminelev double precision,
    cfmaxelev double precision,
    cfuri character(128)
);
CREATE TABLE public.cfgeobbox_class (
    cfgeobboxid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfgeobbox_geobbox (
    cfgeobboxid1 character(128) NOT NULL,
    cfgeobboxid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfgeobbox_meas (
    cfgeobboxid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfgeobboxdescr (
    cfgeobboxid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfgeobboxkeyw (
    cfgeobboxid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfgeobboxname (
    cfgeobboxid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cfindic (
    cfindicid character(128) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfindic_class (
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfindic_indic (
    cfindicid1 character(128) NOT NULL,
    cfindicid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfindic_meas (
    cfindicid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfindicdescr (
    cfindicid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfindickeyw (
    cfindicid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfindicname (
    cfindicid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cflang (
    cflangcode character(5) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cflang_class (
    cflangcode character(5) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cflangname (
    cflangcodeoflangname character(5) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(64) NOT NULL
);
CREATE TABLE public.cfmeas (
    cfmeasid character(128) NOT NULL,
    cfcountint integer,
    cfvalfloatp double precision,
    cfvaljudgenum double precision,
    cfcountintchange integer,
    cfcountfloatpchange double precision,
    cfvaljudgenumchange double precision,
    cfvaljudgetext text,
    cfvaljudgetextchange text,
    cfdatetime timestamp without time zone,
    cfuri character(128)
);
CREATE TABLE public.cfmeas_class (
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfmeas_meas (
    cfmeasd1 character(128) NOT NULL,
    cfmeasid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfmeasdescr (
    cfmeasid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfmeaskeyw (
    cfmeasid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254)
);
CREATE TABLE public.cfmeasname (
    cfmeasid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cfmedium (
    cfmediumid character(128) NOT NULL,
    cfmediumcreationdate character varying(30),
    cfsize double precision,
    cfmimetype character varying(30),
    cfuri character(128)
);
CREATE TABLE public.cfmedium_class (
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfmedium_fund (
    cfmediumid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3) NOT NULL
);
CREATE TABLE public.cfmedium_indic (
    cfmediumid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfmedium_meas (
    cfmediumid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfmedium_medium (
    cfmediumid1 character(128) NOT NULL,
    cfmediumid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfmediumdescr (
    cfmediumid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfmediumkeyw (
    cfmediumid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfmediumtitle (
    cfmediumid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cftitle character(254) NOT NULL
);
CREATE TABLE public.cfmetrics (
    cfmetricsid character(128) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfmetrics_class (
    cfmetricsid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfmetricsdescr (
    cfmetricsid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfmetricskeyw (
    cfmetricsid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfmetricsname (
    cfmetricsid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cforgunit (
    cforgunitid character(128) NOT NULL,
    cfcurrcode character(3),
    cfacro character(16),
    cfheadcount integer,
    cfturn double precision,
    cfuri character(128)
);
CREATE TABLE public.cforgunit_class (
    cforgunitid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_dc (
    cforgunitid character(128) NOT NULL,
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_eaddr (
    cforgunitid character(128) NOT NULL,
    cfeaddrid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_equip (
    cforgunitid character(128) NOT NULL,
    cfequipid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3),
    cfprice double precision
);
CREATE TABLE public.cforgunit_event (
    cforgunitid character(128) NOT NULL,
    cfeventid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_expskills (
    cforgunitid character(128) NOT NULL,
    cfexpskillsid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3),
    cfprice double precision
);
CREATE TABLE public.cforgunit_facil (
    cforgunitid character(128) NOT NULL,
    cffacilid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3),
    cfprice double precision
);
CREATE TABLE public.cforgunit_fund (
    cforgunitid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3) NOT NULL
);
CREATE TABLE public.cforgunit_indic (
    cforgunitid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_meas (
    cforgunitid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_medium (
    cforgunitid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_orgunit (
    cforgunitid1 character(128) NOT NULL,
    cforgunitid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_paddr (
    cforgunitid character(128) NOT NULL,
    cfpaddrid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_prize (
    cforgunitid character(128) NOT NULL,
    cfprizeid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cforgunit_respat (
    cforgunitid character(128) NOT NULL,
    cfrespatid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cforder numeric(10,0)
);
CREATE TABLE public.cforgunit_resprod (
    cforgunitid character(128) NOT NULL,
    cfresprodid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3) NOT NULL,
    cfprice double precision,
    cforder numeric(10,0)
);
CREATE TABLE public.cforgunit_respubl (
    cforgunitid character(128) NOT NULL,
    cfrespublid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfcopyright character(64),
    cforder numeric(10,0)
);
CREATE TABLE public.cforgunit_srv (
    cforgunitid character(128) NOT NULL,
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3) NOT NULL,
    cfprice double precision
);
CREATE TABLE public.cforgunitkeyw (
    cforgunitid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cforgunitname (
    cforgunitid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cforgunitresact (
    cforgunitid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfresact text NOT NULL
);
CREATE TABLE public.cfpaddr (
    cfpaddrid character(128) NOT NULL,
    cfcountrycode character(2) NOT NULL,
    cfaddrline1 character(80),
    cfaddrline2 character(80),
    cfaddrline3 character(80),
    cfaddrline4 character(80),
    cfaddrline5 character(80),
    cfpostcode character(16),
    cfcitytown character(64),
    cfstateofcountry character(64),
    cfuri character(128)
);
CREATE TABLE public.cfpaddr_class (
    cfpaddrid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpaddr_geobbox (
    cfpaddrid character(128) NOT NULL,
    cfgeobboxid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers (
    cfpersid character(128) NOT NULL,
    cfbirthdate date,
    cfgender character(1),
    cfuri character(128)
);
CREATE TABLE public.cfpers_class (
    cfpersid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_country (
    cfpersid character(128) NOT NULL,
    cfcountrycode character(2) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_cv (
    cfpersid character(128) NOT NULL,
    cfcvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_dc (
    cfpersid character(128) NOT NULL,
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_eaddr (
    cfpersid character(128) NOT NULL,
    cfeaddrid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_equip (
    cfpersid character(128) NOT NULL,
    cfequipid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3),
    cfprice double precision
);
CREATE TABLE public.cfpers_event (
    cfpersid character(128) NOT NULL,
    cfeventid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_expskills (
    cfpersid character(128) NOT NULL,
    cfexpskillsid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3),
    cfprice double precision
);
CREATE TABLE public.cfpers_facil (
    cfpersid character(128) NOT NULL,
    cffacilid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3) NOT NULL,
    cfprice double precision
);
CREATE TABLE public.cfpers_fund (
    cfpersid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3) NOT NULL
);
CREATE TABLE public.cfpers_indic (
    cfpersid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_lang (
    cfpersid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfskillreading character(1) NOT NULL,
    cfskillspeaking character(1) NOT NULL,
    cfskillwriting character(1) NOT NULL
);
CREATE TABLE public.cfpers_meas (
    cfpersid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_medium (
    cfpersid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_orgunit (
    cfpersid character(128) NOT NULL,
    cforgunitid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_paddr (
    cfpersid character(128) NOT NULL,
    cfpaddrid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_pers (
    cfpersid1 character(128) NOT NULL,
    cfpersid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_prize (
    cfpersid character(128) NOT NULL,
    cfprizeid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_qual (
    cfpersid character(128) NOT NULL,
    cfqualid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfpers_respat (
    cfpersid character(128) NOT NULL,
    cfrespatid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cforder numeric(10,0)
);
CREATE TABLE public.cfpers_resprod (
    cfpersid character(128) NOT NULL,
    cfresprodid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfconditions character(254),
    cfavailability character(64),
    cfcurrcode character(3) NOT NULL,
    cfprice double precision,
    cfipr character(64),
    cforder numeric(10,0)
);
CREATE TABLE public.cfpers_respubl (
    cfpersid character(128) NOT NULL,
    cfrespublid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfcopyright character(64),
    cforder numeric(10,0)
);
CREATE TABLE public.cfpers_srv (
    cfpersid character(128) NOT NULL,
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfconditions character(254),
    cfavailability character(64),
    cfcurrcode character(3),
    cfprice double precision
);
CREATE TABLE public.cfperskeyw (
    cfpersid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfpersname (
    cfpersnameid character(128) NOT NULL,
    cffamilynames character(64),
    cffirstnames character(64),
    cfothernames character(64)
);
CREATE TABLE public.cfpersname_pers (
    cfpersnameid character(128) NOT NULL,
    cfpersid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL
);
CREATE TABLE public.cfpersresint (
    cfpersid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfresint text NOT NULL
);
CREATE TABLE public.cfprize (
    cfprizeid character(128) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfprize_class (
    cfprizeid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfprizedescr (
    cfprizeid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfprizekeyw (
    cfprizeid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfprizename (
    cfprizeid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cfproj (
    cfprojid character(128) NOT NULL,
    cfstartdate date,
    cfenddate date,
    cfacro character(16),
    cfuri character(128)
);
CREATE TABLE public.cfproj_class (
    cfprojid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_dc (
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfprojid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_equip (
    cfprojid character(128) NOT NULL,
    cfequipid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3),
    cfprice double precision
);
CREATE TABLE public.cfproj_event (
    cfprojid character(128) NOT NULL,
    cfeventid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_facil (
    cfprojid character(128) NOT NULL,
    cffacilid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3),
    cfprice double precision
);
CREATE TABLE public.cfproj_fund (
    cfprojid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3)
);
CREATE TABLE public.cfproj_indic (
    cfprojid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_meas (
    cfprojid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_medium (
    cfprojid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_orgunit (
    cfprojid character(128) NOT NULL,
    cforgunitid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_pers (
    cfprojid character(128) NOT NULL,
    cfpersid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_prize (
    cfprojid character(128) NOT NULL,
    cfprizeid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfprizedate timestamp without time zone
);
CREATE TABLE public.cfproj_proj (
    cfprojid1 character(128) NOT NULL,
    cfprojid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_respat (
    cfprojid character(128) NOT NULL,
    cfrespatid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_resprod (
    cfprojid character(128) NOT NULL,
    cfresprodid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfproj_respubl (
    cfprojid character(128) NOT NULL,
    cfrespublid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfcopyright character(64)
);
CREATE TABLE public.cfproj_srv (
    cfprojid character(128) NOT NULL,
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfavailability character(64),
    cfconditions character(254),
    cfcurrcode character(3) NOT NULL,
    cfprice double precision
);
CREATE TABLE public.cfprojabstr (
    cfprojid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfabstr text NOT NULL
);
CREATE TABLE public.cfprojkeyw (
    cfprojid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfprojtitle (
    cfprojid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cftitle character(254) NOT NULL
);
CREATE TABLE public.cfqual (
    cfqualid character(128) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfqual_class (
    cfqualid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfqualdescr (
    cfqualid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfqualkeyw (
    cfqualid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfqualtitle (
    cfqualid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cftitle character(254) NOT NULL
);
CREATE TABLE public.cfrespat (
    cfrespatid character(128) NOT NULL,
    cfcountrycode character(2) NOT NULL,
    cfregistrdate date NOT NULL,
    cfapprovdate date NOT NULL,
    cfpatentnum character(64) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfrespat_class (
    cfrespatid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespat_equip (
    cfrespatid character(128) NOT NULL,
    cfequipid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespat_facil (
    cfrespatid character(128) NOT NULL,
    cffacilid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespat_fund (
    cfrespatid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3)
);
CREATE TABLE public.cfrespat_indic (
    cfrespatid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespat_meas (
    cfrespatid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespat_medium (
    cfrespatid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespat_respat (
    cfrespatid1 character(128) NOT NULL,
    cfrespatid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespat_srv (
    cfrespatid character(128) NOT NULL,
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespatabstr (
    cfrespatid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfabstr text NOT NULL
);
CREATE TABLE public.cfrespatkeyw (
    cfrespatid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfrespattitle (
    cfrespatid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cftitle character(254) NOT NULL
);
CREATE TABLE public.cfrespatversinfo (
    cfrespatid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfversinfo character(254) NOT NULL
);
CREATE TABLE public.cfresprod (
    cfresprodid character(128) NOT NULL,
    cfuri character(128)
);
CREATE TABLE public.cfresprod_class (
    cfresprodid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprod_equip (
    cfresprodid character(128) NOT NULL,
    cfequipid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprod_facil (
    cfresprodid character(128) NOT NULL,
    cffacilid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprod_fund (
    cfresprodid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3) NOT NULL
);
CREATE TABLE public.cfresprod_geobbox (
    cfresprodid character(128) NOT NULL,
    cfgeobboxid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprod_indic (
    cfresprodid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprod_meas (
    cfresprodid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprod_medium (
    cfresprodid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprod_respat (
    cfresprodid character(128) NOT NULL,
    cfrespatid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprod_resprod (
    cfresprodid1 character(128) NOT NULL,
    cfresprodid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprod_srv (
    cfresprodid character(128) NOT NULL,
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfresprodaltname (
    cfresprodid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfaltname character varying(255) NOT NULL
);
CREATE TABLE public.cfresproddescr (
    cfresprodid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfresprodkeyw (
    cfresprodid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfresprodname (
    cfresprodid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.cfresprodversinfo (
    cfresprodid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfversinfo character(254) NOT NULL
);
CREATE TABLE public.cfrespubl (
    cfrespublid character(128) NOT NULL,
    cfrespubldate date NOT NULL,
    cfnum character(32),
    cfvol character(3),
    cfedition character(8),
    cfseries character(8),
    cfissue character(8),
    cfstartpage character(8),
    cfendpage character(8),
    cftotalpages character(8),
    cfisbn character(20),
    cfissn character(16),
    cfuri character(128)
);
CREATE TABLE public.cfrespubl_cite (
    cfrespublid character(128) NOT NULL,
    cfciteid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfyear integer NOT NULL,
    cfcount double precision NOT NULL
);
CREATE TABLE public.cfrespubl_class (
    cfrespublid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_dc (
    cfrespublid character(128) NOT NULL,
    cfdcid character(32) NOT NULL,
    cfdcscheme character(32) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_equip (
    cfrespublid character(128) NOT NULL,
    cfequipid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_event (
    cfrespublid character(128) NOT NULL,
    cfeventid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_facil (
    cfrespublid character(128) NOT NULL,
    cffacilid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_fund (
    cfrespublid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3)
);
CREATE TABLE public.cfrespubl_indic (
    cfrespublid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_meas (
    cfrespublid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_medium (
    cfrespublid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_metrics (
    cfrespublid character(128) NOT NULL,
    cfmetricsid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfyear integer NOT NULL,
    cfcount double precision NOT NULL
);
CREATE TABLE public.cfrespubl_respat (
    cfrespublid character(128) NOT NULL,
    cfrespatid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_resprod (
    cfrespublid character(128) NOT NULL,
    cfresprodid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_respubl (
    cfrespublid1 character(128) NOT NULL,
    cfrespublid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespubl_srv (
    cfrespublid character(128) NOT NULL,
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfrespublabstr (
    cfrespublid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfabstr text NOT NULL
);
CREATE TABLE public.cfrespublbiblnote (
    cfrespublid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfbiblnote character(254) NOT NULL
);
CREATE TABLE public.cfrespublkeyw (
    cfrespublid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfrespublnameabbrev (
    cfrespublid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfnameabbrev character(254) NOT NULL
);
CREATE TABLE public.cfrespublsubtitle (
    cfrespublid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfsubtitle character(254) NOT NULL
);
CREATE TABLE public.cfrespubltitle (
    cfrespublid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cftitle character(254) NOT NULL
);
CREATE TABLE public.cfrespublversinfo (
    cfrespublid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfversinfo character(254) NOT NULL
);
CREATE TABLE public.cfsrv (
    cfsrvid character(128) NOT NULL,
    cfacro character(16),
    cfuri character(128)
);
CREATE TABLE public.cfsrv_class (
    cfsrvid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfsrv_event (
    cfsrvid character(128) NOT NULL,
    cfeventid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfsrv_fund (
    cfsrvid character(128) NOT NULL,
    cffundid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision,
    cfamount double precision,
    cfcurrcode character(3)
);
CREATE TABLE public.cfsrv_indic (
    cfsrvid character(128) NOT NULL,
    cfindicid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfsrv_meas (
    cfsrvid character(128) NOT NULL,
    cfmeasid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfsrv_medium (
    cfsrvid character(128) NOT NULL,
    cfmediumid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfsrv_paddr (
    cfsrvid character(128) NOT NULL,
    cfpaddrid character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfsrv_srv (
    cfsrvid1 character(128) NOT NULL,
    cfsrvid2 character(128) NOT NULL,
    cfclassid character(128) NOT NULL,
    cfclassschemeid character(128) NOT NULL,
    cfstartdate timestamp without time zone NOT NULL,
    cfenddate timestamp without time zone NOT NULL,
    cffraction double precision
);
CREATE TABLE public.cfsrvdescr (
    cfsrvid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfdescr text NOT NULL
);
CREATE TABLE public.cfsrvkeyw (
    cfsrvid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfkeyw character(254) NOT NULL
);
CREATE TABLE public.cfsrvname (
    cfsrvid character(128) NOT NULL,
    cflangcode character(5) NOT NULL,
    cftrans character(1) NOT NULL,
    cfname character(254) NOT NULL
);
CREATE TABLE public.demo (
    id integer NOT NULL,
    name character varying(200) DEFAULT ''::character varying NOT NULL,
    hint text DEFAULT ''::text NOT NULL
);
CREATE SEQUENCE public.demo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.demo_id_seq OWNED BY public.demo.id;
ALTER TABLE ONLY public.demo ALTER COLUMN id SET DEFAULT nextval('public.demo_id_seq'::regclass);
ALTER TABLE ONLY public.cfcurrency
    ADD CONSTRAINT alter_key1 UNIQUE (cfnumcurrcode);
ALTER TABLE ONLY public.cfrespublbiblnote
    ADD CONSTRAINT cfbibliographicnote UNIQUE (cfbiblnote);
ALTER TABLE ONLY public.cflangname
    ADD CONSTRAINT cfname UNIQUE (cfname);
ALTER TABLE ONLY public.demo
    ADD CONSTRAINT demo_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.cfcite
    ADD CONSTRAINT pk_cfcite PRIMARY KEY (cfciteid);
ALTER TABLE ONLY public.cfcite_class
    ADD CONSTRAINT pk_cfcite_class PRIMARY KEY (cfciteid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfcite_medium
    ADD CONSTRAINT pk_cfcite_medium PRIMARY KEY (cfciteid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfcitedescr
    ADD CONSTRAINT pk_cfcitedescr PRIMARY KEY (cfciteid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfcitetitle
    ADD CONSTRAINT pk_cfcitetitle PRIMARY KEY (cfciteid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfclass
    ADD CONSTRAINT pk_cfclass PRIMARY KEY (cfclassid, cfclassschemeid);
ALTER TABLE ONLY public.cfclass_class
    ADD CONSTRAINT pk_cfclass_class PRIMARY KEY (cfclassid1, cfclassid2, cfclassschemeid1, cfclassschemeid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfclassdef
    ADD CONSTRAINT pk_cfclassdef PRIMARY KEY (cfclassid, cfclassschemeid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfclassdescr
    ADD CONSTRAINT pk_cfclassdescr PRIMARY KEY (cfclassid, cfclassschemeid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfclassex
    ADD CONSTRAINT pk_cfclassex PRIMARY KEY (cfclassid, cfclassschemeid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfclassscheme
    ADD CONSTRAINT pk_cfclassscheme PRIMARY KEY (cfclassschemeid);
ALTER TABLE ONLY public.cfclassscheme_classscheme
    ADD CONSTRAINT pk_cfclassscheme_classscheme PRIMARY KEY (cfclassschemeid1, cfclassschemeid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfclassschemedescr
    ADD CONSTRAINT pk_cfclassschemedescr PRIMARY KEY (cfclassschemeid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfclassschemename
    ADD CONSTRAINT pk_cfclassschemename PRIMARY KEY (cfclassschemeid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfclassterm
    ADD CONSTRAINT pk_cfclassterm PRIMARY KEY (cfclassid, cfclassschemeid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfcountry
    ADD CONSTRAINT pk_cfcountry PRIMARY KEY (cfcountrycode);
ALTER TABLE ONLY public.cfcountry_class
    ADD CONSTRAINT pk_cfcountry_class PRIMARY KEY (cfcountrycode, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfcountryname
    ADD CONSTRAINT pk_cfcountryname PRIMARY KEY (cfcountrycode, cflangcode, cftrans);
ALTER TABLE ONLY public.cfcurrency
    ADD CONSTRAINT pk_cfcurrency PRIMARY KEY (cfcurrcode);
ALTER TABLE ONLY public.cfcurrency_class
    ADD CONSTRAINT pk_cfcurrency_class PRIMARY KEY (cfcurrcode, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfcurrencyentname
    ADD CONSTRAINT pk_cfcurrencyentname PRIMARY KEY (cfcurrcode, cflangcode, cftrans);
ALTER TABLE ONLY public.cfcurrencyname
    ADD CONSTRAINT pk_cfcurrencyname PRIMARY KEY (cfcurrcode, cflangcode, cftrans);
ALTER TABLE ONLY public.cfcv
    ADD CONSTRAINT pk_cfcv PRIMARY KEY (cfcvid);
ALTER TABLE ONLY public.cfcv_class
    ADD CONSTRAINT pk_cfcv_class PRIMARY KEY (cfcvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfdc
    ADD CONSTRAINT pk_cfdc PRIMARY KEY (cfdcid, cfdcscheme);
ALTER TABLE ONLY public.cfdcaudience
    ADD CONSTRAINT pk_cfdcaudience PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdccontributor
    ADD CONSTRAINT pk_cfdccontributor PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdccoverage
    ADD CONSTRAINT pk_cfdccoverage PRIMARY KEY (cfdcid, cfdcscheme, cfdctrans, cfdclangtag);
ALTER TABLE ONLY public.cfdccoveragespatial
    ADD CONSTRAINT pk_cfdccoveragespatial PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdccoveragetemporal
    ADD CONSTRAINT pk_cfdccoveragetemporal PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdccreator
    ADD CONSTRAINT pk_cfdccreator PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcdate
    ADD CONSTRAINT pk_cfdcdate PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcdescription
    ADD CONSTRAINT pk_cfdcdescription PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcformat
    ADD CONSTRAINT pk_cfdcformat PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdclanguage
    ADD CONSTRAINT pk_cfdclanguage PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcprovenance
    ADD CONSTRAINT pk_cfdcprovenance PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcpublisher
    ADD CONSTRAINT pk_cfdcpublisher PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcrelation
    ADD CONSTRAINT pk_cfdcrelation PRIMARY KEY (cfdcid1, cfdcid2, cfdcscheme1, cfdcscheme2, cfdclangtag, cfdctrans, cfdcstartdate, cfdcenddate);
ALTER TABLE ONLY public.cfdcresourceidentifier
    ADD CONSTRAINT pk_cfdcresourceidentifier PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcresourcetype
    ADD CONSTRAINT pk_cfdcresourcetype PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcrightsholder
    ADD CONSTRAINT pk_cfdcrightsholder PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcrightsmm
    ADD CONSTRAINT pk_cfdcrightsmm PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcrightsmmaccessrights
    ADD CONSTRAINT pk_cfdcrightsmmaccessrights PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcrightsmmlicense
    ADD CONSTRAINT pk_cfdcrightsmmlicense PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcsource
    ADD CONSTRAINT pk_cfdcsource PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdcsubject
    ADD CONSTRAINT pk_cfdcsubject PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfdctitle
    ADD CONSTRAINT pk_cfdctitle PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cfeaddr
    ADD CONSTRAINT pk_cfeaddr PRIMARY KEY (cfeaddrid);
ALTER TABLE ONLY public.cfeaddr_class
    ADD CONSTRAINT pk_cfeaddr_class PRIMARY KEY (cfeaddrid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequip
    ADD CONSTRAINT pk_cfequip PRIMARY KEY (cfequipid);
ALTER TABLE ONLY public.cfequip_class
    ADD CONSTRAINT pk_cfequip_class PRIMARY KEY (cfequipid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequip_equip
    ADD CONSTRAINT pk_cfequip_equip PRIMARY KEY (cfequipid1, cfequipid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequip_event
    ADD CONSTRAINT pk_cfequip_event PRIMARY KEY (cfequipid, cfeventid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequip_fund
    ADD CONSTRAINT pk_cfequip_fund PRIMARY KEY (cfequipid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequip_indic
    ADD CONSTRAINT pk_cfequip_indic PRIMARY KEY (cfequipid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequip_meas
    ADD CONSTRAINT pk_cfequip_meas PRIMARY KEY (cfequipid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequip_medium
    ADD CONSTRAINT pk_cfequip_medium PRIMARY KEY (cfequipid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequip_paddr
    ADD CONSTRAINT pk_cfequip_paddr PRIMARY KEY (cfequipid, cfpaddrid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequip_srv
    ADD CONSTRAINT pk_cfequip_srv PRIMARY KEY (cfequipid, cfsrvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfequipdescr
    ADD CONSTRAINT pk_cfequipdescr PRIMARY KEY (cfequipid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfequipkeyw
    ADD CONSTRAINT pk_cfequipkeyw PRIMARY KEY (cfequipid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfequipname
    ADD CONSTRAINT pk_cfequipname PRIMARY KEY (cfequipid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfevent
    ADD CONSTRAINT pk_cfevent PRIMARY KEY (cfeventid);
ALTER TABLE ONLY public.cfevent_class
    ADD CONSTRAINT pk_cfevent_class PRIMARY KEY (cfeventid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfevent_event
    ADD CONSTRAINT pk_cfevent_event PRIMARY KEY (cfeventid1, cfeventid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfevent_fund
    ADD CONSTRAINT pk_cfevent_fund PRIMARY KEY (cfeventid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfevent_indic
    ADD CONSTRAINT pk_cfevent_indic PRIMARY KEY (cfeventid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfevent_meas
    ADD CONSTRAINT pk_cfevent_meas PRIMARY KEY (cfeventid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfevent_medium
    ADD CONSTRAINT pk_cfevent_medium PRIMARY KEY (cfeventid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfeventdescr
    ADD CONSTRAINT pk_cfeventdescr PRIMARY KEY (cfeventid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfeventkeyw
    ADD CONSTRAINT pk_cfeventkeyw PRIMARY KEY (cfeventid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfeventname
    ADD CONSTRAINT pk_cfeventname PRIMARY KEY (cfeventid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfexpskills
    ADD CONSTRAINT pk_cfexpskills PRIMARY KEY (cfexpskillsid);
ALTER TABLE ONLY public.cfexpskills_class
    ADD CONSTRAINT pk_cfexpskills_class PRIMARY KEY (cfexpskillsid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfexpskillsdescr
    ADD CONSTRAINT pk_cfexpskillsdescr PRIMARY KEY (cfexpskillsid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfexpskillskeyw
    ADD CONSTRAINT pk_cfexpskillskeyw PRIMARY KEY (cfexpskillsid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfexpskillsname
    ADD CONSTRAINT pk_cfexpskillsname PRIMARY KEY (cfexpskillsid, cflangcode, cftrans);
ALTER TABLE ONLY public.cffacil
    ADD CONSTRAINT pk_cffacil PRIMARY KEY (cffacilid);
ALTER TABLE ONLY public.cffacil_class
    ADD CONSTRAINT pk_cffacil_class PRIMARY KEY (cffacilid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacil_equip
    ADD CONSTRAINT pk_cffacil_equip PRIMARY KEY (cffacilid, cfequipid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacil_event
    ADD CONSTRAINT pk_cffacil_event PRIMARY KEY (cffacilid, cfeventid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacil_facil
    ADD CONSTRAINT pk_cffacil_facil PRIMARY KEY (cffacilid1, cffacilid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacil_fund
    ADD CONSTRAINT pk_cffacil_fund PRIMARY KEY (cffacilid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacil_indic
    ADD CONSTRAINT pk_cffacil_indic PRIMARY KEY (cffacilid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacil_meas
    ADD CONSTRAINT pk_cffacil_meas PRIMARY KEY (cffacilid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacil_medium
    ADD CONSTRAINT pk_cffacil_medium PRIMARY KEY (cffacilid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacil_paddr
    ADD CONSTRAINT pk_cffacil_paddr PRIMARY KEY (cffacilid, cfpaddrid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacil_srv
    ADD CONSTRAINT pk_cffacil_srv PRIMARY KEY (cffacilid, cfsrvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffacildescr
    ADD CONSTRAINT pk_cffacildescr PRIMARY KEY (cffacilid, cflangcode, cftrans);
ALTER TABLE ONLY public.cffacilkeyw
    ADD CONSTRAINT pk_cffacilkeyw PRIMARY KEY (cffacilid, cflangcode, cftrans);
ALTER TABLE ONLY public.cffacilname
    ADD CONSTRAINT pk_cffacilname PRIMARY KEY (cffacilid, cflangcode, cftrans);
ALTER TABLE ONLY public.cffdcrightsmmpricing
    ADD CONSTRAINT pk_cffdcrightsmmpricing PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cffdctrans);
ALTER TABLE ONLY public.cffdcrightsmmprivacy
    ADD CONSTRAINT pk_cffdcrightsmmprivacy PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cffdctrans);
ALTER TABLE ONLY public.cffdcrightsmmrights
    ADD CONSTRAINT pk_cffdcrightsmmrights PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cfdctrans);
ALTER TABLE ONLY public.cffdcrightsmmsecurity
    ADD CONSTRAINT pk_cffdcrightsmmsecurity PRIMARY KEY (cfdcid, cfdcscheme, cfdclangtag, cffdctrans);
ALTER TABLE ONLY public.cffedid
    ADD CONSTRAINT pk_cffedid PRIMARY KEY (cffedidid);
ALTER TABLE ONLY public.cffedid_class
    ADD CONSTRAINT pk_cffedid_class PRIMARY KEY (cffedidid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffedid_srv
    ADD CONSTRAINT pk_cffedid_srv PRIMARY KEY (cfsrvid, cffedidid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffund
    ADD CONSTRAINT pk_cffund PRIMARY KEY (cffundid);
ALTER TABLE ONLY public.cffund_class
    ADD CONSTRAINT pk_cffund_class PRIMARY KEY (cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffund_fund
    ADD CONSTRAINT pk_cffund_fund PRIMARY KEY (cffundid1, cffundid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cffund_indic
    ADD CONSTRAINT pk_cffund_indic PRIMARY KEY (cffundid, cfindicid, cfclassschemeid, cfstartdate, cfenddate, cfclassid);
ALTER TABLE ONLY public.cffund_meas
    ADD CONSTRAINT pk_cffund_meas PRIMARY KEY (cffundid, cfmeasid, cfclassschemeid, cfstartdate, cfenddate, cfclassid);
ALTER TABLE ONLY public.cffunddescr
    ADD CONSTRAINT pk_cffunddescr PRIMARY KEY (cffundid, cflangcode, cftrans);
ALTER TABLE ONLY public.cffundkeyw
    ADD CONSTRAINT pk_cffundkeyw PRIMARY KEY (cffundid, cflangcode, cftrans);
ALTER TABLE ONLY public.cffundname
    ADD CONSTRAINT pk_cffundname PRIMARY KEY (cffundid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfgeobbox
    ADD CONSTRAINT pk_cfgeobbox PRIMARY KEY (cfgeobboxid);
ALTER TABLE ONLY public.cfgeobbox_class
    ADD CONSTRAINT pk_cfgeobbox_class PRIMARY KEY (cfgeobboxid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfgeobbox_geobbox
    ADD CONSTRAINT pk_cfgeobbox_geobbox PRIMARY KEY (cfgeobboxid1, cfgeobboxid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfgeobbox_meas
    ADD CONSTRAINT pk_cfgeobbox_meas PRIMARY KEY (cfgeobboxid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfgeobboxdescr
    ADD CONSTRAINT pk_cfgeobboxdescr PRIMARY KEY (cfgeobboxid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfgeobboxkeyw
    ADD CONSTRAINT pk_cfgeobboxkeyw PRIMARY KEY (cfgeobboxid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfgeobboxname
    ADD CONSTRAINT pk_cfgeobboxname PRIMARY KEY (cfgeobboxid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfindic
    ADD CONSTRAINT pk_cfindic PRIMARY KEY (cfindicid);
ALTER TABLE ONLY public.cfindic_class
    ADD CONSTRAINT pk_cfindic_class PRIMARY KEY (cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfindic_indic
    ADD CONSTRAINT pk_cfindic_indic PRIMARY KEY (cfindicid1, cfindicid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfindic_meas
    ADD CONSTRAINT pk_cfindic_meas PRIMARY KEY (cfindicid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfindicdescr
    ADD CONSTRAINT pk_cfindicdescr PRIMARY KEY (cfindicid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfindickeyw
    ADD CONSTRAINT pk_cfindickeyw PRIMARY KEY (cfindicid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfindicname
    ADD CONSTRAINT pk_cfindicname PRIMARY KEY (cfindicid, cflangcode, cftrans);
ALTER TABLE ONLY public.cflang
    ADD CONSTRAINT pk_cflang PRIMARY KEY (cflangcode);
ALTER TABLE ONLY public.cflang_class
    ADD CONSTRAINT pk_cflang_class PRIMARY KEY (cflangcode, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cflangname
    ADD CONSTRAINT pk_cflangname PRIMARY KEY (cflangcodeoflangname, cflangcode, cftrans);
ALTER TABLE ONLY public.cfmeas
    ADD CONSTRAINT pk_cfmeas PRIMARY KEY (cfmeasid);
ALTER TABLE ONLY public.cfmeas_class
    ADD CONSTRAINT pk_cfmeas_class PRIMARY KEY (cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfmeas_meas
    ADD CONSTRAINT pk_cfmeas_meas PRIMARY KEY (cfmeasd1, cfmeasid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfmeasdescr
    ADD CONSTRAINT pk_cfmeasdescr PRIMARY KEY (cfmeasid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfmeaskeyw
    ADD CONSTRAINT pk_cfmeaskeyw PRIMARY KEY (cflangcode, cftrans, cfmeasid);
ALTER TABLE ONLY public.cfmeasname
    ADD CONSTRAINT pk_cfmeasname PRIMARY KEY (cfmeasid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfmedium
    ADD CONSTRAINT pk_cfmedium PRIMARY KEY (cfmediumid);
ALTER TABLE ONLY public.cfmedium_class
    ADD CONSTRAINT pk_cfmedium_class PRIMARY KEY (cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfmedium_fund
    ADD CONSTRAINT pk_cfmedium_fund PRIMARY KEY (cfmediumid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfmedium_indic
    ADD CONSTRAINT pk_cfmedium_indic PRIMARY KEY (cfmediumid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfmedium_meas
    ADD CONSTRAINT pk_cfmedium_meas PRIMARY KEY (cfmediumid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfmedium_medium
    ADD CONSTRAINT pk_cfmedium_medium PRIMARY KEY (cfmediumid1, cfmediumid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfmediumdescr
    ADD CONSTRAINT pk_cfmediumdescr PRIMARY KEY (cfmediumid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfmediumkeyw
    ADD CONSTRAINT pk_cfmediumkeyw PRIMARY KEY (cfmediumid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfmediumtitle
    ADD CONSTRAINT pk_cfmediumtitle PRIMARY KEY (cfmediumid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfmetrics
    ADD CONSTRAINT pk_cfmetrics PRIMARY KEY (cfmetricsid);
ALTER TABLE ONLY public.cfmetrics_class
    ADD CONSTRAINT pk_cfmetrics_class PRIMARY KEY (cfmetricsid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfmetricsdescr
    ADD CONSTRAINT pk_cfmetricsdescr PRIMARY KEY (cfmetricsid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfmetricskeyw
    ADD CONSTRAINT pk_cfmetricskeyw PRIMARY KEY (cfmetricsid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfmetricsname
    ADD CONSTRAINT pk_cfmetricsname PRIMARY KEY (cfmetricsid, cflangcode, cftrans);
ALTER TABLE ONLY public.cforgunit
    ADD CONSTRAINT pk_cforgunit PRIMARY KEY (cforgunitid);
ALTER TABLE ONLY public.cforgunit_class
    ADD CONSTRAINT pk_cforgunit_class PRIMARY KEY (cforgunitid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_dc
    ADD CONSTRAINT pk_cforgunit_dc PRIMARY KEY (cforgunitid, cfdcid, cfdcscheme, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_eaddr
    ADD CONSTRAINT pk_cforgunit_eaddr PRIMARY KEY (cforgunitid, cfeaddrid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_equip
    ADD CONSTRAINT pk_cforgunit_equip PRIMARY KEY (cforgunitid, cfequipid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_event
    ADD CONSTRAINT pk_cforgunit_event PRIMARY KEY (cforgunitid, cfeventid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_expskills
    ADD CONSTRAINT pk_cforgunit_expskills PRIMARY KEY (cforgunitid, cfexpskillsid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_facil
    ADD CONSTRAINT pk_cforgunit_facil PRIMARY KEY (cforgunitid, cffacilid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_fund
    ADD CONSTRAINT pk_cforgunit_fund PRIMARY KEY (cforgunitid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_indic
    ADD CONSTRAINT pk_cforgunit_indic PRIMARY KEY (cforgunitid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_meas
    ADD CONSTRAINT pk_cforgunit_meas PRIMARY KEY (cforgunitid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_medium
    ADD CONSTRAINT pk_cforgunit_medium PRIMARY KEY (cforgunitid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_orgunit
    ADD CONSTRAINT pk_cforgunit_orgunit PRIMARY KEY (cforgunitid1, cforgunitid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_paddr
    ADD CONSTRAINT pk_cforgunit_paddr PRIMARY KEY (cforgunitid, cfpaddrid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_prize
    ADD CONSTRAINT pk_cforgunit_prize PRIMARY KEY (cforgunitid, cfprizeid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_respat
    ADD CONSTRAINT pk_cforgunit_respat PRIMARY KEY (cforgunitid, cfrespatid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_resprod
    ADD CONSTRAINT pk_cforgunit_resprod PRIMARY KEY (cforgunitid, cfresprodid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_respubl
    ADD CONSTRAINT pk_cforgunit_respubl PRIMARY KEY (cforgunitid, cfrespublid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunit_srv
    ADD CONSTRAINT pk_cforgunit_srv PRIMARY KEY (cforgunitid, cfsrvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cforgunitkeyw
    ADD CONSTRAINT pk_cforgunitkeyw PRIMARY KEY (cforgunitid, cflangcode, cftrans);
ALTER TABLE ONLY public.cforgunitname
    ADD CONSTRAINT pk_cforgunitname PRIMARY KEY (cforgunitid, cflangcode, cftrans);
ALTER TABLE ONLY public.cforgunitresact
    ADD CONSTRAINT pk_cforgunitresact PRIMARY KEY (cforgunitid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfpaddr
    ADD CONSTRAINT pk_cfpaddr PRIMARY KEY (cfpaddrid);
ALTER TABLE ONLY public.cfpaddr_class
    ADD CONSTRAINT pk_cfpaddr_class PRIMARY KEY (cfpaddrid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpaddr_geobbox
    ADD CONSTRAINT pk_cfpaddr_geobbox PRIMARY KEY (cfpaddrid, cfgeobboxid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers
    ADD CONSTRAINT pk_cfpers PRIMARY KEY (cfpersid);
ALTER TABLE ONLY public.cfpers_class
    ADD CONSTRAINT pk_cfpers_class PRIMARY KEY (cfpersid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_country
    ADD CONSTRAINT pk_cfpers_country PRIMARY KEY (cfpersid, cfcountrycode, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_cv
    ADD CONSTRAINT pk_cfpers_cv PRIMARY KEY (cfpersid, cfcvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_dc
    ADD CONSTRAINT pk_cfpers_dc PRIMARY KEY (cfpersid, cfdcid, cfdcscheme, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_eaddr
    ADD CONSTRAINT pk_cfpers_eaddr PRIMARY KEY (cfpersid, cfeaddrid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_equip
    ADD CONSTRAINT pk_cfpers_equip PRIMARY KEY (cfpersid, cfequipid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_event
    ADD CONSTRAINT pk_cfpers_event PRIMARY KEY (cfpersid, cfeventid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_expskills
    ADD CONSTRAINT pk_cfpers_expskills PRIMARY KEY (cfpersid, cfexpskillsid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_facil
    ADD CONSTRAINT pk_cfpers_facil PRIMARY KEY (cfpersid, cffacilid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_fund
    ADD CONSTRAINT pk_cfpers_fund PRIMARY KEY (cfpersid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_indic
    ADD CONSTRAINT pk_cfpers_indic PRIMARY KEY (cfpersid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_lang
    ADD CONSTRAINT pk_cfpers_lang PRIMARY KEY (cfpersid, cflangcode, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_meas
    ADD CONSTRAINT pk_cfpers_meas PRIMARY KEY (cfpersid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_medium
    ADD CONSTRAINT pk_cfpers_medium PRIMARY KEY (cfpersid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_orgunit
    ADD CONSTRAINT pk_cfpers_orgunit PRIMARY KEY (cfpersid, cforgunitid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_paddr
    ADD CONSTRAINT pk_cfpers_paddr PRIMARY KEY (cfpersid, cfpaddrid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_pers
    ADD CONSTRAINT pk_cfpers_pers PRIMARY KEY (cfpersid1, cfpersid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_prize
    ADD CONSTRAINT pk_cfpers_prize PRIMARY KEY (cfpersid, cfprizeid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_qual
    ADD CONSTRAINT pk_cfpers_qual PRIMARY KEY (cfpersid, cfqualid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_respat
    ADD CONSTRAINT pk_cfpers_respat PRIMARY KEY (cfpersid, cfrespatid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_resprod
    ADD CONSTRAINT pk_cfpers_resprod PRIMARY KEY (cfpersid, cfresprodid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_respubl
    ADD CONSTRAINT pk_cfpers_respubl PRIMARY KEY (cfpersid, cfrespublid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfpers_srv
    ADD CONSTRAINT pk_cfpers_srv PRIMARY KEY (cfpersid, cfsrvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfperskeyw
    ADD CONSTRAINT pk_cfperskeyw PRIMARY KEY (cfpersid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfpersname
    ADD CONSTRAINT pk_cfpersname PRIMARY KEY (cfpersnameid);
ALTER TABLE ONLY public.cfpersname_pers
    ADD CONSTRAINT pk_cfpersname_pers PRIMARY KEY (cfclassid, cfclassschemeid, cfstartdate, cfenddate, cfpersnameid, cfpersid);
ALTER TABLE ONLY public.cfpersresint
    ADD CONSTRAINT pk_cfpersresint PRIMARY KEY (cfpersid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfprize
    ADD CONSTRAINT pk_cfprize PRIMARY KEY (cfprizeid);
ALTER TABLE ONLY public.cfprize_class
    ADD CONSTRAINT pk_cfprize_class PRIMARY KEY (cfprizeid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfprizedescr
    ADD CONSTRAINT pk_cfprizedescr PRIMARY KEY (cfprizeid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfprizekeyw
    ADD CONSTRAINT pk_cfprizekeyw PRIMARY KEY (cfprizeid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfprizename
    ADD CONSTRAINT pk_cfprizename PRIMARY KEY (cfprizeid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfproj
    ADD CONSTRAINT pk_cfproj PRIMARY KEY (cfprojid);
ALTER TABLE ONLY public.cfproj_class
    ADD CONSTRAINT pk_cfproj_class PRIMARY KEY (cfprojid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_dc
    ADD CONSTRAINT pk_cfproj_dc PRIMARY KEY (cfdcid, cfdcscheme, cfprojid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_equip
    ADD CONSTRAINT pk_cfproj_equip PRIMARY KEY (cfprojid, cfequipid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_event
    ADD CONSTRAINT pk_cfproj_event PRIMARY KEY (cfprojid, cfeventid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_facil
    ADD CONSTRAINT pk_cfproj_facil PRIMARY KEY (cfprojid, cffacilid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_fund
    ADD CONSTRAINT pk_cfproj_fund PRIMARY KEY (cfprojid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_indic
    ADD CONSTRAINT pk_cfproj_indic PRIMARY KEY (cfprojid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_meas
    ADD CONSTRAINT pk_cfproj_meas PRIMARY KEY (cfprojid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_medium
    ADD CONSTRAINT pk_cfproj_medium PRIMARY KEY (cfprojid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_orgunit
    ADD CONSTRAINT pk_cfproj_orgunit PRIMARY KEY (cfprojid, cforgunitid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_pers
    ADD CONSTRAINT pk_cfproj_pers PRIMARY KEY (cfprojid, cfpersid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_prize
    ADD CONSTRAINT pk_cfproj_prize PRIMARY KEY (cfprojid, cfprizeid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_proj
    ADD CONSTRAINT pk_cfproj_proj PRIMARY KEY (cfprojid1, cfprojid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_respat
    ADD CONSTRAINT pk_cfproj_respat PRIMARY KEY (cfprojid, cfrespatid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_resprod
    ADD CONSTRAINT pk_cfproj_resprod PRIMARY KEY (cfprojid, cfresprodid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_respubl
    ADD CONSTRAINT pk_cfproj_respubl PRIMARY KEY (cfprojid, cfrespublid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfproj_srv
    ADD CONSTRAINT pk_cfproj_srv PRIMARY KEY (cfprojid, cfsrvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfprojabstr
    ADD CONSTRAINT pk_cfprojabstr PRIMARY KEY (cfprojid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfprojkeyw
    ADD CONSTRAINT pk_cfprojkeyw PRIMARY KEY (cfprojid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfprojtitle
    ADD CONSTRAINT pk_cfprojtitle PRIMARY KEY (cfprojid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfqual
    ADD CONSTRAINT pk_cfqual PRIMARY KEY (cfqualid);
ALTER TABLE ONLY public.cfqual_class
    ADD CONSTRAINT pk_cfqual_class PRIMARY KEY (cfqualid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfqualdescr
    ADD CONSTRAINT pk_cfqualdescr PRIMARY KEY (cfqualid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfqualkeyw
    ADD CONSTRAINT pk_cfqualkeyw PRIMARY KEY (cfqualid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfqualtitle
    ADD CONSTRAINT pk_cfqualtitle PRIMARY KEY (cfqualid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespat
    ADD CONSTRAINT pk_cfrespat PRIMARY KEY (cfrespatid);
ALTER TABLE ONLY public.cfrespat_class
    ADD CONSTRAINT pk_cfrespat_class PRIMARY KEY (cfrespatid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespat_equip
    ADD CONSTRAINT pk_cfrespat_equip PRIMARY KEY (cfrespatid, cfequipid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespat_facil
    ADD CONSTRAINT pk_cfrespat_facil PRIMARY KEY (cfrespatid, cffacilid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespat_fund
    ADD CONSTRAINT pk_cfrespat_fund PRIMARY KEY (cfrespatid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespat_indic
    ADD CONSTRAINT pk_cfrespat_indic PRIMARY KEY (cfrespatid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespat_meas
    ADD CONSTRAINT pk_cfrespat_meas PRIMARY KEY (cfrespatid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespat_medium
    ADD CONSTRAINT pk_cfrespat_medium PRIMARY KEY (cfrespatid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespat_respat
    ADD CONSTRAINT pk_cfrespat_respat PRIMARY KEY (cfrespatid1, cfrespatid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespat_srv
    ADD CONSTRAINT pk_cfrespat_srv PRIMARY KEY (cfrespatid, cfsrvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespatabstr
    ADD CONSTRAINT pk_cfrespatabstr PRIMARY KEY (cfrespatid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespatkeyw
    ADD CONSTRAINT pk_cfrespatkeyw PRIMARY KEY (cfrespatid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespattitle
    ADD CONSTRAINT pk_cfrespattitle PRIMARY KEY (cfrespatid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespatversinfo
    ADD CONSTRAINT pk_cfrespatversinfo PRIMARY KEY (cfrespatid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfresprod
    ADD CONSTRAINT pk_cfresprod PRIMARY KEY (cfresprodid);
ALTER TABLE ONLY public.cfresprod_class
    ADD CONSTRAINT pk_cfresprod_class PRIMARY KEY (cfresprodid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprod_equip
    ADD CONSTRAINT pk_cfresprod_equip PRIMARY KEY (cfresprodid, cfequipid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprod_facil
    ADD CONSTRAINT pk_cfresprod_facil PRIMARY KEY (cfresprodid, cffacilid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprod_fund
    ADD CONSTRAINT pk_cfresprod_fund PRIMARY KEY (cfresprodid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprod_geobbox
    ADD CONSTRAINT pk_cfresprod_geobbox PRIMARY KEY (cfresprodid, cfgeobboxid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprod_indic
    ADD CONSTRAINT pk_cfresprod_indic PRIMARY KEY (cfresprodid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprod_medium
    ADD CONSTRAINT pk_cfresprod_medium PRIMARY KEY (cfresprodid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprod_respat
    ADD CONSTRAINT pk_cfresprod_respat PRIMARY KEY (cfresprodid, cfrespatid, cfclassid, cfclassschemeid, cfenddate, cfstartdate);
ALTER TABLE ONLY public.cfresprod_resprod
    ADD CONSTRAINT pk_cfresprod_resprod PRIMARY KEY (cfresprodid1, cfresprodid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprod_srv
    ADD CONSTRAINT pk_cfresprod_srv PRIMARY KEY (cfresprodid, cfsrvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprodaltname
    ADD CONSTRAINT pk_cfresprodaltname PRIMARY KEY (cfresprodid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfresproddescr
    ADD CONSTRAINT pk_cfresproddescr PRIMARY KEY (cfresprodid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfresprodkeyw
    ADD CONSTRAINT pk_cfresprodkeyw PRIMARY KEY (cfresprodid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfresprod_meas
    ADD CONSTRAINT pk_cfresprodmeas PRIMARY KEY (cfresprodid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfresprodname
    ADD CONSTRAINT pk_cfresprodname PRIMARY KEY (cfresprodid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfresprodversinfo
    ADD CONSTRAINT pk_cfresprodversinfo PRIMARY KEY (cfresprodid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespubl
    ADD CONSTRAINT pk_cfrespubl PRIMARY KEY (cfrespublid);
ALTER TABLE ONLY public.cfrespubl_cite
    ADD CONSTRAINT pk_cfrespubl_cite PRIMARY KEY (cfrespublid, cfciteid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_class
    ADD CONSTRAINT pk_cfrespubl_class PRIMARY KEY (cfrespublid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_dc
    ADD CONSTRAINT pk_cfrespubl_dc PRIMARY KEY (cfrespublid, cfdcid, cfdcscheme, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_equip
    ADD CONSTRAINT pk_cfrespubl_equip PRIMARY KEY (cfrespublid, cfequipid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_event
    ADD CONSTRAINT pk_cfrespubl_event PRIMARY KEY (cfrespublid, cfeventid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_facil
    ADD CONSTRAINT pk_cfrespubl_facil PRIMARY KEY (cfrespublid, cffacilid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_fund
    ADD CONSTRAINT pk_cfrespubl_fund PRIMARY KEY (cfrespublid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_indic
    ADD CONSTRAINT pk_cfrespubl_indic PRIMARY KEY (cfrespublid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_meas
    ADD CONSTRAINT pk_cfrespubl_meas PRIMARY KEY (cfrespublid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_medium
    ADD CONSTRAINT pk_cfrespubl_medium PRIMARY KEY (cfrespublid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_metrics
    ADD CONSTRAINT pk_cfrespubl_metrics PRIMARY KEY (cfrespublid, cfmetricsid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_respat
    ADD CONSTRAINT pk_cfrespubl_respat PRIMARY KEY (cfrespublid, cfrespatid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_resprod
    ADD CONSTRAINT pk_cfrespubl_resprod PRIMARY KEY (cfrespublid, cfresprodid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_respubl
    ADD CONSTRAINT pk_cfrespubl_respubl PRIMARY KEY (cfrespublid1, cfrespublid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespubl_srv
    ADD CONSTRAINT pk_cfrespubl_srv PRIMARY KEY (cfrespublid, cfsrvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfrespublabstr
    ADD CONSTRAINT pk_cfrespublabstr PRIMARY KEY (cfrespublid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespublbiblnote
    ADD CONSTRAINT pk_cfrespublbiblnote PRIMARY KEY (cfrespublid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespublkeyw
    ADD CONSTRAINT pk_cfrespublkeyw PRIMARY KEY (cfrespublid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespublnameabbrev
    ADD CONSTRAINT pk_cfrespublnameabbrev PRIMARY KEY (cfrespublid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespublsubtitle
    ADD CONSTRAINT pk_cfrespublsubtitle PRIMARY KEY (cfrespublid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespubltitle
    ADD CONSTRAINT pk_cfrespubltitle PRIMARY KEY (cfrespublid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfrespublversinfo
    ADD CONSTRAINT pk_cfrespublversinfo PRIMARY KEY (cfrespublid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfsrv
    ADD CONSTRAINT pk_cfsrv PRIMARY KEY (cfsrvid);
ALTER TABLE ONLY public.cfsrv_class
    ADD CONSTRAINT pk_cfsrv_class PRIMARY KEY (cfsrvid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfsrv_event
    ADD CONSTRAINT pk_cfsrv_event PRIMARY KEY (cfsrvid, cfeventid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfsrv_fund
    ADD CONSTRAINT pk_cfsrv_fund PRIMARY KEY (cfsrvid, cffundid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfsrv_indic
    ADD CONSTRAINT pk_cfsrv_indic PRIMARY KEY (cfsrvid, cfindicid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfsrv_meas
    ADD CONSTRAINT pk_cfsrv_meas PRIMARY KEY (cfsrvid, cfmeasid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfsrv_medium
    ADD CONSTRAINT pk_cfsrv_medium PRIMARY KEY (cfsrvid, cfmediumid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfsrv_paddr
    ADD CONSTRAINT pk_cfsrv_paddr PRIMARY KEY (cfsrvid, cfpaddrid, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfsrv_srv
    ADD CONSTRAINT pk_cfsrv_srv PRIMARY KEY (cfsrvid1, cfsrvid2, cfclassid, cfclassschemeid, cfstartdate, cfenddate);
ALTER TABLE ONLY public.cfsrvdescr
    ADD CONSTRAINT pk_cfsrvdescr PRIMARY KEY (cfsrvid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfsrvkeyw
    ADD CONSTRAINT pk_cfsrvkeyw PRIMARY KEY (cfsrvid, cflangcode, cftrans);
ALTER TABLE ONLY public.cfsrvname
    ADD CONSTRAINT pk_cfsrvname PRIMARY KEY (cfsrvid, cflangcode, cftrans);
CREATE INDEX ix_cfcite__cite_class_cfcite_class ON public.cfcite_class USING btree (cfciteid);
CREATE INDEX ix_cfcite__cite_medium_cfcite_medium ON public.cfcite_medium USING btree (cfciteid);
CREATE INDEX ix_cfcite__citedescr_cfcitedescr ON public.cfcitedescr USING btree (cfciteid);
CREATE INDEX ix_cfcite__citename_cfcitetitle ON public.cfcitetitle USING btree (cfciteid);
CREATE INDEX ix_cfcite__respubl_cite_cfrespubl_cite ON public.cfrespubl_cite USING btree (cfciteid);
CREATE INDEX ix_cfclass__cfgeobbox_geobbox_cfgeobbox_geobbox ON public.cfgeobbox_geobbox USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__cfresprod_resprod_cfresprod_resprod ON public.cfresprod_resprod USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__cite_class_cfcite_class ON public.cfcite_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__cite_medium_cfcite_medium ON public.cfcite_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__class_class1_cfclass_class ON public.cfclass_class USING btree (cfclassid1, cfclassschemeid1);
CREATE INDEX ix_cfclass__class_class2_cfclass_class ON public.cfclass_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__class_class_cfclass_class ON public.cfclass_class USING btree (cfclassid2, cfclassschemeid2);
CREATE INDEX ix_cfclass__classdef_cfclassdef ON public.cfclassdef USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__classdescr_cfclassdescr ON public.cfclassdescr USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__classex_cfclassex ON public.cfclassex USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__classterm_cfclassterm ON public.cfclassterm USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__country_class_cfcountry_class ON public.cfcountry_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__cscheme_cscheme_cfclassscheme_classscheme ON public.cfclassscheme_classscheme USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__currency_class_cfcurrency_class ON public.cfcurrency_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__cv_class_cfcv_class ON public.cfcv_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__eaddr_class_cfeaddr_class ON public.cfeaddr_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__equip__indic_cfequip_indic ON public.cfequip_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__equip_class_cfequip_class ON public.cfequip_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__equip_equip_cfequip_equip ON public.cfequip_equip USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__equip_event_cfequip_event ON public.cfequip_event USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__equip_fund_cfequip_fund ON public.cfequip_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__equip_meas_cfequip_meas ON public.cfequip_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__equip_medium_cfequip_medium ON public.cfequip_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__equip_paddr_cfequip_paddr ON public.cfequip_paddr USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__equip_srv_cfequip_srv ON public.cfequip_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__event_class_cfevent_class ON public.cfevent_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__event_event_cfevent_event ON public.cfevent_event USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__event_fund_cfevent_fund ON public.cfevent_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__event_indic_cfevent_indic ON public.cfevent_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__event_meas_cfevent_meas ON public.cfevent_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__event_medium_cfevent_medium ON public.cfevent_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__exskills_class_cfexpskills_class ON public.cfexpskills_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_class_cffacil_class ON public.cffacil_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_equip_cffacil_equip ON public.cffacil_equip USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_event_cffacil_event ON public.cffacil_event USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_facil_cffacil_facil ON public.cffacil_facil USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_fund_cffacil_fund ON public.cffacil_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_indic_cffacil_indic ON public.cffacil_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_meas_cffacil_meas ON public.cffacil_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_medium_cffacil_medium ON public.cffacil_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_paddr_cffacil_paddr ON public.cffacil_paddr USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__facil_srv_cffacil_srv ON public.cffacil_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__fedid_cffedid ON public.cffedid USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__fedid_class_cffedid_class ON public.cffedid_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__fund_class_cffund_class ON public.cffund_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__fund_fund_cffund_fund ON public.cffund_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__fund_indic_cffund_indic ON public.cffund_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__fund_meas_cffund_meas ON public.cffund_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__fund_medium_cfmedium_fund ON public.cfmedium_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__geobbox_class_cfgeobbox_class ON public.cfgeobbox_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__geobbox_meas_cfgeobbox_meas ON public.cfgeobbox_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__indicate_class_cfindic_class ON public.cfindic_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__indicate_indic_cfindic_indic ON public.cfindic_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__indicate_meas_cfindic_meas ON public.cfindic_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__lang_class_cflang_class ON public.cflang_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__measure_class_cfmeas_class ON public.cfmeas_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__measure_meas_cfmeas_meas ON public.cfmeas_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__medium_class_cfmedium_class ON public.cfmedium_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__medium_indic_cfmedium_indic ON public.cfmedium_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__medium_meas_cfmedium_meas ON public.cfmedium_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__medium_medium_cfmedium_medium ON public.cfmedium_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__metrics_class_cfmetrics_class ON public.cfmetrics_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_class_cforgunit_class ON public.cforgunit_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_dc_cforgunit_dc ON public.cforgunit_dc USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_eaddrs_cforgunit_eaddr ON public.cforgunit_eaddr USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_equip_cforgunit_equip ON public.cforgunit_equip USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_event_cforgunit_event ON public.cforgunit_event USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_exskills_cforgunit_expskills ON public.cforgunit_expskills USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_facil_cforgunit_facil ON public.cforgunit_facil USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_fund_cforgunit_fund ON public.cforgunit_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_indic_cforgunit_indic ON public.cforgunit_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_meas_cforgunit_meas ON public.cforgunit_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_medium_cforgunit_medium ON public.cforgunit_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_orgunit_cforgunit_orgunit ON public.cforgunit_orgunit USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_paddr_cforgunit_paddr ON public.cforgunit_paddr USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_prize_cforgunit_prize ON public.cforgunit_prize USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_respat_cforgunit_respat ON public.cforgunit_respat USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_resprod_cforgunit_resprod ON public.cforgunit_resprod USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_respubl_cforgunit_respubl ON public.cforgunit_respubl USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__orgunit_srv_cforgunit_srv ON public.cforgunit_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__paddr__geobbox_cfpaddr_geobbox ON public.cfpaddr_geobbox USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__paddr_class_cfpaddr_class ON public.cfpaddr_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_class_cfpers_class ON public.cfpers_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_country_cfpers_country ON public.cfpers_country USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_cv_cfpers_cv ON public.cfpers_cv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_dc_cfpers_dc ON public.cfpers_dc USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_eaddr_cfpers_eaddr ON public.cfpers_eaddr USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_equip_cfpers_equip ON public.cfpers_equip USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_event_cfpers_event ON public.cfpers_event USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_exskills_cfpers_expskills ON public.cfpers_expskills USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_facil_cfpers_facil ON public.cfpers_facil USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_fund_cfpers_fund ON public.cfpers_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_indic_cfpers_indic ON public.cfpers_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_lang_cfpers_lang ON public.cfpers_lang USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_meas_cfpers_meas ON public.cfpers_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_medium_cfpers_medium ON public.cfpers_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_orgunit_cfpers_orgunit ON public.cfpers_orgunit USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_paddr_cfpers_paddr ON public.cfpers_paddr USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_pers_cfpers_pers ON public.cfpers_pers USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_prize_cfpers_prize ON public.cfpers_prize USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_qual_cfpers_qual ON public.cfpers_qual USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_respat_cfpers_respat ON public.cfpers_respat USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_resprod_cfpers_resprod ON public.cfpers_resprod USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_respubl_cfpers_respubl ON public.cfpers_respubl USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__pers_srv_cfpers_srv ON public.cfpers_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__persname_pers_cfpersname_pers ON public.cfpersname_pers USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__prize_class_cfprize_class ON public.cfprize_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj__pers_cfproj_pers ON public.cfproj_pers USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_class_cfproj_class ON public.cfproj_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_dc_cfproj_dc ON public.cfproj_dc USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_equip_cfproj_equip ON public.cfproj_equip USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_event_cfproj_event ON public.cfproj_event USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_facil_cfproj_facil ON public.cfproj_facil USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_fund_cfproj_fund ON public.cfproj_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_indic_cfproj_indic ON public.cfproj_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_meas_cfproj_meas ON public.cfproj_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_medium_cfproj_medium ON public.cfproj_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_orgunit_cfproj_orgunit ON public.cfproj_orgunit USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_prize_cfproj_prize ON public.cfproj_prize USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_proj_cfproj_proj ON public.cfproj_proj USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_respat_cfproj_respat ON public.cfproj_respat USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_resprod_cfproj_resprod ON public.cfproj_resprod USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_respubl_cfproj_respubl ON public.cfproj_respubl USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__proj_srv_cfproj_srv ON public.cfproj_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__qual_class_cfqual_class ON public.cfqual_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respat_class_cfrespat_class ON public.cfrespat_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respat_equip_cfrespat_equip ON public.cfrespat_equip USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respat_facil_cfrespat_facil ON public.cfrespat_facil USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respat_fund_cfrespat_fund ON public.cfrespat_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respat_indic_cfrespat_indic ON public.cfrespat_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respat_meas_cfrespat_meas ON public.cfrespat_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respat_medium_cfrespat_medium ON public.cfrespat_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respat_respat_cfrespat_respat ON public.cfrespat_respat USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respat_srv_cfrespat_srv ON public.cfrespat_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_class_cfresprod_class ON public.cfresprod_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_equip_cfresprod_equip ON public.cfresprod_equip USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_facil_cfresprod_facil ON public.cfresprod_facil USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_fund_cfresprod_fund ON public.cfresprod_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_geobbox_cfresprod_geobbox ON public.cfresprod_geobbox USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_indic_cfresprod_indic ON public.cfresprod_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_meas_cfresprod_meas ON public.cfresprod_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_medium_cfresprod_medium ON public.cfresprod_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_respat_cfresprod_respat ON public.cfresprod_respat USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__resprod_srv_cfresprod_srv ON public.cfresprod_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_cite_cfrespubl_cite ON public.cfrespubl_cite USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_class_cfrespubl_class ON public.cfrespubl_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_dc_cfrespubl_dc ON public.cfrespubl_dc USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_equip_cfrespubl_equip ON public.cfrespubl_equip USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_event_cfrespubl_event ON public.cfrespubl_event USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_facil_cfrespubl_facil ON public.cfrespubl_facil USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_fund_cfrespubl_fund ON public.cfrespubl_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_indic_cfrespubl_indic ON public.cfrespubl_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_meas_cfrespubl_meas ON public.cfrespubl_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_medium_cfrespubl_medium ON public.cfrespubl_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_metrics_cfrespubl_metrics ON public.cfrespubl_metrics USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_respat_cfrespubl_respat ON public.cfrespubl_respat USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_resprod_cfrespubl_resprod ON public.cfrespubl_resprod USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_respubl_cfrespubl_respubl ON public.cfrespubl_respubl USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__respubl_srv_cfrespubl_srv ON public.cfrespubl_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__srv_class_cfsrv_class ON public.cfsrv_class USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__srv_event_cfsrv_event ON public.cfsrv_event USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__srv_fedid_cffedid_srv ON public.cffedid_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__srv_fund_cfsrv_fund ON public.cfsrv_fund USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__srv_indic_cfsrv_indic ON public.cfsrv_indic USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__srv_meas_cfsrv_meas ON public.cfsrv_meas USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__srv_medium_cfsrv_medium ON public.cfsrv_medium USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__srv_paddr_cfsrv_paddr ON public.cfsrv_paddr USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfclass__srv_srv_cfsrv_srv ON public.cfsrv_srv USING btree (cfclassid, cfclassschemeid);
CREATE INDEX ix_cfcountry__country_class_cfcountry_class ON public.cfcountry_class USING btree (cfcountrycode);
CREATE INDEX ix_cfcountry__countryname_cfcountryname ON public.cfcountryname USING btree (cfcountrycode);
CREATE INDEX ix_cfcountry_event_cfevent ON public.cfevent USING btree (cfcountrycode);
CREATE INDEX ix_cfcountry_paddr_cfpaddr ON public.cfpaddr USING btree (cfcountrycode);
CREATE INDEX ix_cfcountry_respat_cfrespat ON public.cfrespat USING btree (cfcountrycode);
CREATE INDEX ix_cfcounty__pers_country_cfpers_country ON public.cfpers_country USING btree (cfcountrycode);
CREATE INDEX ix_cfcscheme__class_cfclass ON public.cfclass USING btree (cfclassschemeid);
CREATE INDEX ix_cfcscheme__cscheme_cscheme1_cfclassscheme_classscheme ON public.cfclassscheme_classscheme USING btree (cfclassschemeid2);
CREATE INDEX ix_cfcscheme__cscheme_cscheme2_cfclassscheme_classscheme ON public.cfclassscheme_classscheme USING btree (cfclassschemeid1);
CREATE INDEX ix_cfcscheme__cschemedescr_cfclassschemedescr ON public.cfclassschemedescr USING btree (cfclassschemeid);
CREATE INDEX ix_cfcscheme__cschemename_cfclassschemename ON public.cfclassschemename USING btree (cfclassschemeid);
CREATE INDEX ix_cfcurrency__currency_class_cfcurrency_class ON public.cfcurrency_class USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__currencyentname_cfcurrencyentname ON public.cfcurrencyentname USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__currencyname_cfcurrencyname ON public.cfcurrencyname USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__equip_fund_cfequip_fund ON public.cfequip_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__event_fund_cfevent_fund ON public.cfevent_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__facil_fund_cffacil_fund ON public.cffacil_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__fund_cffund ON public.cffund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__fund_indic_cffund_indic ON public.cffund_indic USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__fund_meas_cffund_meas ON public.cffund_meas USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__medium_fund_cfmedium_fund ON public.cfmedium_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__orgu_exskills_cforgunit_expskills ON public.cforgunit_expskills USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__orgunit_equip_cforgunit_equip ON public.cforgunit_equip USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__orgunit_facil_cforgunit_facil ON public.cforgunit_facil USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__orgunit_fund_cforgunit_fund ON public.cforgunit_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__orgunit_resprod_cforgunit_resprod ON public.cforgunit_resprod USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__orgunit_srv_cforgunit_srv ON public.cforgunit_srv USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__pers_equip_cfpers_equip ON public.cfpers_equip USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__pers_exskills_cfpers_expskills ON public.cfpers_expskills USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__pers_facil_cfpers_facil ON public.cfpers_facil USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__pers_fund_cfpers_fund ON public.cfpers_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__pers_resprod_cfpers_resprod ON public.cfpers_resprod USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__pers_srv_cfpers_srv ON public.cfpers_srv USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__proj_equip_cfproj_equip ON public.cfproj_equip USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__proj_facil_cfproj_facil ON public.cfproj_facil USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__proj_fund_cfproj_fund ON public.cfproj_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__proj_srv_cfproj_srv ON public.cfproj_srv USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__respat_fund_cfrespat_fund ON public.cfrespat_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__resprod_fund_cfresprod_fund ON public.cfresprod_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__respubl_fund_cfrespubl_fund ON public.cfrespubl_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency__srv_fund_cfsrv_fund ON public.cfsrv_fund USING btree (cfcurrcode);
CREATE INDEX ix_cfcurrency_orgunit_cforgunit ON public.cforgunit USING btree (cfcurrcode);
CREATE INDEX ix_cfcv__cv_class_cfcv_class ON public.cfcv_class USING btree (cfcvid);
CREATE INDEX ix_cfcv__pers_cv_cfpers_cv ON public.cfpers_cv USING btree (cfcvid);
CREATE INDEX ix_cfdc__dcaudience_cfdcaudience ON public.cfdcaudience USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dccontributor_cfdccontributor ON public.cfdccontributor USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dccorecreator_cfdccreator ON public.cfdccreator USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dccoredate_cfdcdate ON public.cfdcdate USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dccoreformat_cfdcformat ON public.cfdcformat USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dccorepublisher_cfdcpublisher ON public.cfdcpublisher USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dccorerelation_cfdcrelation ON public.cfdcrelation USING btree (cfdcid2, cfdcscheme2);
CREATE INDEX ix_cfdc__dccoverage_cfdccoverage ON public.cfdccoverage USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dccoveragespatial_cfdccoveragespatial ON public.cfdccoveragespatial USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dccoveragetemporal_cfdccoveragetemporal ON public.cfdccoveragetemporal USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcdescription_cfdcdescription ON public.cfdcdescription USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dclanguage_cfdclanguage ON public.cfdclanguage USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcprovenance_cfdcprovenance ON public.cfdcprovenance USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcrelation_cfdcrelation ON public.cfdcrelation USING btree (cfdcid1, cfdcscheme1);
CREATE INDEX ix_cfdc__dcresourceidentifier_cfdcresourceidentifier ON public.cfdcresourceidentifier USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcresourcetype_cfdcresourcetype ON public.cfdcresourcetype USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcrightsholder_cfdcrightsholder ON public.cfdcrightsholder USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcrightsmm_cfdcrightsmm ON public.cfdcrightsmm USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcrightsmmaccrights_cfdcrightsmmaccessrights ON public.cfdcrightsmmaccessrights USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcrightsmmlicense_cfdcrightsmmlicense ON public.cfdcrightsmmlicense USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcsource_cfdcsource ON public.cfdcsource USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dcsubject_cfdcsubject ON public.cfdcsubject USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__dctitle_cfdctitle ON public.cfdctitle USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__fdcrightsmmpricing_cffdcrightsmmpricing ON public.cffdcrightsmmpricing USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__fdcrightsmmprivacy_cffdcrightsmmprivacy ON public.cffdcrightsmmprivacy USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__fdcrightsmmrights_cffdcrightsmmrights ON public.cffdcrightsmmrights USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__fdcrightsmmsecurity_cffdcrightsmmsecurity ON public.cffdcrightsmmsecurity USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__orgunit_dc_cforgunit_dc ON public.cforgunit_dc USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__pers_dc_cfpers_dc ON public.cfpers_dc USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__proj_dc_cfproj_dc ON public.cfproj_dc USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfdc__respubl_dc_cfrespubl_dc ON public.cfrespubl_dc USING btree (cfdcid, cfdcscheme);
CREATE INDEX ix_cfeaddr__eaddr_class_cfeaddr_class ON public.cfeaddr_class USING btree (cfeaddrid);
CREATE INDEX ix_cfeaddr__orgunit_eaddr_cforgunit_eaddr ON public.cforgunit_eaddr USING btree (cfeaddrid);
CREATE INDEX ix_cfeaddr__pers_eaddr_cfpers_eaddr ON public.cfpers_eaddr USING btree (cfeaddrid);
CREATE INDEX ix_cfequip__equip_class_cfequip_class ON public.cfequip_class USING btree (cfequipid);
CREATE INDEX ix_cfequip__equip_equip1_cfequip_equip ON public.cfequip_equip USING btree (cfequipid1);
CREATE INDEX ix_cfequip__equip_equip2_cfequip_equip ON public.cfequip_equip USING btree (cfequipid2);
CREATE INDEX ix_cfequip__equip_event_cfequip_event ON public.cfequip_event USING btree (cfequipid);
CREATE INDEX ix_cfequip__equip_fund_cfequip_fund ON public.cfequip_fund USING btree (cfequipid);
CREATE INDEX ix_cfequip__equip_indic_cfequip_indic ON public.cfequip_indic USING btree (cfequipid);
CREATE INDEX ix_cfequip__equip_meas_cfequip_meas ON public.cfequip_meas USING btree (cfequipid);
CREATE INDEX ix_cfequip__equip_medium_cfequip_medium ON public.cfequip_medium USING btree (cfequipid);
CREATE INDEX ix_cfequip__equip_paddr_cfequip_paddr ON public.cfequip_paddr USING btree (cfequipid);
CREATE INDEX ix_cfequip__equip_srv_cfequip_srv ON public.cfequip_srv USING btree (cfequipid);
CREATE INDEX ix_cfequip__equipdescr_cfequipdescr ON public.cfequipdescr USING btree (cfequipid);
CREATE INDEX ix_cfequip__equipkeyw_cfequipkeyw ON public.cfequipkeyw USING btree (cfequipid);
CREATE INDEX ix_cfequip__equipname_cfequipname ON public.cfequipname USING btree (cfequipid);
CREATE INDEX ix_cfequip__facil_equip_cffacil_equip ON public.cffacil_equip USING btree (cfequipid);
CREATE INDEX ix_cfequip__orgunit_equip_cforgunit_equip ON public.cforgunit_equip USING btree (cfequipid);
CREATE INDEX ix_cfequip__pers_equip_cfpers_equip ON public.cfpers_equip USING btree (cfequipid);
CREATE INDEX ix_cfequip__proj_equip_cfproj_equip ON public.cfproj_equip USING btree (cfequipid);
CREATE INDEX ix_cfequip__respat_equip_cfrespat_equip ON public.cfrespat_equip USING btree (cfequipid);
CREATE INDEX ix_cfequip__resprod_equip_cfresprod_equip ON public.cfresprod_equip USING btree (cfequipid);
CREATE INDEX ix_cfequip__respubl_equip_cfrespubl_equip ON public.cfrespubl_equip USING btree (cfequipid);
CREATE INDEX ix_cfevent__equip_event_cfequip_event ON public.cfequip_event USING btree (cfeventid);
CREATE INDEX ix_cfevent__event_class_cfevent_class ON public.cfevent_class USING btree (cfeventid);
CREATE INDEX ix_cfevent__event_event1_cfevent_event ON public.cfevent_event USING btree (cfeventid1);
CREATE INDEX ix_cfevent__event_event2_cfevent_event ON public.cfevent_event USING btree (cfeventid2);
CREATE INDEX ix_cfevent__event_fund_cfevent_fund ON public.cfevent_fund USING btree (cfeventid);
CREATE INDEX ix_cfevent__event_indic_cfevent_indic ON public.cfevent_indic USING btree (cfeventid);
CREATE INDEX ix_cfevent__event_meas_cfevent_meas ON public.cfevent_meas USING btree (cfeventid);
CREATE INDEX ix_cfevent__event_medium_cfevent_medium ON public.cfevent_medium USING btree (cfeventid);
CREATE INDEX ix_cfevent__eventdescr_cfeventdescr ON public.cfeventdescr USING btree (cfeventid);
CREATE INDEX ix_cfevent__eventkeyw_cfeventkeyw ON public.cfeventkeyw USING btree (cfeventid);
CREATE INDEX ix_cfevent__eventname_cfeventname ON public.cfeventname USING btree (cfeventid);
CREATE INDEX ix_cfevent__facil_event_cffacil_event ON public.cffacil_event USING btree (cfeventid);
CREATE INDEX ix_cfevent__orgunit_event_cforgunit_event ON public.cforgunit_event USING btree (cfeventid);
CREATE INDEX ix_cfevent__pers_event_cfpers_event ON public.cfpers_event USING btree (cfeventid);
CREATE INDEX ix_cfevent__proj_event_cfproj_event ON public.cfproj_event USING btree (cfeventid);
CREATE INDEX ix_cfevent__respubl_event_cfrespubl_event ON public.cfrespubl_event USING btree (cfeventid);
CREATE INDEX ix_cfevent__srv_event_cfsrv_event ON public.cfsrv_event USING btree (cfeventid);
CREATE INDEX ix_cfexskills__exskills_class_cfexpskills_class ON public.cfexpskills_class USING btree (cfexpskillsid);
CREATE INDEX ix_cfexskills__exskillsdescr_cfexpskillsdescr ON public.cfexpskillsdescr USING btree (cfexpskillsid);
CREATE INDEX ix_cfexskills__exskillskeyw_cfexpskillskeyw ON public.cfexpskillskeyw USING btree (cfexpskillsid);
CREATE INDEX ix_cfexskills__exskillsname_cfexpskillsname ON public.cfexpskillsname USING btree (cfexpskillsid);
CREATE INDEX ix_cfexskills__orgu_exskills_cforgunit_expskills ON public.cforgunit_expskills USING btree (cfexpskillsid);
CREATE INDEX ix_cfexskills__pers_exskills_cfpers_expskills ON public.cfpers_expskills USING btree (cfexpskillsid);
CREATE INDEX ix_cffacil__facil_class_cffacil_class ON public.cffacil_class USING btree (cffacilid);
CREATE INDEX ix_cffacil__facil_equip_cffacil_equip ON public.cffacil_equip USING btree (cffacilid);
CREATE INDEX ix_cffacil__facil_event_cffacil_event ON public.cffacil_event USING btree (cffacilid);
CREATE INDEX ix_cffacil__facil_facil1_cffacil_facil ON public.cffacil_facil USING btree (cffacilid1);
CREATE INDEX ix_cffacil__facil_facil2_cffacil_facil ON public.cffacil_facil USING btree (cffacilid2);
CREATE INDEX ix_cffacil__facil_fund_cffacil_fund ON public.cffacil_fund USING btree (cffacilid);
CREATE INDEX ix_cffacil__facil_indic_cffacil_indic ON public.cffacil_indic USING btree (cffacilid);
CREATE INDEX ix_cffacil__facil_meas_cffacil_meas ON public.cffacil_meas USING btree (cffacilid);
CREATE INDEX ix_cffacil__facil_medium_cffacil_medium ON public.cffacil_medium USING btree (cffacilid);
CREATE INDEX ix_cffacil__facil_paddr_cffacil_paddr ON public.cffacil_paddr USING btree (cffacilid);
CREATE INDEX ix_cffacil__facil_srv_cffacil_srv ON public.cffacil_srv USING btree (cffacilid);
CREATE INDEX ix_cffacil__facildescr_cffacildescr ON public.cffacildescr USING btree (cffacilid);
CREATE INDEX ix_cffacil__facilkeyw_cffacilkeyw ON public.cffacilkeyw USING btree (cffacilid);
CREATE INDEX ix_cffacil__facilname_cffacilname ON public.cffacilname USING btree (cffacilid);
CREATE INDEX ix_cffacil__orgunit_facil_cforgunit_facil ON public.cforgunit_facil USING btree (cffacilid);
CREATE INDEX ix_cffacil__pers_facil_cfpers_facil ON public.cfpers_facil USING btree (cffacilid);
CREATE INDEX ix_cffacil__proj_facil_cfproj_facil ON public.cfproj_facil USING btree (cffacilid);
CREATE INDEX ix_cffacil__respat_facil_cfrespat_facil ON public.cfrespat_facil USING btree (cffacilid);
CREATE INDEX ix_cffacil__resprod_facil_cfresprod_facil ON public.cfresprod_facil USING btree (cffacilid);
CREATE INDEX ix_cffacil__respubl_facil_cfrespubl_facil ON public.cfrespubl_facil USING btree (cffacilid);
CREATE INDEX ix_cffedid__fedid_class_cffedid_class ON public.cffedid_class USING btree (cffedidid);
CREATE INDEX ix_cffund__equip_fund_cfequip_fund ON public.cfequip_fund USING btree (cffundid);
CREATE INDEX ix_cffund__event_fund_cfevent_fund ON public.cfevent_fund USING btree (cffundid);
CREATE INDEX ix_cffund__facil_fund_cffacil_fund ON public.cffacil_fund USING btree (cffundid);
CREATE INDEX ix_cffund__fund_class_cffund_class ON public.cffund_class USING btree (cffundid);
CREATE INDEX ix_cffund__fund_fund1_cffund_fund ON public.cffund_fund USING btree (cffundid2);
CREATE INDEX ix_cffund__fund_fund2_cffund_fund ON public.cffund_fund USING btree (cffundid1);
CREATE INDEX ix_cffund__fund_indic_cffund_indic ON public.cffund_indic USING btree (cffundid);
CREATE INDEX ix_cffund__fund_meas_cffund_meas ON public.cffund_meas USING btree (cffundid);
CREATE INDEX ix_cffund__fund_medium_cfmedium_fund ON public.cfmedium_fund USING btree (cffundid);
CREATE INDEX ix_cffund__funddescr_cffunddescr ON public.cffunddescr USING btree (cffundid);
CREATE INDEX ix_cffund__fundkeyw_cffundkeyw ON public.cffundkeyw USING btree (cffundid);
CREATE INDEX ix_cffund__fundname_cffundname ON public.cffundname USING btree (cffundid);
CREATE INDEX ix_cffund__orgunit_fund_cforgunit_fund ON public.cforgunit_fund USING btree (cffundid);
CREATE INDEX ix_cffund__pers_fund_cfpers_fund ON public.cfpers_fund USING btree (cffundid);
CREATE INDEX ix_cffund__proj_fund_cfproj_fund ON public.cfproj_fund USING btree (cffundid);
CREATE INDEX ix_cffund__respat_fund_cfrespat_fund ON public.cfrespat_fund USING btree (cffundid);
CREATE INDEX ix_cffund__resprod_fund_cfresprod_fund ON public.cfresprod_fund USING btree (cffundid);
CREATE INDEX ix_cffund__respubl_fund_cfrespubl_fund ON public.cfrespubl_fund USING btree (cffundid);
CREATE INDEX ix_cffund__srv_fund_cfsrv_fund ON public.cfsrv_fund USING btree (cffundid);
CREATE INDEX ix_cfgeobbox__geobbox_class_cfgeobbox_class ON public.cfgeobbox_class USING btree (cfgeobboxid);
CREATE INDEX ix_cfgeobbox__geobbox_geobbox1_cfgeobbox_geobbox ON public.cfgeobbox_geobbox USING btree (cfgeobboxid1);
CREATE INDEX ix_cfgeobbox__geobbox_geobbox2_cfgeobbox_geobbox ON public.cfgeobbox_geobbox USING btree (cfgeobboxid2);
CREATE INDEX ix_cfgeobbox__geobbox_meas_cfgeobbox_meas ON public.cfgeobbox_meas USING btree (cfgeobboxid);
CREATE INDEX ix_cfgeobbox__geobboxdescr_cfgeobboxdescr ON public.cfgeobboxdescr USING btree (cfgeobboxid);
CREATE INDEX ix_cfgeobbox__geobboxkeyw_cfgeobboxkeyw ON public.cfgeobboxkeyw USING btree (cfgeobboxid);
CREATE INDEX ix_cfgeobbox__geobboxname_cfgeobboxname ON public.cfgeobboxname USING btree (cfgeobboxid);
CREATE INDEX ix_cfgeobbox__paddr__geobbox_cfpaddr_geobbox ON public.cfpaddr_geobbox USING btree (cfgeobboxid);
CREATE INDEX ix_cfgeobbox__resprod_geobbox_cfresprod_geobbox ON public.cfresprod_geobbox USING btree (cfgeobboxid);
CREATE INDEX ix_cfindic__fund_indic_cffund_indic ON public.cffund_indic USING btree (cfindicid);
CREATE INDEX ix_cfindic__indic_class_cfindic_class ON public.cfindic_class USING btree (cfindicid);
CREATE INDEX ix_cfindic__indic_indic1_cfindic_indic ON public.cfindic_indic USING btree (cfindicid1);
CREATE INDEX ix_cfindic__indic_indic2_cfindic_indic ON public.cfindic_indic USING btree (cfindicid2);
CREATE INDEX ix_cfindic__indic_meas_cfindic_meas ON public.cfindic_meas USING btree (cfindicid);
CREATE INDEX ix_cfindic__indicdescr_cfindicdescr ON public.cfindicdescr USING btree (cfindicid);
CREATE INDEX ix_cfindic__indickeyw_cfindickeyw ON public.cfindickeyw USING btree (cfindicid);
CREATE INDEX ix_cfindic__indicname_cfindicname ON public.cfindicname USING btree (cfindicid);
CREATE INDEX ix_cfindic__medium_indic_cfmedium_indic ON public.cfmedium_indic USING btree (cfindicid);
CREATE INDEX ix_cfindic__orgunit_indic_cforgunit_indic ON public.cforgunit_indic USING btree (cfindicid);
CREATE INDEX ix_cfindic__pers_indic_cfpers_indic ON public.cfpers_indic USING btree (cfindicid);
CREATE INDEX ix_cfindic__proj_indic_cfproj_indic ON public.cfproj_indic USING btree (cfindicid);
CREATE INDEX ix_cfindic__respat_indic_cfrespat_indic ON public.cfrespat_indic USING btree (cfindicid);
CREATE INDEX ix_cfindic__resprod_indic_cfresprod_indic ON public.cfresprod_indic USING btree (cfindicid);
CREATE INDEX ix_cfindic__respubl_indic_cfrespubl_indic ON public.cfrespubl_indic USING btree (cfindicid);
CREATE INDEX ix_cfindic__srv_indic_cfsrv_indic ON public.cfsrv_indic USING btree (cfindicid);
CREATE INDEX ix_cfindicate__equip_indic_cfequip_indic ON public.cfequip_indic USING btree (cfindicid);
CREATE INDEX ix_cfindicate__event_indic_cfevent_indic ON public.cfevent_indic USING btree (cfindicid);
CREATE INDEX ix_cfindicate__facil_indic_cffacil_indic ON public.cffacil_indic USING btree (cfindicid);
CREATE INDEX ix_cflang__citedescr_cfcitedescr ON public.cfcitedescr USING btree (cflangcode);
CREATE INDEX ix_cflang__citename_cfcitetitle ON public.cfcitetitle USING btree (cflangcode);
CREATE INDEX ix_cflang__classdef_cfclassdef ON public.cfclassdef USING btree (cflangcode);
CREATE INDEX ix_cflang__classdescr_cfclassdescr ON public.cfclassdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__classex_cfclassex ON public.cfclassex USING btree (cflangcode);
CREATE INDEX ix_cflang__classterm_cfclassterm ON public.cfclassterm USING btree (cflangcode);
CREATE INDEX ix_cflang__countryname_cfcountryname ON public.cfcountryname USING btree (cflangcode);
CREATE INDEX ix_cflang__cscheme_cfclassschemedescr ON public.cfclassschemedescr USING btree (cflangcode);
CREATE INDEX ix_cflang__cschemename_cfclassschemename ON public.cfclassschemename USING btree (cflangcode);
CREATE INDEX ix_cflang__currencyentname_cfcurrencyentname ON public.cfcurrencyentname USING btree (cflangcode);
CREATE INDEX ix_cflang__currencyname_cfcurrencyname ON public.cfcurrencyname USING btree (cflangcode);
CREATE INDEX ix_cflang__equipdescr_cfequipdescr ON public.cfequipdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__equipkeyw_cfequipkeyw ON public.cfequipkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__equipname_cfequipname ON public.cfequipname USING btree (cflangcode);
CREATE INDEX ix_cflang__eventdescr_cfeventdescr ON public.cfeventdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__eventkeyw_cfeventkeyw ON public.cfeventkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__eventname_cfeventname ON public.cfeventname USING btree (cflangcode);
CREATE INDEX ix_cflang__exskillsdescr_cfexpskillsdescr ON public.cfexpskillsdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__exskillskeyw_cfexpskillskeyw ON public.cfexpskillskeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__exskillsname_cfexpskillsname ON public.cfexpskillsname USING btree (cflangcode);
CREATE INDEX ix_cflang__facildescr_cffacildescr ON public.cffacildescr USING btree (cflangcode);
CREATE INDEX ix_cflang__facilkeyw_cffacilkeyw ON public.cffacilkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__facilname_cffacilname ON public.cffacilname USING btree (cflangcode);
CREATE INDEX ix_cflang__funddescr_cffunddescr ON public.cffunddescr USING btree (cflangcode);
CREATE INDEX ix_cflang__fundkeyw_cffundkeyw ON public.cffundkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__fundname_cffundname ON public.cffundname USING btree (cflangcode);
CREATE INDEX ix_cflang__geobbox_cfgeobboxname ON public.cfgeobboxname USING btree (cflangcode);
CREATE INDEX ix_cflang__geobboxdescr_cfgeobboxdescr ON public.cfgeobboxdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__geobboxkeyw_cfgeobboxkeyw ON public.cfgeobboxkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__indicdescr_cfindicdescr ON public.cfindicdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__indickeyw_cfindickeyw ON public.cfindickeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__indicname_cfindicname ON public.cfindicname USING btree (cflangcode);
CREATE INDEX ix_cflang__lang_class_cflang_class ON public.cflang_class USING btree (cflangcode);
CREATE INDEX ix_cflang__langname1_cflangname ON public.cflangname USING btree (cflangcode);
CREATE INDEX ix_cflang__langname2_cflangname ON public.cflangname USING btree (cflangcodeoflangname);
CREATE INDEX ix_cflang__measdescr_cfmeasdescr ON public.cfmeasdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__measkeyw_cfmeaskeyw ON public.cfmeaskeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__measname_cfmeasname ON public.cfmeasname USING btree (cflangcode);
CREATE INDEX ix_cflang__mediumdescr_cfmediumdescr ON public.cfmediumdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__mediumkeyw_cfmediumkeyw ON public.cfmediumkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__mediumtitle_cfmediumtitle ON public.cfmediumtitle USING btree (cflangcode);
CREATE INDEX ix_cflang__metricsdescr_cfmetricsdescr ON public.cfmetricsdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__metricskeyw_cfmetricskeyw ON public.cfmetricskeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__metricsname_cfmetricsname ON public.cfmetricsname USING btree (cflangcode);
CREATE INDEX ix_cflang__orgunitkeyw_cforgunitkeyw ON public.cforgunitkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__orgunitname_cforgunitname ON public.cforgunitname USING btree (cflangcode);
CREATE INDEX ix_cflang__orgunitresact_cforgunitresact ON public.cforgunitresact USING btree (cflangcode);
CREATE INDEX ix_cflang__pers_lang_cfpers_lang ON public.cfpers_lang USING btree (cflangcode);
CREATE INDEX ix_cflang__perskeyw_cfperskeyw ON public.cfperskeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__persresint_cfpersresint ON public.cfpersresint USING btree (cflangcode);
CREATE INDEX ix_cflang__pricedescr_cfprizedescr ON public.cfprizedescr USING btree (cflangcode);
CREATE INDEX ix_cflang__prizekeyw_cfprizekeyw ON public.cfprizekeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__prizename_cfprizename ON public.cfprizename USING btree (cflangcode);
CREATE INDEX ix_cflang__projabstr_cfprojabstr ON public.cfprojabstr USING btree (cflangcode);
CREATE INDEX ix_cflang__projkeyw_cfprojkeyw ON public.cfprojkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__projtitle_cfprojtitle ON public.cfprojtitle USING btree (cflangcode);
CREATE INDEX ix_cflang__qualdescr_cfqualdescr ON public.cfqualdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__qualkeyw_cfqualkeyw ON public.cfqualkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__qualtitle_cfqualtitle ON public.cfqualtitle USING btree (cflangcode);
CREATE INDEX ix_cflang__respatabstr_cfrespatabstr ON public.cfrespatabstr USING btree (cflangcode);
CREATE INDEX ix_cflang__respatkeyw_cfrespatkeyw ON public.cfrespatkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__respattitle_cfrespattitle ON public.cfrespattitle USING btree (cflangcode);
CREATE INDEX ix_cflang__respatversinfo_cfrespatversinfo ON public.cfrespatversinfo USING btree (cflangcode);
CREATE INDEX ix_cflang__resprodaltname_cfresprodaltname ON public.cfresprodaltname USING btree (cflangcode);
CREATE INDEX ix_cflang__resproddescr_cfresproddescr ON public.cfresproddescr USING btree (cflangcode);
CREATE INDEX ix_cflang__resprodkeyw_cfresprodkeyw ON public.cfresprodkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__resprodname_cfresprodname ON public.cfresprodname USING btree (cflangcode);
CREATE INDEX ix_cflang__resprodversinfo_cfresprodversinfo ON public.cfresprodversinfo USING btree (cflangcode);
CREATE INDEX ix_cflang__respublabstr_cfrespublabstr ON public.cfrespublabstr USING btree (cflangcode);
CREATE INDEX ix_cflang__respublkeyw_cfrespublkeyw ON public.cfrespublkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__respublsubtitle_cfrespublsubtitle ON public.cfrespublsubtitle USING btree (cflangcode);
CREATE INDEX ix_cflang__respubltitle_cfrespubltitle ON public.cfrespubltitle USING btree (cflangcode);
CREATE INDEX ix_cflang__respublversinfo_cfrespublversinfo ON public.cfrespublversinfo USING btree (cflangcode);
CREATE INDEX ix_cflang__srvdescr_cfsrvdescr ON public.cfsrvdescr USING btree (cflangcode);
CREATE INDEX ix_cflang__srvkeyw_cfsrvkeyw ON public.cfsrvkeyw USING btree (cflangcode);
CREATE INDEX ix_cflang__srvname_cfsrvname ON public.cfsrvname USING btree (cflangcode);
CREATE INDEX ix_cfmeas__equip_meas_cfequip_meas ON public.cfequip_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__event_meas_cfevent_meas ON public.cfevent_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__facil_meas_cffacil_meas ON public.cffacil_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__fund_meas_cffund_meas ON public.cffund_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__geobbox_meas_cfgeobbox_meas ON public.cfgeobbox_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__indic_meas_cfindic_meas ON public.cfindic_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__meas_class_cfmeas_class ON public.cfmeas_class USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__meas_meas1_cfmeas_meas ON public.cfmeas_meas USING btree (cfmeasd1);
CREATE INDEX ix_cfmeas__meas_meas2_cfmeas_meas ON public.cfmeas_meas USING btree (cfmeasid2);
CREATE INDEX ix_cfmeas__measdescr_cfmeasdescr ON public.cfmeasdescr USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__measkeyw_cfmeaskeyw ON public.cfmeaskeyw USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__measname_cfmeasname ON public.cfmeasname USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__medium_meas_cfmedium_meas ON public.cfmedium_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__orgunit_meas_cforgunit_meas ON public.cforgunit_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__pers_meas_cfpers_meas ON public.cfpers_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__proj_meas_cfproj_meas ON public.cfproj_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__respat_meas_cfrespat_meas ON public.cfrespat_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__resprod_meas_cfresprod_meas ON public.cfresprod_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__respubl_meas_cfrespubl_meas ON public.cfrespubl_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmeas__srv_meas_cfsrv_meas ON public.cfsrv_meas USING btree (cfmeasid);
CREATE INDEX ix_cfmedium__cfrespat_medium_cfrespat_medium ON public.cfrespat_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__cite_medium_cfcite_medium ON public.cfcite_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__equip_medium_cfequip_medium ON public.cfequip_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__event_medium_cfevent_medium ON public.cfevent_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__facil_medium_cffacil_medium ON public.cffacil_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__fund_medium_cfmedium_fund ON public.cfmedium_fund USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__medium_class_cfmedium_class ON public.cfmedium_class USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__medium_indic_cfmedium_indic ON public.cfmedium_indic USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__medium_meas_cfmedium_meas ON public.cfmedium_meas USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__medium_medium1_cfmedium_medium ON public.cfmedium_medium USING btree (cfmediumid1);
CREATE INDEX ix_cfmedium__medium_medium2_cfmedium_medium ON public.cfmedium_medium USING btree (cfmediumid2);
CREATE INDEX ix_cfmedium__mediumdescr_cfmediumdescr ON public.cfmediumdescr USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__mediumkeyw_cfmediumkeyw ON public.cfmediumkeyw USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__mediumtitle_cfmediumtitle ON public.cfmediumtitle USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__orgunit_medium_cforgunit_medium ON public.cforgunit_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__pers_medium_cfpers_medium ON public.cfpers_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__proj_medium_cfproj_medium ON public.cfproj_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__resprod_medium_cfresprod_medium ON public.cfresprod_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__respubl_medium_cfrespubl_medium ON public.cfrespubl_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmedium__srv_medium_cfsrv_medium ON public.cfsrv_medium USING btree (cfmediumid);
CREATE INDEX ix_cfmetrics__cfmetricsdescr_cfmetricsdescr ON public.cfmetricsdescr USING btree (cfmetricsid);
CREATE INDEX ix_cfmetrics__metrics_class_cfmetrics_class ON public.cfmetrics_class USING btree (cfmetricsid);
CREATE INDEX ix_cfmetrics__metricskeyw_cfmetricskeyw ON public.cfmetricskeyw USING btree (cfmetricsid);
CREATE INDEX ix_cfmetrics__metricsname_cfmetricsname ON public.cfmetricsname USING btree (cfmetricsid);
CREATE INDEX ix_cfmetrics__respubl_metrics_cfrespubl_metrics ON public.cfrespubl_metrics USING btree (cfmetricsid);
CREATE INDEX ix_cforgunit__orgunit_class_cforgunit_class ON public.cforgunit_class USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_dc_cforgunit_dc ON public.cforgunit_dc USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_eaddr_cforgunit_eaddr ON public.cforgunit_eaddr USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_equip_cforgunit_equip ON public.cforgunit_equip USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_event_cforgunit_event ON public.cforgunit_event USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_exskills_cforgunit_expskills ON public.cforgunit_expskills USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_facil_cforgunit_facil ON public.cforgunit_facil USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_fund_cforgunit_fund ON public.cforgunit_fund USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_indic_cforgunit_indic ON public.cforgunit_indic USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_meas_cforgunit_meas ON public.cforgunit_meas USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_medium_cforgunit_medium ON public.cforgunit_medium USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_orgunit1_cforgunit_orgunit ON public.cforgunit_orgunit USING btree (cforgunitid2);
CREATE INDEX ix_cforgunit__orgunit_orgunit2_cforgunit_orgunit ON public.cforgunit_orgunit USING btree (cforgunitid1);
CREATE INDEX ix_cforgunit__orgunit_paddr_cforgunit_paddr ON public.cforgunit_paddr USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_prize_cforgunit_prize ON public.cforgunit_prize USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_respat_cforgunit_respat ON public.cforgunit_respat USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_resprod_cforgunit_resprod ON public.cforgunit_resprod USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_respubl_cforgunit_respubl ON public.cforgunit_respubl USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunit_srv_cforgunit_srv ON public.cforgunit_srv USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunitkeyw_cforgunitkeyw ON public.cforgunitkeyw USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunitname_cforgunitname ON public.cforgunitname USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__orgunitresact_cforgunitresact ON public.cforgunitresact USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__pers_orgunit_cfpers_orgunit ON public.cfpers_orgunit USING btree (cforgunitid);
CREATE INDEX ix_cforgunit__proj_orgunit_cfproj_orgunit ON public.cfproj_orgunit USING btree (cforgunitid);
CREATE INDEX ix_cfpaddr__eaddr_cfeaddr ON public.cfeaddr USING btree (cfpaddrid);
CREATE INDEX ix_cfpaddr__equip_paddr_cfequip_paddr ON public.cfequip_paddr USING btree (cfpaddrid);
CREATE INDEX ix_cfpaddr__facil_paddr_cffacil_paddr ON public.cffacil_paddr USING btree (cfpaddrid);
CREATE INDEX ix_cfpaddr__orgunit_paddr_cforgunit_paddr ON public.cforgunit_paddr USING btree (cfpaddrid);
CREATE INDEX ix_cfpaddr__padd__geobbox_cfpaddr_geobbox ON public.cfpaddr_geobbox USING btree (cfpaddrid);
CREATE INDEX ix_cfpaddr__paddr_class_cfpaddr_class ON public.cfpaddr_class USING btree (cfpaddrid);
CREATE INDEX ix_cfpaddr__pers__paddr_cfpers_paddr ON public.cfpers_paddr USING btree (cfpaddrid);
CREATE INDEX ix_cfpaddr__srv_paddr_cfsrv_paddr ON public.cfsrv_paddr USING btree (cfpaddrid);
CREATE INDEX ix_cfpers__pers_class_cfpers_class ON public.cfpers_class USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_country_cfpers_country ON public.cfpers_country USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_cv_cfpers_cv ON public.cfpers_cv USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_dc_cfpers_dc ON public.cfpers_dc USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_eaddr_cfpers_eaddr ON public.cfpers_eaddr USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_equip_cfpers_equip ON public.cfpers_equip USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_event_cfpers_event ON public.cfpers_event USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_exskills_cfpers_expskills ON public.cfpers_expskills USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_facil_cfpers_facil ON public.cfpers_facil USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_fund_cfpers_fund ON public.cfpers_fund USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_indic_cfpers_indic ON public.cfpers_indic USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_lang_cfpers_lang ON public.cfpers_lang USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_meas_cfpers_meas ON public.cfpers_meas USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_medium_cfpers_medium ON public.cfpers_medium USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_orgunit_cfpers_orgunit ON public.cfpers_orgunit USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_paddr_cfpers_paddr ON public.cfpers_paddr USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_pers1_cfpers_pers ON public.cfpers_pers USING btree (cfpersid2);
CREATE INDEX ix_cfpers__pers_pers2_cfpers_pers ON public.cfpers_pers USING btree (cfpersid1);
CREATE INDEX ix_cfpers__pers_prize_cfpers_prize ON public.cfpers_prize USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_qual_cfpers_qual ON public.cfpers_qual USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_respat_cfpers_respat ON public.cfpers_respat USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_resprod_cfpers_resprod ON public.cfpers_resprod USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_respubl_cfpers_respubl ON public.cfpers_respubl USING btree (cfpersid);
CREATE INDEX ix_cfpers__pers_srv_cfpers_srv ON public.cfpers_srv USING btree (cfpersid);
CREATE INDEX ix_cfpers__perskeyw_cfperskeyw ON public.cfperskeyw USING btree (cfpersid);
CREATE INDEX ix_cfpers__persname_pers_cfpersname_pers ON public.cfpersname_pers USING btree (cfpersid);
CREATE INDEX ix_cfpers__persresint_cfpersresint ON public.cfpersresint USING btree (cfpersid);
CREATE INDEX ix_cfpers__proj_pers_cfproj_pers ON public.cfproj_pers USING btree (cfpersid);
CREATE INDEX ix_cfpersname__persname_pers_cfpersname_pers ON public.cfpersname_pers USING btree (cfpersnameid);
CREATE INDEX ix_cfprize__orgunit_prize_cforgunit_prize ON public.cforgunit_prize USING btree (cfprizeid);
CREATE INDEX ix_cfprize__pers_prize_cfpers_prize ON public.cfpers_prize USING btree (cfprizeid);
CREATE INDEX ix_cfprize__prize_class_cfprize_class ON public.cfprize_class USING btree (cfprizeid);
CREATE INDEX ix_cfprize__prizedescr_cfprizedescr ON public.cfprizedescr USING btree (cfprizeid);
CREATE INDEX ix_cfprize__prizekeyw_cfprizekeyw ON public.cfprizekeyw USING btree (cfprizeid);
CREATE INDEX ix_cfprize__prizename_cfprizename ON public.cfprizename USING btree (cfprizeid);
CREATE INDEX ix_cfprize__proj_prize_cfproj_prize ON public.cfproj_prize USING btree (cfprizeid);
CREATE INDEX ix_cfproj__proj_class_cfproj_class ON public.cfproj_class USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_dc_cfproj_dc ON public.cfproj_dc USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_equip_cfproj_equip ON public.cfproj_equip USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_event_cfproj_event ON public.cfproj_event USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_facil_cfproj_facil ON public.cfproj_facil USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_fund_cfproj_fund ON public.cfproj_fund USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_indic_cfproj_indic ON public.cfproj_indic USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_meas_cfproj_meas ON public.cfproj_meas USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_medium_cfproj_medium ON public.cfproj_medium USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_orgunit_cfproj_orgunit ON public.cfproj_orgunit USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_pers_cfproj_pers ON public.cfproj_pers USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_prize_cfproj_prize ON public.cfproj_prize USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_proj1_cfproj_proj ON public.cfproj_proj USING btree (cfprojid2);
CREATE INDEX ix_cfproj__proj_proj2_cfproj_proj ON public.cfproj_proj USING btree (cfprojid1);
CREATE INDEX ix_cfproj__proj_respat_cfproj_respat ON public.cfproj_respat USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_resprod_cfproj_resprod ON public.cfproj_resprod USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_respubl_cfproj_respubl ON public.cfproj_respubl USING btree (cfprojid);
CREATE INDEX ix_cfproj__proj_srv_cfproj_srv ON public.cfproj_srv USING btree (cfprojid);
CREATE INDEX ix_cfproj__projabstr_cfprojabstr ON public.cfprojabstr USING btree (cfprojid);
CREATE INDEX ix_cfproj__projkeyw_cfprojkeyw ON public.cfprojkeyw USING btree (cfprojid);
CREATE INDEX ix_cfproj__projtitle_cfprojtitle ON public.cfprojtitle USING btree (cfprojid);
CREATE INDEX ix_cfqual__pers_qual_cfpers_qual ON public.cfpers_qual USING btree (cfqualid);
CREATE INDEX ix_cfqual__qual_class_cfqual_class ON public.cfqual_class USING btree (cfqualid);
CREATE INDEX ix_cfqual__qualdescr_cfqualdescr ON public.cfqualdescr USING btree (cfqualid);
CREATE INDEX ix_cfqual__qualkeyw_cfqualkeyw ON public.cfqualkeyw USING btree (cfqualid);
CREATE INDEX ix_cfqual__qualtitle_cfqualtitle ON public.cfqualtitle USING btree (cfqualid);
CREATE INDEX ix_cfrespat__orgunit_respat_cforgunit_respat ON public.cforgunit_respat USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__pers_respat_cfpers_respat ON public.cfpers_respat USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__proj_respat_cfproj_respat ON public.cfproj_respat USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respat_class_cfrespat_class ON public.cfrespat_class USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respat_equip_cfrespat_equip ON public.cfrespat_equip USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respat_facil_cfrespat_facil ON public.cfrespat_facil USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respat_fund_cfrespat_fund ON public.cfrespat_fund USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respat_indic_cfrespat_indic ON public.cfrespat_indic USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respat_meas_cfrespat_meas ON public.cfrespat_meas USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respat_medium_cfrespat_medium ON public.cfrespat_medium USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respat_respat1_cfrespat_respat ON public.cfrespat_respat USING btree (cfrespatid1);
CREATE INDEX ix_cfrespat__respat_respat2_cfrespat_respat ON public.cfrespat_respat USING btree (cfrespatid2);
CREATE INDEX ix_cfrespat__respat_srv_cfrespat_srv ON public.cfrespat_srv USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respatabstr_cfrespatabstr ON public.cfrespatabstr USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respatkeyw_cfrespatkeyw ON public.cfrespatkeyw USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respattitle_cfrespattitle ON public.cfrespattitle USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respatversinfo_cfrespatversinfo ON public.cfrespatversinfo USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__resprod_respat_cfresprod_respat ON public.cfresprod_respat USING btree (cfrespatid);
CREATE INDEX ix_cfrespat__respubl_respat_cfrespubl_respat ON public.cfrespubl_respat USING btree (cfrespatid);
CREATE INDEX ix_cfresprod__orgunit_resprod_cforgunit_resprod ON public.cforgunit_resprod USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__pers_resprod_cfpers_resprod ON public.cfpers_resprod USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__proj_resprod_cfproj_resprod ON public.cfproj_resprod USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprod_class_cfresprod_class ON public.cfresprod_class USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprod_equip_cfresprod_equip ON public.cfresprod_equip USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprod_facil_cfresprod_facil ON public.cfresprod_facil USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprod_fund_cfresprod_fund ON public.cfresprod_fund USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprod_indic_cfresprod_indic ON public.cfresprod_indic USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprod_meas_cfresprod_meas ON public.cfresprod_meas USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprod_medium_cfresprod_medium ON public.cfresprod_medium USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprod_respat_cfresprod_respat ON public.cfresprod_respat USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprod_resprod1_cfresprod_resprod ON public.cfresprod_resprod USING btree (cfresprodid2);
CREATE INDEX ix_cfresprod__resprod_resprod2_cfresprod_resprod ON public.cfresprod_resprod USING btree (cfresprodid1);
CREATE INDEX ix_cfresprod__resprod_srv_cfresprod_srv ON public.cfresprod_srv USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprodaltname_cfresprodaltname ON public.cfresprodaltname USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resproddescr_cfresproddescr ON public.cfresproddescr USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprodgeobbox_cfresprod_geobbox ON public.cfresprod_geobbox USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprodkeyw_cfresprodkeyw ON public.cfresprodkeyw USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprodname_cfresprodname ON public.cfresprodname USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__resprodversinfo_cfresprodversinfo ON public.cfresprodversinfo USING btree (cfresprodid);
CREATE INDEX ix_cfresprod__respubl_resprod_cfrespubl_resprod ON public.cfrespubl_resprod USING btree (cfresprodid);
CREATE INDEX ix_cfrespubl__biblnote_cfrespublbiblnote ON public.cfrespublbiblnote USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__medium_cfrespubl_medium ON public.cfrespubl_medium USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__orgunit_respubl_cforgunit_respubl ON public.cforgunit_respubl USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__pers_respubl_cfpers_respubl ON public.cfpers_respubl USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__proj_respubl_cfproj_respubl ON public.cfproj_respubl USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_cite_cfrespubl_cite ON public.cfrespubl_cite USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_class_cfrespubl_class ON public.cfrespubl_class USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_dc_cfrespubl_dc ON public.cfrespubl_dc USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_equip_cfrespubl_equip ON public.cfrespubl_equip USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_event_cfrespubl_event ON public.cfrespubl_event USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_facil_cfrespubl_facil ON public.cfrespubl_facil USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_fund_cfrespubl_fund ON public.cfrespubl_fund USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_indic_cfrespubl_indic ON public.cfrespubl_indic USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_meas_cfrespubl_meas ON public.cfrespubl_meas USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_metrics_cfrespubl_metrics ON public.cfrespubl_metrics USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_respat_cfrespubl_respat ON public.cfrespubl_respat USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_resprod_cfrespubl_resprod ON public.cfrespubl_resprod USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubl_respubl1_cfrespubl_respubl ON public.cfrespubl_respubl USING btree (cfrespublid2);
CREATE INDEX ix_cfrespubl__respubl_respubl2_cfrespubl_respubl ON public.cfrespubl_respubl USING btree (cfrespublid1);
CREATE INDEX ix_cfrespubl__respubl_srv_cfrespubl_srv ON public.cfrespubl_srv USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respublabstr_cfrespublabstr ON public.cfrespublabstr USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respublkeyw_cfrespublkeyw ON public.cfrespublkeyw USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respublsubtitle_cfrespublsubtitle ON public.cfrespublsubtitle USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respubltitle_cfrespubltitle ON public.cfrespubltitle USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__respublversinfo_cfrespublversinfo ON public.cfrespublversinfo USING btree (cfrespublid);
CREATE INDEX ix_cfrespubl__rpubnameabbrev_cfrespublnameabbrev ON public.cfrespublnameabbrev USING btree (cfrespublid);
CREATE INDEX ix_cfsrv__equip_srv_cfequip_srv ON public.cfequip_srv USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__facil_srv_cffacil_srv ON public.cffacil_srv USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__fedid_cffedid_srv ON public.cffedid_srv USING btree (cffedidid);
CREATE INDEX ix_cfsrv__orgunit_srv_cforgunit_srv ON public.cforgunit_srv USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__pers_srv_cfpers_srv ON public.cfpers_srv USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__proj_srv_cfproj_srv ON public.cfproj_srv USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__respat_srv_cfrespat_srv ON public.cfrespat_srv USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__resprod_srv_cfresprod_srv ON public.cfresprod_srv USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__respubl_srv_cfrespubl_srv ON public.cfrespubl_srv USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srv_class_cfsrv_class ON public.cfsrv_class USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srv_event_cfsrv_event ON public.cfsrv_event USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srv_fedid_cffedid_srv ON public.cffedid_srv USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srv_fund_cfsrv_fund ON public.cfsrv_fund USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srv_indic_cfsrv_indic ON public.cfsrv_indic USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srv_meas_cfsrv_meas ON public.cfsrv_meas USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srv_medium_cfsrv_medium ON public.cfsrv_medium USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srv_paddr_cfsrv_paddr ON public.cfsrv_paddr USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srv_srv1_cfsrv_srv ON public.cfsrv_srv USING btree (cfsrvid1);
CREATE INDEX ix_cfsrv__srv_srv2_cfsrv_srv ON public.cfsrv_srv USING btree (cfsrvid2);
CREATE INDEX ix_cfsrv__srvdescr_cfsrvdescr ON public.cfsrvdescr USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srvkeyw_cfsrvkeyw ON public.cfsrvkeyw USING btree (cfsrvid);
CREATE INDEX ix_cfsrv__srvname_cfsrvname ON public.cfsrvname USING btree (cfsrvid);
ALTER TABLE ONLY public.cfcite_class
    ADD CONSTRAINT cfcite__cite_class FOREIGN KEY (cfciteid) REFERENCES public.cfcite(cfciteid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcite_medium
    ADD CONSTRAINT cfcite__cite_medium FOREIGN KEY (cfciteid) REFERENCES public.cfcite(cfciteid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcitedescr
    ADD CONSTRAINT cfcite__citedescr FOREIGN KEY (cfciteid) REFERENCES public.cfcite(cfciteid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcitetitle
    ADD CONSTRAINT cfcite__citename FOREIGN KEY (cfciteid) REFERENCES public.cfcite(cfciteid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_cite
    ADD CONSTRAINT cfcite__respubl_cite FOREIGN KEY (cfciteid) REFERENCES public.cfcite(cfciteid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobbox_geobbox
    ADD CONSTRAINT cfclass__cfgeobbox_geobbox FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_resprod
    ADD CONSTRAINT cfclass__cfresprod_resprod FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcite_class
    ADD CONSTRAINT cfclass__cite_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcite_medium
    ADD CONSTRAINT cfclass__cite_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclass_class
    ADD CONSTRAINT cfclass__class_class FOREIGN KEY (cfclassid2, cfclassschemeid2) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclass_class
    ADD CONSTRAINT cfclass__class_class1 FOREIGN KEY (cfclassid1, cfclassschemeid1) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclass_class
    ADD CONSTRAINT cfclass__class_class2 FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassdef
    ADD CONSTRAINT cfclass__classdef FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassdescr
    ADD CONSTRAINT cfclass__classdescr FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassex
    ADD CONSTRAINT cfclass__classex FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassterm
    ADD CONSTRAINT cfclass__classterm FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcountry_class
    ADD CONSTRAINT cfclass__country_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassscheme_classscheme
    ADD CONSTRAINT cfclass__cscheme_cscheme FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcurrency_class
    ADD CONSTRAINT cfclass__currency_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcv_class
    ADD CONSTRAINT cfclass__cv_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfeaddr_class
    ADD CONSTRAINT cfclass__eaddr_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_indic
    ADD CONSTRAINT cfclass__equip__indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_class
    ADD CONSTRAINT cfclass__equip_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_equip
    ADD CONSTRAINT cfclass__equip_equip FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_event
    ADD CONSTRAINT cfclass__equip_event FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_fund
    ADD CONSTRAINT cfclass__equip_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_meas
    ADD CONSTRAINT cfclass__equip_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_medium
    ADD CONSTRAINT cfclass__equip_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_paddr
    ADD CONSTRAINT cfclass__equip_paddr FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_srv
    ADD CONSTRAINT cfclass__equip_srv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_class
    ADD CONSTRAINT cfclass__event_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_event
    ADD CONSTRAINT cfclass__event_event FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_fund
    ADD CONSTRAINT cfclass__event_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_indic
    ADD CONSTRAINT cfclass__event_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_meas
    ADD CONSTRAINT cfclass__event_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_medium
    ADD CONSTRAINT cfclass__event_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfexpskills_class
    ADD CONSTRAINT cfclass__exskills_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_class
    ADD CONSTRAINT cfclass__facil_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_equip
    ADD CONSTRAINT cfclass__facil_equip FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_event
    ADD CONSTRAINT cfclass__facil_event FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_facil
    ADD CONSTRAINT cfclass__facil_facil FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_fund
    ADD CONSTRAINT cfclass__facil_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_indic
    ADD CONSTRAINT cfclass__facil_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_meas
    ADD CONSTRAINT cfclass__facil_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_medium
    ADD CONSTRAINT cfclass__facil_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_paddr
    ADD CONSTRAINT cfclass__facil_paddr FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_srv
    ADD CONSTRAINT cfclass__facil_srv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffedid
    ADD CONSTRAINT cfclass__fedid FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid);
ALTER TABLE ONLY public.cffedid_class
    ADD CONSTRAINT cfclass__fedid_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid);
ALTER TABLE ONLY public.cffund_class
    ADD CONSTRAINT cfclass__fund_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_fund
    ADD CONSTRAINT cfclass__fund_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_indic
    ADD CONSTRAINT cfclass__fund_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_meas
    ADD CONSTRAINT cfclass__fund_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_fund
    ADD CONSTRAINT cfclass__fund_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobbox_class
    ADD CONSTRAINT cfclass__geobbox_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobbox_meas
    ADD CONSTRAINT cfclass__geobbox_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid);
ALTER TABLE ONLY public.cfindic_class
    ADD CONSTRAINT cfclass__indicate_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindic_indic
    ADD CONSTRAINT cfclass__indicate_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindic_meas
    ADD CONSTRAINT cfclass__indicate_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cflang_class
    ADD CONSTRAINT cfclass__lang_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeas_class
    ADD CONSTRAINT cfclass__measure_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeas_meas
    ADD CONSTRAINT cfclass__measure_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_class
    ADD CONSTRAINT cfclass__medium_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_indic
    ADD CONSTRAINT cfclass__medium_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_meas
    ADD CONSTRAINT cfclass__medium_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_medium
    ADD CONSTRAINT cfclass__medium_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmetrics_class
    ADD CONSTRAINT cfclass__metrics_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_class
    ADD CONSTRAINT cfclass__orgunit_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_dc
    ADD CONSTRAINT cfclass__orgunit_dc FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_eaddr
    ADD CONSTRAINT cfclass__orgunit_eaddrs FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_equip
    ADD CONSTRAINT cfclass__orgunit_equip FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_event
    ADD CONSTRAINT cfclass__orgunit_event FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_expskills
    ADD CONSTRAINT cfclass__orgunit_exskills FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_facil
    ADD CONSTRAINT cfclass__orgunit_facil FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_fund
    ADD CONSTRAINT cfclass__orgunit_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_indic
    ADD CONSTRAINT cfclass__orgunit_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_meas
    ADD CONSTRAINT cfclass__orgunit_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_medium
    ADD CONSTRAINT cfclass__orgunit_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_orgunit
    ADD CONSTRAINT cfclass__orgunit_orgunit FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_paddr
    ADD CONSTRAINT cfclass__orgunit_paddr FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_prize
    ADD CONSTRAINT cfclass__orgunit_prize FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_respat
    ADD CONSTRAINT cfclass__orgunit_respat FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_resprod
    ADD CONSTRAINT cfclass__orgunit_resprod FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_respubl
    ADD CONSTRAINT cfclass__orgunit_respubl FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_srv
    ADD CONSTRAINT cfclass__orgunit_srv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpaddr_geobbox
    ADD CONSTRAINT cfclass__paddr__geobbox FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpaddr_class
    ADD CONSTRAINT cfclass__paddr_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_class
    ADD CONSTRAINT cfclass__pers_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_country
    ADD CONSTRAINT cfclass__pers_country FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_cv
    ADD CONSTRAINT cfclass__pers_cv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_dc
    ADD CONSTRAINT cfclass__pers_dc FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_eaddr
    ADD CONSTRAINT cfclass__pers_eaddr FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_equip
    ADD CONSTRAINT cfclass__pers_equip FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_event
    ADD CONSTRAINT cfclass__pers_event FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_expskills
    ADD CONSTRAINT cfclass__pers_exskills FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_facil
    ADD CONSTRAINT cfclass__pers_facil FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_fund
    ADD CONSTRAINT cfclass__pers_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_indic
    ADD CONSTRAINT cfclass__pers_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_lang
    ADD CONSTRAINT cfclass__pers_lang FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_meas
    ADD CONSTRAINT cfclass__pers_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_medium
    ADD CONSTRAINT cfclass__pers_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_orgunit
    ADD CONSTRAINT cfclass__pers_orgunit FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_paddr
    ADD CONSTRAINT cfclass__pers_paddr FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_pers
    ADD CONSTRAINT cfclass__pers_pers FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_prize
    ADD CONSTRAINT cfclass__pers_prize FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_qual
    ADD CONSTRAINT cfclass__pers_qual FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_respat
    ADD CONSTRAINT cfclass__pers_respat FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_resprod
    ADD CONSTRAINT cfclass__pers_resprod FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_respubl
    ADD CONSTRAINT cfclass__pers_respubl FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_srv
    ADD CONSTRAINT cfclass__pers_srv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpersname_pers
    ADD CONSTRAINT cfclass__persname_pers FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprize_class
    ADD CONSTRAINT cfclass__prize_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_pers
    ADD CONSTRAINT cfclass__proj__pers FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_class
    ADD CONSTRAINT cfclass__proj_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_dc
    ADD CONSTRAINT cfclass__proj_dc FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_equip
    ADD CONSTRAINT cfclass__proj_equip FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_event
    ADD CONSTRAINT cfclass__proj_event FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_facil
    ADD CONSTRAINT cfclass__proj_facil FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_fund
    ADD CONSTRAINT cfclass__proj_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_indic
    ADD CONSTRAINT cfclass__proj_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_meas
    ADD CONSTRAINT cfclass__proj_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_medium
    ADD CONSTRAINT cfclass__proj_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_orgunit
    ADD CONSTRAINT cfclass__proj_orgunit FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_prize
    ADD CONSTRAINT cfclass__proj_prize FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_proj
    ADD CONSTRAINT cfclass__proj_proj FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_respat
    ADD CONSTRAINT cfclass__proj_respat FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_resprod
    ADD CONSTRAINT cfclass__proj_resprod FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_respubl
    ADD CONSTRAINT cfclass__proj_respubl FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_srv
    ADD CONSTRAINT cfclass__proj_srv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfqual_class
    ADD CONSTRAINT cfclass__qual_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_class
    ADD CONSTRAINT cfclass__respat_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_equip
    ADD CONSTRAINT cfclass__respat_equip FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_facil
    ADD CONSTRAINT cfclass__respat_facil FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_fund
    ADD CONSTRAINT cfclass__respat_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_indic
    ADD CONSTRAINT cfclass__respat_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_meas
    ADD CONSTRAINT cfclass__respat_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_medium
    ADD CONSTRAINT cfclass__respat_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_respat
    ADD CONSTRAINT cfclass__respat_respat FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_srv
    ADD CONSTRAINT cfclass__respat_srv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_class
    ADD CONSTRAINT cfclass__resprod_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_equip
    ADD CONSTRAINT cfclass__resprod_equip FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_facil
    ADD CONSTRAINT cfclass__resprod_facil FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_fund
    ADD CONSTRAINT cfclass__resprod_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_geobbox
    ADD CONSTRAINT cfclass__resprod_geobbox FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid);
ALTER TABLE ONLY public.cfresprod_indic
    ADD CONSTRAINT cfclass__resprod_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_meas
    ADD CONSTRAINT cfclass__resprod_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_medium
    ADD CONSTRAINT cfclass__resprod_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_respat
    ADD CONSTRAINT cfclass__resprod_respat FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid);
ALTER TABLE ONLY public.cfresprod_srv
    ADD CONSTRAINT cfclass__resprod_srv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_cite
    ADD CONSTRAINT cfclass__respubl_cite FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_class
    ADD CONSTRAINT cfclass__respubl_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_dc
    ADD CONSTRAINT cfclass__respubl_dc FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_equip
    ADD CONSTRAINT cfclass__respubl_equip FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_event
    ADD CONSTRAINT cfclass__respubl_event FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_facil
    ADD CONSTRAINT cfclass__respubl_facil FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_fund
    ADD CONSTRAINT cfclass__respubl_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_indic
    ADD CONSTRAINT cfclass__respubl_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_meas
    ADD CONSTRAINT cfclass__respubl_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_medium
    ADD CONSTRAINT cfclass__respubl_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_metrics
    ADD CONSTRAINT cfclass__respubl_metrics FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_respat
    ADD CONSTRAINT cfclass__respubl_respat FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_resprod
    ADD CONSTRAINT cfclass__respubl_resprod FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_respubl
    ADD CONSTRAINT cfclass__respubl_respubl FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_srv
    ADD CONSTRAINT cfclass__respubl_srv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_class
    ADD CONSTRAINT cfclass__srv_class FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_event
    ADD CONSTRAINT cfclass__srv_event FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffedid_srv
    ADD CONSTRAINT cfclass__srv_fedid FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid);
ALTER TABLE ONLY public.cfsrv_fund
    ADD CONSTRAINT cfclass__srv_fund FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_indic
    ADD CONSTRAINT cfclass__srv_indic FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_meas
    ADD CONSTRAINT cfclass__srv_meas FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_medium
    ADD CONSTRAINT cfclass__srv_medium FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_paddr
    ADD CONSTRAINT cfclass__srv_paddr FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_srv
    ADD CONSTRAINT cfclass__srv_srv FOREIGN KEY (cfclassid, cfclassschemeid) REFERENCES public.cfclass(cfclassid, cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcountry_class
    ADD CONSTRAINT cfcountry__country_class FOREIGN KEY (cfcountrycode) REFERENCES public.cfcountry(cfcountrycode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcountryname
    ADD CONSTRAINT cfcountry__countryname FOREIGN KEY (cfcountrycode) REFERENCES public.cfcountry(cfcountrycode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent
    ADD CONSTRAINT cfcountry_event FOREIGN KEY (cfcountrycode) REFERENCES public.cfcountry(cfcountrycode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpaddr
    ADD CONSTRAINT cfcountry_paddr FOREIGN KEY (cfcountrycode) REFERENCES public.cfcountry(cfcountrycode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat
    ADD CONSTRAINT cfcountry_respat FOREIGN KEY (cfcountrycode) REFERENCES public.cfcountry(cfcountrycode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_country
    ADD CONSTRAINT cfcounty__pers_country FOREIGN KEY (cfcountrycode) REFERENCES public.cfcountry(cfcountrycode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclass
    ADD CONSTRAINT cfcscheme__class FOREIGN KEY (cfclassschemeid) REFERENCES public.cfclassscheme(cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassscheme_classscheme
    ADD CONSTRAINT cfcscheme__cscheme_cscheme1 FOREIGN KEY (cfclassschemeid2) REFERENCES public.cfclassscheme(cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassscheme_classscheme
    ADD CONSTRAINT cfcscheme__cscheme_cscheme2 FOREIGN KEY (cfclassschemeid1) REFERENCES public.cfclassscheme(cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassschemedescr
    ADD CONSTRAINT cfcscheme__cschemedescr FOREIGN KEY (cfclassschemeid) REFERENCES public.cfclassscheme(cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassschemename
    ADD CONSTRAINT cfcscheme__cschemename FOREIGN KEY (cfclassschemeid) REFERENCES public.cfclassscheme(cfclassschemeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcurrency_class
    ADD CONSTRAINT cfcurrency__currency_class FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcurrencyentname
    ADD CONSTRAINT cfcurrency__currencyentname FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcurrencyname
    ADD CONSTRAINT cfcurrency__currencyname FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_fund
    ADD CONSTRAINT cfcurrency__equip_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_fund
    ADD CONSTRAINT cfcurrency__event_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_fund
    ADD CONSTRAINT cfcurrency__facil_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund
    ADD CONSTRAINT cfcurrency__fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_indic
    ADD CONSTRAINT cfcurrency__fund_indic FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_meas
    ADD CONSTRAINT cfcurrency__fund_meas FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_fund
    ADD CONSTRAINT cfcurrency__medium_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_expskills
    ADD CONSTRAINT cfcurrency__orgu_exskills FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_equip
    ADD CONSTRAINT cfcurrency__orgunit_equip FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_facil
    ADD CONSTRAINT cfcurrency__orgunit_facil FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_fund
    ADD CONSTRAINT cfcurrency__orgunit_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_resprod
    ADD CONSTRAINT cfcurrency__orgunit_resprod FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_srv
    ADD CONSTRAINT cfcurrency__orgunit_srv FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_equip
    ADD CONSTRAINT cfcurrency__pers_equip FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_expskills
    ADD CONSTRAINT cfcurrency__pers_exskills FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_facil
    ADD CONSTRAINT cfcurrency__pers_facil FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_fund
    ADD CONSTRAINT cfcurrency__pers_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_resprod
    ADD CONSTRAINT cfcurrency__pers_resprod FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_srv
    ADD CONSTRAINT cfcurrency__pers_srv FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_equip
    ADD CONSTRAINT cfcurrency__proj_equip FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_facil
    ADD CONSTRAINT cfcurrency__proj_facil FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_fund
    ADD CONSTRAINT cfcurrency__proj_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_srv
    ADD CONSTRAINT cfcurrency__proj_srv FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_fund
    ADD CONSTRAINT cfcurrency__respat_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_fund
    ADD CONSTRAINT cfcurrency__resprod_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_fund
    ADD CONSTRAINT cfcurrency__respubl_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_fund
    ADD CONSTRAINT cfcurrency__srv_fund FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit
    ADD CONSTRAINT cfcurrency_orgunit FOREIGN KEY (cfcurrcode) REFERENCES public.cfcurrency(cfcurrcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcv_class
    ADD CONSTRAINT cfcv__cv_class FOREIGN KEY (cfcvid) REFERENCES public.cfcv(cfcvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_cv
    ADD CONSTRAINT cfcv__pers_cv FOREIGN KEY (cfcvid) REFERENCES public.cfcv(cfcvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcaudience
    ADD CONSTRAINT cfdc__dcaudience FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdccontributor
    ADD CONSTRAINT cfdc__dccontributor FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdccreator
    ADD CONSTRAINT cfdc__dccorecreator FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcdate
    ADD CONSTRAINT cfdc__dccoredate FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcformat
    ADD CONSTRAINT cfdc__dccoreformat FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcpublisher
    ADD CONSTRAINT cfdc__dccorepublisher FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcrelation
    ADD CONSTRAINT cfdc__dccorerelation FOREIGN KEY (cfdcid2, cfdcscheme2) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdccoverage
    ADD CONSTRAINT cfdc__dccoverage FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdccoveragespatial
    ADD CONSTRAINT cfdc__dccoveragespatial FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdccoveragetemporal
    ADD CONSTRAINT cfdc__dccoveragetemporal FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcdescription
    ADD CONSTRAINT cfdc__dcdescription FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdclanguage
    ADD CONSTRAINT cfdc__dclanguage FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcprovenance
    ADD CONSTRAINT cfdc__dcprovenance FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcrelation
    ADD CONSTRAINT cfdc__dcrelation FOREIGN KEY (cfdcid1, cfdcscheme1) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcresourceidentifier
    ADD CONSTRAINT cfdc__dcresourceidentifier FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcresourcetype
    ADD CONSTRAINT cfdc__dcresourcetype FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcrightsholder
    ADD CONSTRAINT cfdc__dcrightsholder FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcrightsmm
    ADD CONSTRAINT cfdc__dcrightsmm FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcrightsmmaccessrights
    ADD CONSTRAINT cfdc__dcrightsmmaccrights FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcrightsmmlicense
    ADD CONSTRAINT cfdc__dcrightsmmlicense FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcsource
    ADD CONSTRAINT cfdc__dcsource FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdcsubject
    ADD CONSTRAINT cfdc__dcsubject FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfdctitle
    ADD CONSTRAINT cfdc__dctitle FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffdcrightsmmpricing
    ADD CONSTRAINT cfdc__fdcrightsmmpricing FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffdcrightsmmprivacy
    ADD CONSTRAINT cfdc__fdcrightsmmprivacy FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffdcrightsmmrights
    ADD CONSTRAINT cfdc__fdcrightsmmrights FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffdcrightsmmsecurity
    ADD CONSTRAINT cfdc__fdcrightsmmsecurity FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_dc
    ADD CONSTRAINT cfdc__orgunit_dc FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_dc
    ADD CONSTRAINT cfdc__pers_dc FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_dc
    ADD CONSTRAINT cfdc__proj_dc FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_dc
    ADD CONSTRAINT cfdc__respubl_dc FOREIGN KEY (cfdcid, cfdcscheme) REFERENCES public.cfdc(cfdcid, cfdcscheme) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfeaddr_class
    ADD CONSTRAINT cfeaddr__eaddr_class FOREIGN KEY (cfeaddrid) REFERENCES public.cfeaddr(cfeaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_eaddr
    ADD CONSTRAINT cfeaddr__orgunit_eaddr FOREIGN KEY (cfeaddrid) REFERENCES public.cfeaddr(cfeaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_eaddr
    ADD CONSTRAINT cfeaddr__pers_eaddr FOREIGN KEY (cfeaddrid) REFERENCES public.cfeaddr(cfeaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_class
    ADD CONSTRAINT cfequip__equip_class FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_equip
    ADD CONSTRAINT cfequip__equip_equip1 FOREIGN KEY (cfequipid1) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_equip
    ADD CONSTRAINT cfequip__equip_equip2 FOREIGN KEY (cfequipid2) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_event
    ADD CONSTRAINT cfequip__equip_event FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_fund
    ADD CONSTRAINT cfequip__equip_fund FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_indic
    ADD CONSTRAINT cfequip__equip_indic FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_meas
    ADD CONSTRAINT cfequip__equip_meas FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_medium
    ADD CONSTRAINT cfequip__equip_medium FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_paddr
    ADD CONSTRAINT cfequip__equip_paddr FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_srv
    ADD CONSTRAINT cfequip__equip_srv FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequipdescr
    ADD CONSTRAINT cfequip__equipdescr FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequipkeyw
    ADD CONSTRAINT cfequip__equipkeyw FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequipname
    ADD CONSTRAINT cfequip__equipname FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_equip
    ADD CONSTRAINT cfequip__facil_equip FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_equip
    ADD CONSTRAINT cfequip__orgunit_equip FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_equip
    ADD CONSTRAINT cfequip__pers_equip FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_equip
    ADD CONSTRAINT cfequip__proj_equip FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_equip
    ADD CONSTRAINT cfequip__respat_equip FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_equip
    ADD CONSTRAINT cfequip__resprod_equip FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_equip
    ADD CONSTRAINT cfequip__respubl_equip FOREIGN KEY (cfequipid) REFERENCES public.cfequip(cfequipid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_event
    ADD CONSTRAINT cfevent__equip_event FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_class
    ADD CONSTRAINT cfevent__event_class FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_event
    ADD CONSTRAINT cfevent__event_event1 FOREIGN KEY (cfeventid1) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_event
    ADD CONSTRAINT cfevent__event_event2 FOREIGN KEY (cfeventid2) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_fund
    ADD CONSTRAINT cfevent__event_fund FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_indic
    ADD CONSTRAINT cfevent__event_indic FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_meas
    ADD CONSTRAINT cfevent__event_meas FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_medium
    ADD CONSTRAINT cfevent__event_medium FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfeventdescr
    ADD CONSTRAINT cfevent__eventdescr FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfeventkeyw
    ADD CONSTRAINT cfevent__eventkeyw FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfeventname
    ADD CONSTRAINT cfevent__eventname FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_event
    ADD CONSTRAINT cfevent__facil_event FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_event
    ADD CONSTRAINT cfevent__orgunit_event FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_event
    ADD CONSTRAINT cfevent__pers_event FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_event
    ADD CONSTRAINT cfevent__proj_event FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_event
    ADD CONSTRAINT cfevent__respubl_event FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_event
    ADD CONSTRAINT cfevent__srv_event FOREIGN KEY (cfeventid) REFERENCES public.cfevent(cfeventid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfexpskills_class
    ADD CONSTRAINT cfexskills__exskills_class FOREIGN KEY (cfexpskillsid) REFERENCES public.cfexpskills(cfexpskillsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfexpskillsdescr
    ADD CONSTRAINT cfexskills__exskillsdescr FOREIGN KEY (cfexpskillsid) REFERENCES public.cfexpskills(cfexpskillsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfexpskillskeyw
    ADD CONSTRAINT cfexskills__exskillskeyw FOREIGN KEY (cfexpskillsid) REFERENCES public.cfexpskills(cfexpskillsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfexpskillsname
    ADD CONSTRAINT cfexskills__exskillsname FOREIGN KEY (cfexpskillsid) REFERENCES public.cfexpskills(cfexpskillsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_expskills
    ADD CONSTRAINT cfexskills__orgu_exskills FOREIGN KEY (cfexpskillsid) REFERENCES public.cfexpskills(cfexpskillsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_expskills
    ADD CONSTRAINT cfexskills__pers_exskills FOREIGN KEY (cfexpskillsid) REFERENCES public.cfexpskills(cfexpskillsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_class
    ADD CONSTRAINT cffacil__facil_class FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_equip
    ADD CONSTRAINT cffacil__facil_equip FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_event
    ADD CONSTRAINT cffacil__facil_event FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_facil
    ADD CONSTRAINT cffacil__facil_facil1 FOREIGN KEY (cffacilid1) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_facil
    ADD CONSTRAINT cffacil__facil_facil2 FOREIGN KEY (cffacilid2) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_fund
    ADD CONSTRAINT cffacil__facil_fund FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_indic
    ADD CONSTRAINT cffacil__facil_indic FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_meas
    ADD CONSTRAINT cffacil__facil_meas FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_medium
    ADD CONSTRAINT cffacil__facil_medium FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_paddr
    ADD CONSTRAINT cffacil__facil_paddr FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_srv
    ADD CONSTRAINT cffacil__facil_srv FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacildescr
    ADD CONSTRAINT cffacil__facildescr FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacilkeyw
    ADD CONSTRAINT cffacil__facilkeyw FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacilname
    ADD CONSTRAINT cffacil__facilname FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_facil
    ADD CONSTRAINT cffacil__orgunit_facil FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_facil
    ADD CONSTRAINT cffacil__pers_facil FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_facil
    ADD CONSTRAINT cffacil__proj_facil FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_facil
    ADD CONSTRAINT cffacil__respat_facil FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_facil
    ADD CONSTRAINT cffacil__resprod_facil FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_facil
    ADD CONSTRAINT cffacil__respubl_facil FOREIGN KEY (cffacilid) REFERENCES public.cffacil(cffacilid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffedid_class
    ADD CONSTRAINT cffedid__fedid_class FOREIGN KEY (cffedidid) REFERENCES public.cffedid(cffedidid);
ALTER TABLE ONLY public.cfequip_fund
    ADD CONSTRAINT cffund__equip_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_fund
    ADD CONSTRAINT cffund__event_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_fund
    ADD CONSTRAINT cffund__facil_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_class
    ADD CONSTRAINT cffund__fund_class FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_fund
    ADD CONSTRAINT cffund__fund_fund1 FOREIGN KEY (cffundid2) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_fund
    ADD CONSTRAINT cffund__fund_fund2 FOREIGN KEY (cffundid1) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_indic
    ADD CONSTRAINT cffund__fund_indic FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_meas
    ADD CONSTRAINT cffund__fund_meas FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_fund
    ADD CONSTRAINT cffund__fund_medium FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffunddescr
    ADD CONSTRAINT cffund__funddescr FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffundkeyw
    ADD CONSTRAINT cffund__fundkeyw FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffundname
    ADD CONSTRAINT cffund__fundname FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_fund
    ADD CONSTRAINT cffund__orgunit_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_fund
    ADD CONSTRAINT cffund__pers_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_fund
    ADD CONSTRAINT cffund__proj_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_fund
    ADD CONSTRAINT cffund__respat_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_fund
    ADD CONSTRAINT cffund__resprod_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_fund
    ADD CONSTRAINT cffund__respubl_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_fund
    ADD CONSTRAINT cffund__srv_fund FOREIGN KEY (cffundid) REFERENCES public.cffund(cffundid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobbox_class
    ADD CONSTRAINT cfgeobbox__geobbox_class FOREIGN KEY (cfgeobboxid) REFERENCES public.cfgeobbox(cfgeobboxid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobbox_geobbox
    ADD CONSTRAINT cfgeobbox__geobbox_geobbox1 FOREIGN KEY (cfgeobboxid1) REFERENCES public.cfgeobbox(cfgeobboxid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobbox_geobbox
    ADD CONSTRAINT cfgeobbox__geobbox_geobbox2 FOREIGN KEY (cfgeobboxid2) REFERENCES public.cfgeobbox(cfgeobboxid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobbox_meas
    ADD CONSTRAINT cfgeobbox__geobbox_meas FOREIGN KEY (cfgeobboxid) REFERENCES public.cfgeobbox(cfgeobboxid);
ALTER TABLE ONLY public.cfgeobboxdescr
    ADD CONSTRAINT cfgeobbox__geobboxdescr FOREIGN KEY (cfgeobboxid) REFERENCES public.cfgeobbox(cfgeobboxid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobboxkeyw
    ADD CONSTRAINT cfgeobbox__geobboxkeyw FOREIGN KEY (cfgeobboxid) REFERENCES public.cfgeobbox(cfgeobboxid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobboxname
    ADD CONSTRAINT cfgeobbox__geobboxname FOREIGN KEY (cfgeobboxid) REFERENCES public.cfgeobbox(cfgeobboxid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpaddr_geobbox
    ADD CONSTRAINT cfgeobbox__paddr__geobbox FOREIGN KEY (cfgeobboxid) REFERENCES public.cfgeobbox(cfgeobboxid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_geobbox
    ADD CONSTRAINT cfgeobbox__resprod_geobbox FOREIGN KEY (cfgeobboxid) REFERENCES public.cfgeobbox(cfgeobboxid);
ALTER TABLE ONLY public.cffund_indic
    ADD CONSTRAINT cfindic__fund_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindic_class
    ADD CONSTRAINT cfindic__indic_class FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindic_indic
    ADD CONSTRAINT cfindic__indic_indic1 FOREIGN KEY (cfindicid1) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindic_indic
    ADD CONSTRAINT cfindic__indic_indic2 FOREIGN KEY (cfindicid2) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindic_meas
    ADD CONSTRAINT cfindic__indic_meas FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindicdescr
    ADD CONSTRAINT cfindic__indicdescr FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindickeyw
    ADD CONSTRAINT cfindic__indickeyw FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindicname
    ADD CONSTRAINT cfindic__indicname FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_indic
    ADD CONSTRAINT cfindic__medium_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_indic
    ADD CONSTRAINT cfindic__orgunit_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_indic
    ADD CONSTRAINT cfindic__pers_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_indic
    ADD CONSTRAINT cfindic__proj_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_indic
    ADD CONSTRAINT cfindic__respat_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_indic
    ADD CONSTRAINT cfindic__resprod_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_indic
    ADD CONSTRAINT cfindic__respubl_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_indic
    ADD CONSTRAINT cfindic__srv_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_indic
    ADD CONSTRAINT cfindicate__equip_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_indic
    ADD CONSTRAINT cfindicate__event_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_indic
    ADD CONSTRAINT cfindicate__facil_indic FOREIGN KEY (cfindicid) REFERENCES public.cfindic(cfindicid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcitedescr
    ADD CONSTRAINT cflang__citedescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcitetitle
    ADD CONSTRAINT cflang__citename FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassdef
    ADD CONSTRAINT cflang__classdef FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassdescr
    ADD CONSTRAINT cflang__classdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassex
    ADD CONSTRAINT cflang__classex FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassterm
    ADD CONSTRAINT cflang__classterm FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcountryname
    ADD CONSTRAINT cflang__countryname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassschemedescr
    ADD CONSTRAINT cflang__cscheme FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfclassschemename
    ADD CONSTRAINT cflang__cschemename FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcurrencyentname
    ADD CONSTRAINT cflang__currencyentname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcurrencyname
    ADD CONSTRAINT cflang__currencyname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequipdescr
    ADD CONSTRAINT cflang__equipdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequipkeyw
    ADD CONSTRAINT cflang__equipkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequipname
    ADD CONSTRAINT cflang__equipname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfeventdescr
    ADD CONSTRAINT cflang__eventdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfeventkeyw
    ADD CONSTRAINT cflang__eventkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfeventname
    ADD CONSTRAINT cflang__eventname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfexpskillsdescr
    ADD CONSTRAINT cflang__exskillsdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfexpskillskeyw
    ADD CONSTRAINT cflang__exskillskeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfexpskillsname
    ADD CONSTRAINT cflang__exskillsname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacildescr
    ADD CONSTRAINT cflang__facildescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacilkeyw
    ADD CONSTRAINT cflang__facilkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacilname
    ADD CONSTRAINT cflang__facilname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffunddescr
    ADD CONSTRAINT cflang__funddescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffundkeyw
    ADD CONSTRAINT cflang__fundkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffundname
    ADD CONSTRAINT cflang__fundname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobboxname
    ADD CONSTRAINT cflang__geobbox FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobboxdescr
    ADD CONSTRAINT cflang__geobboxdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobboxkeyw
    ADD CONSTRAINT cflang__geobboxkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindicdescr
    ADD CONSTRAINT cflang__indicdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindickeyw
    ADD CONSTRAINT cflang__indickeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfindicname
    ADD CONSTRAINT cflang__indicname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cflang_class
    ADD CONSTRAINT cflang__lang_class FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cflangname
    ADD CONSTRAINT cflang__langname1 FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cflangname
    ADD CONSTRAINT cflang__langname2 FOREIGN KEY (cflangcodeoflangname) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeasdescr
    ADD CONSTRAINT cflang__measdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeaskeyw
    ADD CONSTRAINT cflang__measkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeasname
    ADD CONSTRAINT cflang__measname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmediumdescr
    ADD CONSTRAINT cflang__mediumdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmediumkeyw
    ADD CONSTRAINT cflang__mediumkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmediumtitle
    ADD CONSTRAINT cflang__mediumtitle FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmetricsdescr
    ADD CONSTRAINT cflang__metricsdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmetricskeyw
    ADD CONSTRAINT cflang__metricskeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmetricsname
    ADD CONSTRAINT cflang__metricsname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunitkeyw
    ADD CONSTRAINT cflang__orgunitkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunitname
    ADD CONSTRAINT cflang__orgunitname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunitresact
    ADD CONSTRAINT cflang__orgunitresact FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_lang
    ADD CONSTRAINT cflang__pers_lang FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfperskeyw
    ADD CONSTRAINT cflang__perskeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpersresint
    ADD CONSTRAINT cflang__persresint FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprizedescr
    ADD CONSTRAINT cflang__pricedescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprizekeyw
    ADD CONSTRAINT cflang__prizekeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprizename
    ADD CONSTRAINT cflang__prizename FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprojabstr
    ADD CONSTRAINT cflang__projabstr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprojkeyw
    ADD CONSTRAINT cflang__projkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprojtitle
    ADD CONSTRAINT cflang__projtitle FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfqualdescr
    ADD CONSTRAINT cflang__qualdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfqualkeyw
    ADD CONSTRAINT cflang__qualkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfqualtitle
    ADD CONSTRAINT cflang__qualtitle FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespatabstr
    ADD CONSTRAINT cflang__respatabstr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespatkeyw
    ADD CONSTRAINT cflang__respatkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespattitle
    ADD CONSTRAINT cflang__respattitle FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespatversinfo
    ADD CONSTRAINT cflang__respatversinfo FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprodaltname
    ADD CONSTRAINT cflang__resprodaltname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode);
ALTER TABLE ONLY public.cfresproddescr
    ADD CONSTRAINT cflang__resproddescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprodkeyw
    ADD CONSTRAINT cflang__resprodkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprodname
    ADD CONSTRAINT cflang__resprodname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprodversinfo
    ADD CONSTRAINT cflang__resprodversinfo FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublabstr
    ADD CONSTRAINT cflang__respublabstr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublkeyw
    ADD CONSTRAINT cflang__respublkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublsubtitle
    ADD CONSTRAINT cflang__respublsubtitle FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubltitle
    ADD CONSTRAINT cflang__respubltitle FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublversinfo
    ADD CONSTRAINT cflang__respublversinfo FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrvdescr
    ADD CONSTRAINT cflang__srvdescr FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrvkeyw
    ADD CONSTRAINT cflang__srvkeyw FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrvname
    ADD CONSTRAINT cflang__srvname FOREIGN KEY (cflangcode) REFERENCES public.cflang(cflangcode) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_meas
    ADD CONSTRAINT cfmeas__equip_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_meas
    ADD CONSTRAINT cfmeas__event_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_meas
    ADD CONSTRAINT cfmeas__facil_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffund_meas
    ADD CONSTRAINT cfmeas__fund_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfgeobbox_meas
    ADD CONSTRAINT cfmeas__geobbox_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid);
ALTER TABLE ONLY public.cfindic_meas
    ADD CONSTRAINT cfmeas__indic_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeas_class
    ADD CONSTRAINT cfmeas__meas_class FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeas_meas
    ADD CONSTRAINT cfmeas__meas_meas1 FOREIGN KEY (cfmeasd1) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeas_meas
    ADD CONSTRAINT cfmeas__meas_meas2 FOREIGN KEY (cfmeasid2) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeasdescr
    ADD CONSTRAINT cfmeas__measdescr FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmeaskeyw
    ADD CONSTRAINT cfmeas__measkeyw FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid);
ALTER TABLE ONLY public.cfmeasname
    ADD CONSTRAINT cfmeas__measname FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_meas
    ADD CONSTRAINT cfmeas__medium_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_meas
    ADD CONSTRAINT cfmeas__orgunit_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_meas
    ADD CONSTRAINT cfmeas__pers_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_meas
    ADD CONSTRAINT cfmeas__proj_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_meas
    ADD CONSTRAINT cfmeas__respat_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_meas
    ADD CONSTRAINT cfmeas__resprod_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_meas
    ADD CONSTRAINT cfmeas__respubl_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_meas
    ADD CONSTRAINT cfmeas__srv_meas FOREIGN KEY (cfmeasid) REFERENCES public.cfmeas(cfmeasid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_medium
    ADD CONSTRAINT cfmedium__cfrespat_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfcite_medium
    ADD CONSTRAINT cfmedium__cite_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_medium
    ADD CONSTRAINT cfmedium__equip_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfevent_medium
    ADD CONSTRAINT cfmedium__event_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_medium
    ADD CONSTRAINT cfmedium__facil_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_fund
    ADD CONSTRAINT cfmedium__fund_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_class
    ADD CONSTRAINT cfmedium__medium_class FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_indic
    ADD CONSTRAINT cfmedium__medium_indic FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_meas
    ADD CONSTRAINT cfmedium__medium_meas FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_medium
    ADD CONSTRAINT cfmedium__medium_medium1 FOREIGN KEY (cfmediumid1) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmedium_medium
    ADD CONSTRAINT cfmedium__medium_medium2 FOREIGN KEY (cfmediumid2) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmediumdescr
    ADD CONSTRAINT cfmedium__mediumdescr FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmediumkeyw
    ADD CONSTRAINT cfmedium__mediumkeyw FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmediumtitle
    ADD CONSTRAINT cfmedium__mediumtitle FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_medium
    ADD CONSTRAINT cfmedium__orgunit_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_medium
    ADD CONSTRAINT cfmedium__pers_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_medium
    ADD CONSTRAINT cfmedium__proj_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_medium
    ADD CONSTRAINT cfmedium__resprod_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_medium
    ADD CONSTRAINT cfmedium__respubl_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_medium
    ADD CONSTRAINT cfmedium__srv_medium FOREIGN KEY (cfmediumid) REFERENCES public.cfmedium(cfmediumid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmetricsdescr
    ADD CONSTRAINT cfmetrics__cfmetricsdescr FOREIGN KEY (cfmetricsid) REFERENCES public.cfmetrics(cfmetricsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmetrics_class
    ADD CONSTRAINT cfmetrics__metrics_class FOREIGN KEY (cfmetricsid) REFERENCES public.cfmetrics(cfmetricsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmetricskeyw
    ADD CONSTRAINT cfmetrics__metricskeyw FOREIGN KEY (cfmetricsid) REFERENCES public.cfmetrics(cfmetricsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfmetricsname
    ADD CONSTRAINT cfmetrics__metricsname FOREIGN KEY (cfmetricsid) REFERENCES public.cfmetrics(cfmetricsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_metrics
    ADD CONSTRAINT cfmetrics__respubl_metrics FOREIGN KEY (cfmetricsid) REFERENCES public.cfmetrics(cfmetricsid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_class
    ADD CONSTRAINT cforgunit__orgunit_class FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_dc
    ADD CONSTRAINT cforgunit__orgunit_dc FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_eaddr
    ADD CONSTRAINT cforgunit__orgunit_eaddr FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_equip
    ADD CONSTRAINT cforgunit__orgunit_equip FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_event
    ADD CONSTRAINT cforgunit__orgunit_event FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_expskills
    ADD CONSTRAINT cforgunit__orgunit_exskills FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_facil
    ADD CONSTRAINT cforgunit__orgunit_facil FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_fund
    ADD CONSTRAINT cforgunit__orgunit_fund FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_indic
    ADD CONSTRAINT cforgunit__orgunit_indic FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_meas
    ADD CONSTRAINT cforgunit__orgunit_meas FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_medium
    ADD CONSTRAINT cforgunit__orgunit_medium FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_orgunit
    ADD CONSTRAINT cforgunit__orgunit_orgunit1 FOREIGN KEY (cforgunitid2) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_orgunit
    ADD CONSTRAINT cforgunit__orgunit_orgunit2 FOREIGN KEY (cforgunitid1) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_paddr
    ADD CONSTRAINT cforgunit__orgunit_paddr FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_prize
    ADD CONSTRAINT cforgunit__orgunit_prize FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_respat
    ADD CONSTRAINT cforgunit__orgunit_respat FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_resprod
    ADD CONSTRAINT cforgunit__orgunit_resprod FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_respubl
    ADD CONSTRAINT cforgunit__orgunit_respubl FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_srv
    ADD CONSTRAINT cforgunit__orgunit_srv FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunitkeyw
    ADD CONSTRAINT cforgunit__orgunitkeyw FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunitname
    ADD CONSTRAINT cforgunit__orgunitname FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunitresact
    ADD CONSTRAINT cforgunit__orgunitresact FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_orgunit
    ADD CONSTRAINT cforgunit__pers_orgunit FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_orgunit
    ADD CONSTRAINT cforgunit__proj_orgunit FOREIGN KEY (cforgunitid) REFERENCES public.cforgunit(cforgunitid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfeaddr
    ADD CONSTRAINT cfpaddr__eaddr FOREIGN KEY (cfpaddrid) REFERENCES public.cfpaddr(cfpaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_paddr
    ADD CONSTRAINT cfpaddr__equip_paddr FOREIGN KEY (cfpaddrid) REFERENCES public.cfpaddr(cfpaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_paddr
    ADD CONSTRAINT cfpaddr__facil_paddr FOREIGN KEY (cfpaddrid) REFERENCES public.cfpaddr(cfpaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_paddr
    ADD CONSTRAINT cfpaddr__orgunit_paddr FOREIGN KEY (cfpaddrid) REFERENCES public.cfpaddr(cfpaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpaddr_geobbox
    ADD CONSTRAINT cfpaddr__padd__geobbox FOREIGN KEY (cfpaddrid) REFERENCES public.cfpaddr(cfpaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpaddr_class
    ADD CONSTRAINT cfpaddr__paddr_class FOREIGN KEY (cfpaddrid) REFERENCES public.cfpaddr(cfpaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_paddr
    ADD CONSTRAINT cfpaddr__pers__paddr FOREIGN KEY (cfpaddrid) REFERENCES public.cfpaddr(cfpaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_paddr
    ADD CONSTRAINT cfpaddr__srv_paddr FOREIGN KEY (cfpaddrid) REFERENCES public.cfpaddr(cfpaddrid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_class
    ADD CONSTRAINT cfpers__pers_class FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_country
    ADD CONSTRAINT cfpers__pers_country FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_cv
    ADD CONSTRAINT cfpers__pers_cv FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_dc
    ADD CONSTRAINT cfpers__pers_dc FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_eaddr
    ADD CONSTRAINT cfpers__pers_eaddr FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_equip
    ADD CONSTRAINT cfpers__pers_equip FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_event
    ADD CONSTRAINT cfpers__pers_event FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_expskills
    ADD CONSTRAINT cfpers__pers_exskills FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_facil
    ADD CONSTRAINT cfpers__pers_facil FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_fund
    ADD CONSTRAINT cfpers__pers_fund FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_indic
    ADD CONSTRAINT cfpers__pers_indic FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_lang
    ADD CONSTRAINT cfpers__pers_lang FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_meas
    ADD CONSTRAINT cfpers__pers_meas FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_medium
    ADD CONSTRAINT cfpers__pers_medium FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_orgunit
    ADD CONSTRAINT cfpers__pers_orgunit FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_paddr
    ADD CONSTRAINT cfpers__pers_paddr FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_pers
    ADD CONSTRAINT cfpers__pers_pers1 FOREIGN KEY (cfpersid2) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_pers
    ADD CONSTRAINT cfpers__pers_pers2 FOREIGN KEY (cfpersid1) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_prize
    ADD CONSTRAINT cfpers__pers_prize FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_qual
    ADD CONSTRAINT cfpers__pers_qual FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_respat
    ADD CONSTRAINT cfpers__pers_respat FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_resprod
    ADD CONSTRAINT cfpers__pers_resprod FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_respubl
    ADD CONSTRAINT cfpers__pers_respubl FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_srv
    ADD CONSTRAINT cfpers__pers_srv FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfperskeyw
    ADD CONSTRAINT cfpers__perskeyw FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpersname_pers
    ADD CONSTRAINT cfpers__persname_pers FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid);
ALTER TABLE ONLY public.cfpersresint
    ADD CONSTRAINT cfpers__persresint FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_pers
    ADD CONSTRAINT cfpers__proj_pers FOREIGN KEY (cfpersid) REFERENCES public.cfpers(cfpersid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpersname_pers
    ADD CONSTRAINT cfpersname__persname_pers FOREIGN KEY (cfpersnameid) REFERENCES public.cfpersname(cfpersnameid);
ALTER TABLE ONLY public.cforgunit_prize
    ADD CONSTRAINT cfprize__orgunit_prize FOREIGN KEY (cfprizeid) REFERENCES public.cfprize(cfprizeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_prize
    ADD CONSTRAINT cfprize__pers_prize FOREIGN KEY (cfprizeid) REFERENCES public.cfprize(cfprizeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprize_class
    ADD CONSTRAINT cfprize__prize_class FOREIGN KEY (cfprizeid) REFERENCES public.cfprize(cfprizeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprizedescr
    ADD CONSTRAINT cfprize__prizedescr FOREIGN KEY (cfprizeid) REFERENCES public.cfprize(cfprizeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprizekeyw
    ADD CONSTRAINT cfprize__prizekeyw FOREIGN KEY (cfprizeid) REFERENCES public.cfprize(cfprizeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprizename
    ADD CONSTRAINT cfprize__prizename FOREIGN KEY (cfprizeid) REFERENCES public.cfprize(cfprizeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_prize
    ADD CONSTRAINT cfprize__proj_prize FOREIGN KEY (cfprizeid) REFERENCES public.cfprize(cfprizeid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_class
    ADD CONSTRAINT cfproj__proj_class FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_dc
    ADD CONSTRAINT cfproj__proj_dc FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_equip
    ADD CONSTRAINT cfproj__proj_equip FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_event
    ADD CONSTRAINT cfproj__proj_event FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_facil
    ADD CONSTRAINT cfproj__proj_facil FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_fund
    ADD CONSTRAINT cfproj__proj_fund FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_indic
    ADD CONSTRAINT cfproj__proj_indic FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_meas
    ADD CONSTRAINT cfproj__proj_meas FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_medium
    ADD CONSTRAINT cfproj__proj_medium FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_orgunit
    ADD CONSTRAINT cfproj__proj_orgunit FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_pers
    ADD CONSTRAINT cfproj__proj_pers FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_prize
    ADD CONSTRAINT cfproj__proj_prize FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_proj
    ADD CONSTRAINT cfproj__proj_proj1 FOREIGN KEY (cfprojid2) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_proj
    ADD CONSTRAINT cfproj__proj_proj2 FOREIGN KEY (cfprojid1) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_respat
    ADD CONSTRAINT cfproj__proj_respat FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_resprod
    ADD CONSTRAINT cfproj__proj_resprod FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_respubl
    ADD CONSTRAINT cfproj__proj_respubl FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_srv
    ADD CONSTRAINT cfproj__proj_srv FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprojabstr
    ADD CONSTRAINT cfproj__projabstr FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprojkeyw
    ADD CONSTRAINT cfproj__projkeyw FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfprojtitle
    ADD CONSTRAINT cfproj__projtitle FOREIGN KEY (cfprojid) REFERENCES public.cfproj(cfprojid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_qual
    ADD CONSTRAINT cfqual__pers_qual FOREIGN KEY (cfqualid) REFERENCES public.cfqual(cfqualid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfqual_class
    ADD CONSTRAINT cfqual__qual_class FOREIGN KEY (cfqualid) REFERENCES public.cfqual(cfqualid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfqualdescr
    ADD CONSTRAINT cfqual__qualdescr FOREIGN KEY (cfqualid) REFERENCES public.cfqual(cfqualid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfqualkeyw
    ADD CONSTRAINT cfqual__qualkeyw FOREIGN KEY (cfqualid) REFERENCES public.cfqual(cfqualid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfqualtitle
    ADD CONSTRAINT cfqual__qualtitle FOREIGN KEY (cfqualid) REFERENCES public.cfqual(cfqualid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_respat
    ADD CONSTRAINT cfrespat__orgunit_respat FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_respat
    ADD CONSTRAINT cfrespat__pers_respat FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_respat
    ADD CONSTRAINT cfrespat__proj_respat FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_class
    ADD CONSTRAINT cfrespat__respat_class FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_equip
    ADD CONSTRAINT cfrespat__respat_equip FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_facil
    ADD CONSTRAINT cfrespat__respat_facil FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_fund
    ADD CONSTRAINT cfrespat__respat_fund FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_indic
    ADD CONSTRAINT cfrespat__respat_indic FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_meas
    ADD CONSTRAINT cfrespat__respat_meas FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_medium
    ADD CONSTRAINT cfrespat__respat_medium FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_respat
    ADD CONSTRAINT cfrespat__respat_respat1 FOREIGN KEY (cfrespatid1) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_respat
    ADD CONSTRAINT cfrespat__respat_respat2 FOREIGN KEY (cfrespatid2) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_srv
    ADD CONSTRAINT cfrespat__respat_srv FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespatabstr
    ADD CONSTRAINT cfrespat__respatabstr FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespatkeyw
    ADD CONSTRAINT cfrespat__respatkeyw FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespattitle
    ADD CONSTRAINT cfrespat__respattitle FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespatversinfo
    ADD CONSTRAINT cfrespat__respatversinfo FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_respat
    ADD CONSTRAINT cfrespat__resprod_respat FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid);
ALTER TABLE ONLY public.cfrespubl_respat
    ADD CONSTRAINT cfrespat__respubl_respat FOREIGN KEY (cfrespatid) REFERENCES public.cfrespat(cfrespatid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_resprod
    ADD CONSTRAINT cfresprod__orgunit_resprod FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_resprod
    ADD CONSTRAINT cfresprod__pers_resprod FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_resprod
    ADD CONSTRAINT cfresprod__proj_resprod FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_class
    ADD CONSTRAINT cfresprod__resprod_class FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_equip
    ADD CONSTRAINT cfresprod__resprod_equip FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_facil
    ADD CONSTRAINT cfresprod__resprod_facil FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_fund
    ADD CONSTRAINT cfresprod__resprod_fund FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_indic
    ADD CONSTRAINT cfresprod__resprod_indic FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_meas
    ADD CONSTRAINT cfresprod__resprod_meas FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_medium
    ADD CONSTRAINT cfresprod__resprod_medium FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_respat
    ADD CONSTRAINT cfresprod__resprod_respat FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid);
ALTER TABLE ONLY public.cfresprod_resprod
    ADD CONSTRAINT cfresprod__resprod_resprod1 FOREIGN KEY (cfresprodid2) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_resprod
    ADD CONSTRAINT cfresprod__resprod_resprod2 FOREIGN KEY (cfresprodid1) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_srv
    ADD CONSTRAINT cfresprod__resprod_srv FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprodaltname
    ADD CONSTRAINT cfresprod__resprodaltname FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid);
ALTER TABLE ONLY public.cfresproddescr
    ADD CONSTRAINT cfresprod__resproddescr FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_geobbox
    ADD CONSTRAINT cfresprod__resprodgeobbox FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid);
ALTER TABLE ONLY public.cfresprodkeyw
    ADD CONSTRAINT cfresprod__resprodkeyw FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprodname
    ADD CONSTRAINT cfresprod__resprodname FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprodversinfo
    ADD CONSTRAINT cfresprod__resprodversinfo FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_resprod
    ADD CONSTRAINT cfresprod__respubl_resprod FOREIGN KEY (cfresprodid) REFERENCES public.cfresprod(cfresprodid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublbiblnote
    ADD CONSTRAINT cfrespubl__biblnote FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_medium
    ADD CONSTRAINT cfrespubl__medium FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cforgunit_respubl
    ADD CONSTRAINT cfrespubl__orgunit_respubl FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_respubl
    ADD CONSTRAINT cfrespubl__pers_respubl FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_respubl
    ADD CONSTRAINT cfrespubl__proj_respubl FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_cite
    ADD CONSTRAINT cfrespubl__respubl_cite FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_class
    ADD CONSTRAINT cfrespubl__respubl_class FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_dc
    ADD CONSTRAINT cfrespubl__respubl_dc FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_equip
    ADD CONSTRAINT cfrespubl__respubl_equip FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_event
    ADD CONSTRAINT cfrespubl__respubl_event FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_facil
    ADD CONSTRAINT cfrespubl__respubl_facil FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_fund
    ADD CONSTRAINT cfrespubl__respubl_fund FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_indic
    ADD CONSTRAINT cfrespubl__respubl_indic FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_meas
    ADD CONSTRAINT cfrespubl__respubl_meas FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_metrics
    ADD CONSTRAINT cfrespubl__respubl_metrics FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_respat
    ADD CONSTRAINT cfrespubl__respubl_respat FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_resprod
    ADD CONSTRAINT cfrespubl__respubl_resprod FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_respubl
    ADD CONSTRAINT cfrespubl__respubl_respubl1 FOREIGN KEY (cfrespublid2) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_respubl
    ADD CONSTRAINT cfrespubl__respubl_respubl2 FOREIGN KEY (cfrespublid1) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_srv
    ADD CONSTRAINT cfrespubl__respubl_srv FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublabstr
    ADD CONSTRAINT cfrespubl__respublabstr FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublkeyw
    ADD CONSTRAINT cfrespubl__respublkeyw FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublsubtitle
    ADD CONSTRAINT cfrespubl__respublsubtitle FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubltitle
    ADD CONSTRAINT cfrespubl__respubltitle FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublversinfo
    ADD CONSTRAINT cfrespubl__respublversinfo FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespublnameabbrev
    ADD CONSTRAINT cfrespubl__rpubnameabbrev FOREIGN KEY (cfrespublid) REFERENCES public.cfrespubl(cfrespublid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfequip_srv
    ADD CONSTRAINT cfsrv__equip_srv FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffacil_srv
    ADD CONSTRAINT cfsrv__facil_srv FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffedid_srv
    ADD CONSTRAINT cfsrv__fedid FOREIGN KEY (cffedidid) REFERENCES public.cffedid(cffedidid);
ALTER TABLE ONLY public.cforgunit_srv
    ADD CONSTRAINT cfsrv__orgunit_srv FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfpers_srv
    ADD CONSTRAINT cfsrv__pers_srv FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfproj_srv
    ADD CONSTRAINT cfsrv__proj_srv FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespat_srv
    ADD CONSTRAINT cfsrv__respat_srv FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfresprod_srv
    ADD CONSTRAINT cfsrv__resprod_srv FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfrespubl_srv
    ADD CONSTRAINT cfsrv__respubl_srv FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_class
    ADD CONSTRAINT cfsrv__srv_class FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_event
    ADD CONSTRAINT cfsrv__srv_event FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cffedid_srv
    ADD CONSTRAINT cfsrv__srv_fedid FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid);
ALTER TABLE ONLY public.cfsrv_fund
    ADD CONSTRAINT cfsrv__srv_fund FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_indic
    ADD CONSTRAINT cfsrv__srv_indic FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_meas
    ADD CONSTRAINT cfsrv__srv_meas FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_medium
    ADD CONSTRAINT cfsrv__srv_medium FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_paddr
    ADD CONSTRAINT cfsrv__srv_paddr FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_srv
    ADD CONSTRAINT cfsrv__srv_srv1 FOREIGN KEY (cfsrvid1) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrv_srv
    ADD CONSTRAINT cfsrv__srv_srv2 FOREIGN KEY (cfsrvid2) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrvdescr
    ADD CONSTRAINT cfsrv__srvdescr FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrvkeyw
    ADD CONSTRAINT cfsrv__srvkeyw FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.cfsrvname
    ADD CONSTRAINT cfsrv__srvname FOREIGN KEY (cfsrvid) REFERENCES public.cfsrv(cfsrvid) ON UPDATE RESTRICT ON DELETE RESTRICT;
