<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="prt" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE4" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT a.rt_no, a.rt_date, a.po_no, a.gremarks, a.vno, a.vdate,b.rtitcode,b.rtqty,b.rate,
       a.process, a.pro_date, a.fin_year, a.invoice#, a.can
  FROM rtm a,rtd b]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_rt_no">
        <displayInfo x="1.37732" y="1.94995" width="1.24548" height="1.28516"
        />
        <dataItem name="rt_no" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="20000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Rt No">
          <dataDescriptor expression="a.rt_no" descriptiveExpression="RT_NO"
           order="1" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="rt_date" datatype="date" oracleDatatype="date"
         columnOrder="12" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Rt Date">
          <dataDescriptor expression="a.rt_date"
           descriptiveExpression="RT_DATE" order="2" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="po_no" oracleDatatype="number" columnOrder="13"
         width="22" defaultWidth="20000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Po No">
          <dataDescriptor expression="a.po_no" descriptiveExpression="PO_NO"
           order="3" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="gremarks" datatype="vchar2" columnOrder="14"
         width="500" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Gremarks">
          <dataDescriptor expression="a.gremarks"
           descriptiveExpression="GREMARKS" order="4" width="500"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="vno" datatype="vchar2" columnOrder="15" width="20"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Vno">
          <dataDescriptor expression="a.vno" descriptiveExpression="VNO"
           order="5" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="vdate" datatype="date" oracleDatatype="date"
         columnOrder="16" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Vdate">
          <dataDescriptor expression="a.vdate" descriptiveExpression="VDATE"
           order="6" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
      <group name="G_rtitcode">
        <displayInfo x="1.37732" y="4.03931" width="1.24548" height="1.62695"
        />
        <dataItem name="rtitcode" datatype="vchar2" columnOrder="17"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Rtitcode">
          <dataDescriptor expression="b.rtitcode"
           descriptiveExpression="RTITCODE" order="7" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="rtqty" oracleDatatype="number" columnOrder="18"
         width="22" defaultWidth="20000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Rtqty">
          <dataDescriptor expression="b.rtqty" descriptiveExpression="RTQTY"
           order="8" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="rate" oracleDatatype="number" columnOrder="19"
         width="22" defaultWidth="20000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Rate">
          <dataDescriptor expression="b.rate" descriptiveExpression="RATE"
           order="9" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <formula name="itname" source="itnameformula" datatype="character"
         width="500" precision="10" defaultWidth="0" defaultHeight="0"
         columnFlags="16" breakOrder="none">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </formula>
        <dataItem name="can" datatype="vchar2" columnOrder="24" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Can">
          <dataDescriptor expression="a.can" descriptiveExpression="CAN"
           order="14" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="process" datatype="vchar2" columnOrder="20" width="1"
         defaultWidth="10000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Process">
          <dataDescriptor expression="a.process"
           descriptiveExpression="PROCESS" order="10" width="1"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="pro_date" datatype="date" oracleDatatype="date"
         columnOrder="21" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Pro Date">
          <dataDescriptor expression="a.pro_date"
           descriptiveExpression="PRO_DATE" order="11" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="fin_year" datatype="vchar2" columnOrder="22" width="5"
         defaultWidth="50000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Fin Year">
          <dataDescriptor expression="a.fin_year"
           descriptiveExpression="FIN_YEAR" order="12" width="5"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="invoice#" oracleDatatype="number" columnOrder="23"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Invoice">
          <dataDescriptor expression="a.invoice#"
           descriptiveExpression="INVOICE#" order="13" width="22" scale="-127"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main" width="13.00000">
    <body width="12.00000">
      <frame name="M_G_rt_no_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="10.93750"
         height="0.81250"/>
        <generalLayout verticalElasticity="variable"/>
        <repeatingFrame name="R_G_rt_no" source="G_rt_no"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.00000" width="10.93750"
           height="0.81250"/>
          <generalLayout verticalElasticity="variable"/>
          <field name="F_rt_no" source="rt_no" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial" size="8"/>
            <geometryInfo x="0.43750" y="0.00000" width="0.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_vno" source="vno" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial" size="8"/>
            <geometryInfo x="0.50000" y="0.25000" width="0.62500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <frame name="M_G_rtitcode_GRPFR">
            <geometryInfo x="0.00000" y="0.43750" width="10.87500"
             height="0.37500"/>
            <generalLayout verticalElasticity="variable"/>
            <repeatingFrame name="R_G_rtitcode" source="G_rtitcode"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="0.62500" width="10.81250"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <field name="F_rtitcode" source="rtitcode" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="Arial" size="8"/>
                <geometryInfo x="0.00000" y="0.62500" width="1.31250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_1" source="itname" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="Arial" size="8"/>
                <geometryInfo x="1.31250" y="0.62500" width="7.68750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="variable"
                 horizontalElasticity="expand"/>
                <advancedLayout printObjectOnPage="allPage"
                 basePrintingOn="enclosingObject"/>
              </field>
              <field name="F_rtqty" source="rtqty" minWidowLines="1"
               spacing="0" alignment="end">
                <font face="Arial" size="8"/>
                <geometryInfo x="9.00000" y="0.62500" width="0.87500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_rate" source="rate" minWidowLines="1" spacing="0"
               alignment="end">
                <font face="Arial" size="8"/>
                <geometryInfo x="9.87500" y="0.62500" width="0.93750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_rtitcode_HDR">
              <geometryInfo x="0.00000" y="0.43750" width="10.81250"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <text name="B_rtitcode" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.43750" width="1.31250"
                 height="0.18750"/>
                <textSegment>
                  <font face="Times New Roman" size="10"/>
                  <string>
                  <![CDATA[ITEM CODE]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_rtqty" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="9.00000" y="0.43750" width="0.87500"
                 height="0.18750"/>
                <textSegment>
                  <font face="Times New Roman" size="10"/>
                  <string>
                  <![CDATA[QTY]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_rate" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="9.87500" y="0.43750" width="0.93750"
                 height="0.18750"/>
                <textSegment>
                  <font face="Times New Roman" size="10"/>
                  <string>
                  <![CDATA[RATE]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_1" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="4.68750" y="0.43750" width="1.31250"
                 height="0.16663"/>
                <textSegment>
                  <font face="Times New Roman" size="10"/>
                  <string>
                  <![CDATA[ITEM NAME]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_vno" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.25000" width="0.50000"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <textSegment>
              <font face="Times New Roman" size="10"/>
              <string>
              <![CDATA[VNO #]]>
              </string>
            </textSegment>
          </text>
          <text name="B_rt_no" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.43750"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <textSegment>
              <font face="Times New Roman" size="10"/>
              <string>
              <![CDATA[ID #]]>
              </string>
            </textSegment>
          </text>
          <field name="F_rt_date" source="rt_date" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial" size="8"/>
            <geometryInfo x="1.25000" y="0.00000" width="0.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_vdate" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.25000" y="0.25000" width="1.12500"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <textSegment>
              <font face="Times New Roman" size="10"/>
              <string>
              <![CDATA[VOUCHER DATE]]>
              </string>
            </textSegment>
          </text>
          <text name="B_rt_date" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.62500" y="0.00000" width="0.37500"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <textSegment>
              <font face="Times New Roman" size="10"/>
              <string>
              <![CDATA[DATE]]>
              </string>
            </textSegment>
          </text>
          <field name="F_po_no" source="po_no" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial" size="8"/>
            <geometryInfo x="2.50000" y="0.00000" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_vdate" source="vdate" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial" size="8"/>
            <geometryInfo x="2.37500" y="0.25000" width="0.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_po_no" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.06250" y="0.00000" width="0.43750"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <textSegment>
              <font face="Times New Roman" size="10"/>
              <string>
              <![CDATA[P.O #]]>
              </string>
            </textSegment>
          </text>
          <field name="F_gremarks" source="gremarks" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial" size="8"/>
            <geometryInfo x="3.93750" y="0.00000" width="7.00000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_gremarks" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.25000" y="0.00000" width="0.68750"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <textSegment>
              <font face="Times New Roman" size="10"/>
              <string>
              <![CDATA[REMARKS]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
      </frame>
    </body>
  </section>
  </layout>
  <programUnits>
    <function name="itnameformula" returnType="character">
      <textSource>
      <![CDATA[function itnameFormula return Char is
abc varchar2(500);
begin
	select name into abc from items
	where :rtitcode = code;
	return abc;
exception when no_data_found then
	
	return '';
  
end;]]>
      </textSource>
    </function>
  </programUnits>
  <reportPrivate defaultReportType="masterDetail" versionFlags2="0"
   templateName=""/>
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
<rw:dataArea id="MGrtnoGRPFR195">
<rw:foreach id="RGrtno1951" src="G_rt_no">
<!-- Start GetGroupHeader/n --> <table>
 <caption>  <br>Rt No <rw:field id="F_rt_no" src="rt_no" breakLevel="RGrtno1951" breakValue="&nbsp;"> F_rt_no </rw:field><br>
Rt Date <rw:field id="F_rt_date" src="rt_date" breakLevel="RGrtno1951" breakValue="&nbsp;"> F_rt_date </rw:field><br>
Po No <rw:field id="F_po_no" src="po_no" breakLevel="RGrtno1951" breakValue="&nbsp;"> F_po_no </rw:field><br>
Gremarks <rw:field id="F_gremarks" src="gremarks" breakLevel="RGrtno1951" breakValue="&nbsp;"> F_gremarks </rw:field><br>
Vno <rw:field id="F_vno" src="vno" breakLevel="RGrtno1951" breakValue="&nbsp;"> F_vno </rw:field><br>
Vdate <rw:field id="F_vdate" src="vdate" breakLevel="RGrtno1951" breakValue="&nbsp;"> F_vdate </rw:field><br>
 </caption>
<!-- End GetGroupHeader/n -->   <tr>
    <td valign="top">
    <table summary="">
     <!-- Header -->
     <thead>
      <tr>
       <th <rw:id id="HBrtitcode195" asArray="no"/>> Rtitcode </th>
       <th <rw:id id="HBrtqty195" asArray="no"/>> Rtqty </th>
       <th <rw:id id="HBrate195" asArray="no"/>> Rate </th>
       <th <rw:id id="HBcan195" asArray="no"/>> Can </th>
       <th <rw:id id="HBprocess195" asArray="no"/>> Process </th>
      </tr>
     </thead>
     <!-- Body -->
     <tbody>
      <rw:foreach id="RGrtitcode1951" src="G_rtitcode">
       <tr>
        <td <rw:headers id="HFrtitcode195" src="HBrtitcode195"/>><rw:field id="Frtitcode195" src="rtitcode" nullValue="&nbsp;"> F_rtitcode </rw:field></td>
        <td <rw:headers id="HFrtqty195" src="HBrtqty195"/>><rw:field id="Frtqty195" src="rtqty" nullValue="&nbsp;"> F_rtqty </rw:field></td>
        <td <rw:headers id="HFrate195" src="HBrate195"/>><rw:field id="Frate195" src="rate" nullValue="&nbsp;"> F_rate </rw:field></td>
        <td <rw:headers id="HFcan195" src="HBcan195"/>><rw:field id="Fcan195" src="can" nullValue="&nbsp;"> F_can </rw:field></td>
        <td <rw:headers id="HFprocess195" src="HBprocess195"/>><rw:field id="Fprocess195" src="process" nullValue="&nbsp;"> F_process </rw:field></td>
       </tr>
      </rw:foreach>
     </tbody>
     <tr>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</rw:foreach>
<table summary="">
</table>
</rw:dataArea> <!-- id="MGrtnoGRPFR195" -->
<!-- End of Data Area Generated by Reports Developer -->




</body>
</html>

<!--
</rw:report> 
-->
