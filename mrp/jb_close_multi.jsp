<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="jb_close_multi" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="JB_CLOSE_MULTI" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <data>
    <userParameter name="QFOBF" datatype="date" width="40"
     inputMask="DD-MM-RR" defaultWidth="0" defaultHeight="0"/>
    <userParameter name="QFOBT" datatype="date" width="40"
     inputMask="DD-MM-RR" defaultWidth="0" defaultHeight="0"/>
    <userParameter name="QFCODE" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <userParameter name="QCGRP" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <userParameter name="QJOBNO" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <userParameter name="QBCODE" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <userParameter name="QBPO" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <userParameter name="QCAST_CODE" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <userParameter name="QSTLNO" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <dataSource name="Q_1">
      <select>
      <![CDATA[select * from JOBM m, jobs_qty j 
 where m.JOBNO = j.jobno 
 AND status <> 'C'    
  and fobdate between :qfobf and :qfobt  
   and stlno IN (select stlno from byr_stl where fcode = :qfcode) 
   and stlno IN (select stlno from styles where cgrp = :qcgrp)  
   and m.jobno = :qjobno 
   and stlno LIKE '%'||:qstlno||'%'
   and stlno in (select stlno from byr_stl where bcode = :qbcode) 
   and bpono = NVL(:qbpo,bpono) 
   and CUST_AST = NVL(:QCAST_CODE,CUST_AST)]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_JOBNO">
        <displayInfo x="1.19421" y="1.94995" width="1.61169" height="1.62695"
        />
        <dataItem name="JOBNO" datatype="vchar2" columnOrder="19"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Jobno">
          <dataDescriptor expression="m.JOBNO" descriptiveExpression="JOBNO"
           order="1" width="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="STLNO" datatype="vchar2" columnOrder="22" width="100"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Stlno">
          <dataDescriptor expression="m.STLNO" descriptiveExpression="STLNO"
           order="4" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FABDATE" datatype="date" oracleDatatype="date"
         columnOrder="39" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Fabdate">
          <dataDescriptor expression="m.FABDATE"
           descriptiveExpression="FABDATE" order="21" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BPONO" datatype="vchar2" columnOrder="24" width="100"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Bpono">
          <dataDescriptor expression="m.BPONO" descriptiveExpression="BPONO"
           order="6" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="STATUS" datatype="vchar2" columnOrder="25" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Status">
          <dataDescriptor expression="m.STATUS" descriptiveExpression="STATUS"
           order="7" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="QTY" oracleDatatype="number" columnOrder="23"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Qty">
          <dataDescriptor expression="m.QTY" descriptiveExpression="QTY"
           order="5" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="JBDATE" datatype="date" oracleDatatype="date"
         columnOrder="20" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Jbdate">
          <dataDescriptor expression="m.JBDATE" descriptiveExpression="JBDATE"
           order="2" oracleDatatype="date" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BCODE" oracleDatatype="number" columnOrder="21"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Bcode">
          <dataDescriptor expression="m.BCODE" descriptiveExpression="BCODE"
           order="3" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FLAG" datatype="vchar2" columnOrder="26" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Flag">
          <dataDescriptor expression="m.FLAG" descriptiveExpression="FLAG"
           order="8" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MJOBNO" datatype="vchar2" columnOrder="27"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Mjobno">
          <dataDescriptor expression="m.MJOBNO" descriptiveExpression="MJOBNO"
           order="9" width="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FOBDATE" datatype="date" oracleDatatype="date"
         columnOrder="28" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Fobdate">
          <dataDescriptor expression="m.FOBDATE"
           descriptiveExpression="FOBDATE" order="10" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="EXSP" oracleDatatype="number" columnOrder="29"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Exsp">
          <dataDescriptor expression="m.EXSP" descriptiveExpression="EXSP"
           order="11" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BPODATE" datatype="date" oracleDatatype="date"
         columnOrder="30" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Bpodate">
          <dataDescriptor expression="m.BPODATE"
           descriptiveExpression="BPODATE" order="12" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DEL_DATE" datatype="date" oracleDatatype="date"
         columnOrder="31" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Del Date">
          <dataDescriptor expression="m.DEL_DATE"
           descriptiveExpression="DEL_DATE" order="13" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PO_CUR" oracleDatatype="number" columnOrder="32"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Po Cur">
          <dataDescriptor expression="m.PO_CUR" descriptiveExpression="PO_CUR"
           order="14" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="INCO_TERMS" datatype="vchar2" columnOrder="33"
         width="100" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Inco Terms">
          <dataDescriptor expression="m.INCO_TERMS"
           descriptiveExpression="INCO_TERMS" order="15" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="RTL" datatype="vchar2" columnOrder="34" width="100"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Rtl">
          <dataDescriptor expression="m.RTL" descriptiveExpression="RTL"
           order="16" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PKT" datatype="vchar2" columnOrder="35" width="100"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Pkt">
          <dataDescriptor expression="m.PKT" descriptiveExpression="PKT"
           order="17" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="CRT" datatype="vchar2" columnOrder="36" width="100"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Crt">
          <dataDescriptor expression="m.CRT" descriptiveExpression="CRT"
           order="18" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PPC" oracleDatatype="number" columnOrder="37"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Ppc">
          <dataDescriptor expression="m.PPC" descriptiveExpression="PPC"
           order="19" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="HANGER" datatype="vchar2" columnOrder="38" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Hanger">
          <dataDescriptor expression="m.HANGER" descriptiveExpression="HANGER"
           order="20" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ACCSDATE" datatype="date" oracleDatatype="date"
         columnOrder="40" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Accsdate">
          <dataDescriptor expression="m.ACCSDATE"
           descriptiveExpression="ACCSDATE" order="22" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PAKDATE" datatype="date" oracleDatatype="date"
         columnOrder="41" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Pakdate">
          <dataDescriptor expression="m.PAKDATE"
           descriptiveExpression="PAKDATE" order="23" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="REMARKS" datatype="vchar2" columnOrder="42"
         width="1000" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Remarks">
          <dataDescriptor expression="m.REMARKS"
           descriptiveExpression="REMARKS" order="24" width="1000"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PRICE" oracleDatatype="number" columnOrder="43"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Price">
          <dataDescriptor expression="m.PRICE" descriptiveExpression="PRICE"
           order="25" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DEL_ADRS" datatype="vchar2" columnOrder="44"
         width="1000" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Del Adrs">
          <dataDescriptor expression="m.DEL_ADRS"
           descriptiveExpression="DEL_ADRS" order="26" width="1000"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PACK_TYPE" datatype="vchar2" columnOrder="45"
         width="1" defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Pack Type">
          <dataDescriptor expression="m.PACK_TYPE"
           descriptiveExpression="PACK_TYPE" order="27" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="CTN" oracleDatatype="number" columnOrder="46"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Ctn">
          <dataDescriptor expression="m.CTN" descriptiveExpression="CTN"
           order="28" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PSHEET_ISSUED" datatype="vchar2" columnOrder="47"
         width="1" defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Psheet Issued">
          <dataDescriptor expression="m.PSHEET_ISSUED"
           descriptiveExpression="PSHEET_ISSUED" order="29" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="CUST_AST" oracleDatatype="number" columnOrder="48"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Cust Ast">
          <dataDescriptor expression="m.CUST_AST"
           descriptiveExpression="CUST_AST" order="30" oracleDatatype="number"
           width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ANID" oracleDatatype="number" columnOrder="49"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Anid">
          <dataDescriptor expression="m.ANID" descriptiveExpression="ANID"
           order="31" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BSZCODE" oracleDatatype="number" columnOrder="50"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Bszcode">
          <dataDescriptor expression="m.BSZCODE"
           descriptiveExpression="BSZCODE" order="32" oracleDatatype="number"
           width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BUPD_DATE" datatype="date" oracleDatatype="date"
         columnOrder="51" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Bupd Date">
          <dataDescriptor expression="m.BUPD_DATE"
           descriptiveExpression="BUPD_DATE" order="33" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BUPD_BY" datatype="vchar2" columnOrder="52"
         width="100" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Bupd By">
          <dataDescriptor expression="m.BUPD_BY"
           descriptiveExpression="BUPD_BY" order="34" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BCR_DATE" datatype="date" oracleDatatype="date"
         columnOrder="53" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Bcr Date">
          <dataDescriptor expression="m.BCR_DATE"
           descriptiveExpression="BCR_DATE" order="35" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BCR_BY" datatype="vchar2" columnOrder="54" width="100"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Bcr By">
          <dataDescriptor expression="m.BCR_BY" descriptiveExpression="BCR_BY"
           order="36" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FQ_FLAG" datatype="vchar2" columnOrder="55" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Fq Flag">
          <dataDescriptor expression="m.FQ_FLAG"
           descriptiveExpression="FQ_FLAG" order="37" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FQ_DATE" datatype="date" oracleDatatype="date"
         columnOrder="56" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Fq Date">
          <dataDescriptor expression="m.FQ_DATE"
           descriptiveExpression="FQ_DATE" order="38" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FQ_EXCL" datatype="vchar2" columnOrder="57" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Fq Excl">
          <dataDescriptor expression="m.FQ_EXCL"
           descriptiveExpression="FQ_EXCL" order="39" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="AQ_FLAG" datatype="vchar2" columnOrder="58" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Aq Flag">
          <dataDescriptor expression="m.AQ_FLAG"
           descriptiveExpression="AQ_FLAG" order="40" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="AQ_DATE" datatype="date" oracleDatatype="date"
         columnOrder="59" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Aq Date">
          <dataDescriptor expression="m.AQ_DATE"
           descriptiveExpression="AQ_DATE" order="41" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="AQ_EXCL" datatype="vchar2" columnOrder="60" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Aq Excl">
          <dataDescriptor expression="m.AQ_EXCL"
           descriptiveExpression="AQ_EXCL" order="42" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PRICE1" oracleDatatype="number" columnOrder="61"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Price1">
          <dataDescriptor expression="m.PRICE1" descriptiveExpression="PRICE1"
           order="43" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PMODEL" oracleDatatype="number" columnOrder="62"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Pmodel">
          <dataDescriptor expression="m.PMODEL" descriptiveExpression="PMODEL"
           order="44" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FAB_CMDATE" datatype="date" oracleDatatype="date"
         columnOrder="63" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Fab Cmdate">
          <dataDescriptor expression="m.FAB_CMDATE"
           descriptiveExpression="FAB_CMDATE" order="45" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="TRIM_ODATE" datatype="date" oracleDatatype="date"
         columnOrder="64" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Trim Odate">
          <dataDescriptor expression="m.TRIM_ODATE"
           descriptiveExpression="TRIM_ODATE" order="46" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PLNG_ID" datatype="vchar2" columnOrder="65" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Plng Id">
          <dataDescriptor expression="m.PLNG_ID"
           descriptiveExpression="PLNG_ID" order="47" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BOM_FLAG" datatype="vchar2" columnOrder="66"
         width="100" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Bom Flag">
          <dataDescriptor expression="m.BOM_FLAG"
           descriptiveExpression="BOM_FLAG" order="48" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FBOM_CHK" datatype="vchar2" columnOrder="67" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Fbom Chk">
          <dataDescriptor expression="m.FBOM_CHK"
           descriptiveExpression="FBOM_CHK" order="49" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MSTJOB" datatype="vchar2" columnOrder="68" width="12"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Mstjob">
          <dataDescriptor expression="m.MSTJOB" descriptiveExpression="MSTJOB"
           order="50" width="12"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="THQ_FLAG" datatype="vchar2" columnOrder="69" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Thq Flag">
          <dataDescriptor expression="m.THQ_FLAG"
           descriptiveExpression="THQ_FLAG" order="51" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="THQ_DATE" datatype="date" oracleDatatype="date"
         columnOrder="70" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Thq Date">
          <dataDescriptor expression="m.THQ_DATE"
           descriptiveExpression="THQ_DATE" order="52" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="THQ_EXCL" datatype="vchar2" columnOrder="71" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Thq Excl">
          <dataDescriptor expression="m.THQ_EXCL"
           descriptiveExpression="THQ_EXCL" order="53" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="THQ_EXDATE" datatype="date" oracleDatatype="date"
         columnOrder="72" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Thq Exdate">
          <dataDescriptor expression="m.THQ_EXDATE"
           descriptiveExpression="THQ_EXDATE" order="54" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="AQ_EXDATE" datatype="date" oracleDatatype="date"
         columnOrder="73" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Aq Exdate">
          <dataDescriptor expression="m.AQ_EXDATE"
           descriptiveExpression="AQ_EXDATE" order="55" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FQ_EXDATE" datatype="date" oracleDatatype="date"
         columnOrder="74" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Fq Exdate">
          <dataDescriptor expression="m.FQ_EXDATE"
           descriptiveExpression="FQ_EXDATE" order="56" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PKMODE" datatype="vchar2" columnOrder="75" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Pkmode">
          <dataDescriptor expression="m.PKMODE" descriptiveExpression="PKMODE"
           order="57" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="JOBNO1" datatype="vchar2" columnOrder="76"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Jobno1">
          <dataDescriptor expression="j.JOBNO" descriptiveExpression="JOBNO"
           order="58" width="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MJOBNO1" datatype="vchar2" columnOrder="77"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Mjobno1">
          <dataDescriptor expression="j.MJOBNO" descriptiveExpression="MJOBNO"
           order="59" width="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="EXSP1" oracleDatatype="number" columnOrder="78"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Exsp1">
          <dataDescriptor expression="j.EXSP" descriptiveExpression="EXSP"
           order="60" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FLAG1" datatype="vchar2" columnOrder="79" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Flag1">
          <dataDescriptor expression="j.FLAG" descriptiveExpression="FLAG"
           order="61" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="SUM_QTY" oracleDatatype="number" columnOrder="80"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Sum Qty">
          <dataDescriptor expression="j.SUM_QTY"
           descriptiveExpression="SUM_QTY" order="62" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="TOT_QTY" oracleDatatype="number" columnOrder="81"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Tot Qty">
          <dataDescriptor expression="j.TOT_QTY"
           descriptiveExpression="TOT_QTY" order="63" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="CUT_QTY" oracleDatatype="number" columnOrder="82"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Cut Qty">
          <dataDescriptor expression="j.CUT_QTY"
           descriptiveExpression="CUT_QTY" order="64" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_JOBNO_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="4.31250" height="0.37500"
        />
        <generalLayout verticalElasticity="variable"/>
        <repeatingFrame name="R_G_JOBNO" source="G_JOBNO"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.18750" width="4.31250"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <field name="F_JOBNO" source="JOBNO" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Courier New" size="10"/>
            <geometryInfo x="0.00000" y="0.18750" width="0.87500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_STLNO" source="STLNO" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Courier New" size="10"/>
            <geometryInfo x="0.87500" y="0.18750" width="0.87500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_FABDATE" source="FABDATE" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Courier New" size="10"/>
            <geometryInfo x="1.75000" y="0.18750" width="0.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_BPONO" source="BPONO" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Courier New" size="10"/>
            <geometryInfo x="2.56250" y="0.18750" width="0.87500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_STATUS" source="STATUS" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Courier New" size="10"/>
            <geometryInfo x="3.43750" y="0.18750" width="0.56250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_QTY" source="QTY" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Courier New" size="10"/>
            <geometryInfo x="4.00000" y="0.18750" width="0.31250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_JOBNO_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="4.31250"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <text name="B_JOBNO" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.87500"
             height="0.18750"/>
            <textSegment>
              <font face="Courier New" size="10"/>
              <string>
              <![CDATA[Jobno]]>
              </string>
            </textSegment>
          </text>
          <text name="B_STLNO" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.87500" y="0.00000" width="0.87500"
             height="0.18750"/>
            <textSegment>
              <font face="Courier New" size="10"/>
              <string>
              <![CDATA[Stlno]]>
              </string>
            </textSegment>
          </text>
          <text name="B_FABDATE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.75000" y="0.00000" width="0.81250"
             height="0.18750"/>
            <textSegment>
              <font face="Courier New" size="10"/>
              <string>
              <![CDATA[Fabdate]]>
              </string>
            </textSegment>
          </text>
          <text name="B_BPONO" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.56250" y="0.00000" width="0.87500"
             height="0.18750"/>
            <textSegment>
              <font face="Courier New" size="10"/>
              <string>
              <![CDATA[Bpono]]>
              </string>
            </textSegment>
          </text>
          <text name="B_STATUS" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.43750" y="0.00000" width="0.56250"
             height="0.18750"/>
            <textSegment>
              <font face="Courier New" size="10"/>
              <string>
              <![CDATA[Status]]>
              </string>
            </textSegment>
          </text>
          <text name="B_QTY" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.00000" y="0.00000" width="0.31250"
             height="0.18750"/>
            <textSegment>
              <font face="Courier New" size="10"/>
              <string>
              <![CDATA[Qty]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
  </section>
  </layout>
  <reportPrivate defaultReportType="tabular" versionFlags2="0" templateName=""
  />
  <reportWebSettings>
  <![CDATA[]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<html>

<head>
<meta name="GENERATOR" content="Oracle 9i Reports Developer"/>
<title> Your Title </title>



</head>


<body>

<!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGJOBNOGRPFR184">
<table>
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBJOBNO184" asArray="no"/>> Jobno </th>
   <th <rw:id id="HBSTLNO184" asArray="no"/>> Stlno </th>
   <th <rw:id id="HBFABDATE184" asArray="no"/>> Fabdate </th>
   <th <rw:id id="HBBPONO184" asArray="no"/>> Bpono </th>
   <th <rw:id id="HBSTATUS184" asArray="no"/>> Status </th>
   <th <rw:id id="HBQTY184" asArray="no"/>> Qty </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGJOBNO1841" src="G_JOBNO">
   <tr>
    <td <rw:headers id="HFJOBNO184" src="HBJOBNO184"/>><rw:field id="FJOBNO184" src="JOBNO" nullValue="&nbsp;"> F_JOBNO </rw:field></td>
    <td <rw:headers id="HFSTLNO184" src="HBSTLNO184"/>><rw:field id="FSTLNO184" src="STLNO" nullValue="&nbsp;"> F_STLNO </rw:field></td>
    <td <rw:headers id="HFFABDATE184" src="HBFABDATE184"/>><rw:field id="FFABDATE184" src="FABDATE" nullValue="&nbsp;"> F_FABDATE </rw:field></td>
    <td <rw:headers id="HFBPONO184" src="HBBPONO184"/>><rw:field id="FBPONO184" src="BPONO" nullValue="&nbsp;"> F_BPONO </rw:field></td>
    <td <rw:headers id="HFSTATUS184" src="HBSTATUS184"/>><rw:field id="FSTATUS184" src="STATUS" nullValue="&nbsp;"> F_STATUS </rw:field></td>
    <td <rw:headers id="HFQTY184" src="HBQTY184"/>><rw:field id="FQTY184" src="QTY" nullValue="&nbsp;"> F_QTY </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGJOBNOGRPFR184" -->
<!-- End of Data Area Generated by Reports Developer -->




</body>
</html>

<!--
</rw:report> 
-->
