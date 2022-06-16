<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="lvab_status" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="LVAB_STATUS" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforePageHtmlEscape>
    <![CDATA[#NULL#]]>
    </beforePageHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <userParameter name="FYEAR" datatype="character" width="40"
     initialValue="16-17" defaultWidth="0" defaultHeight="0"/>
    <userParameter name="MDEP" datatype="character" width="40"
     initialValue="45" defaultWidth="0" defaultHeight="0"/>
    <userParameter name="MUNIT" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <userParameter name="co_name" datatype="character" width="200"
     precision="10" defaultWidth="0" defaultHeight="0"/>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT a.hryear, a.emp_no, a.name, a.lv_code,a.lv_days ent,l.remarks,
       a.avl, nvl(a.lv_days,0) - nvl(a.avl,0) bal
  FROM vu_availed a, leaves L
  where a.lv_code = l.code and a.hryear= :fyear and emp_no = NVL(:emp_no,emp_no)
and emp_no in (select m.emp_no from emp_view m where active = 1 and dep_code = nvl(:mdep, dep_code) and cunit = :munit)]]>
      </select>
      <displayInfo x="1.56665" y="0.67700" width="0.69995" height="0.19995"/>
      <group name="G_emp_no">
        <displayInfo x="1.26257" y="2.36670" width="1.09998" height="0.94336"
        />
        <dataItem name="emp_no" oracleDatatype="number" columnOrder="16"
         width="22" defaultWidth="80000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Emp No">
          <dataDescriptor expression="a.emp_no" descriptiveExpression="EMP_NO"
           order="2" oracleDatatype="number" width="22" precision="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="name" datatype="vchar2" columnOrder="17" width="30"
         defaultWidth="150000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Name">
          <dataDescriptor expression="a.name" descriptiveExpression="NAME"
           order="3" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <formula name="ABS" source="absformula" datatype="number" width="20"
         precision="10" defaultWidth="60000" defaultHeight="10000"
         columnFlags="17" defaultLabel="Abs" breakOrder="ascending">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </formula>
        <formula name="topay" source="topayformula" datatype="number"
         width="20" precision="10" defaultWidth="120000" defaultHeight="10000"
         columnFlags="16" defaultLabel="Topay" breakOrder="none">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </formula>
      </group>
      <group name="G_remarks">
        <displayInfo x="1.25769" y="3.71533" width="1.17224" height="0.43066"
        />
        <dataItem name="remarks" datatype="vchar2" columnOrder="20" width="25"
         defaultWidth="50000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Remarks">
          <dataDescriptor expression="l.remarks"
           descriptiveExpression="REMARKS" order="6" width="25"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
      <group name="G_ent">
        <displayInfo x="3.61194" y="1.63440" width="1.17224" height="1.45605"
        />
        <dataItem name="ent" oracleDatatype="number" columnOrder="19"
         width="22" defaultWidth="40000" defaultHeight="10000"
         columnFlags="32" defaultLabel="Ent" breakOrder="none">
          <dataDescriptor expression="a.lv_days" descriptiveExpression="ENT"
           order="5" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="avl" oracleDatatype="number" columnOrder="21"
         width="22" defaultWidth="40000" defaultHeight="10000"
         columnFlags="32" defaultLabel="Avl" breakOrder="none">
          <dataDescriptor expression="a.avl" descriptiveExpression="AVL"
           order="7" oracleDatatype="number" width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="bal" oracleDatatype="number" columnOrder="22"
         width="22" defaultWidth="40000" defaultHeight="10000"
         columnFlags="32" defaultLabel="Bal" breakOrder="none">
          <dataDescriptor
           expression="nvl ( a.lv_days , 0 ) - nvl ( a.avl , 0 )"
           descriptiveExpression="BAL" order="8" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="hryear" datatype="vchar2" columnOrder="15"
         defaultWidth="100000" defaultHeight="10000" columnFlags="0"
         defaultLabel="Hryear" breakOrder="none">
          <dataDescriptor expression="a.hryear" descriptiveExpression="HRYEAR"
           order="1" width="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="lv_code" oracleDatatype="number" columnOrder="18"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="0"
         defaultLabel="Lv Code" breakOrder="none">
          <dataDescriptor expression="a.lv_code"
           descriptiveExpression="LV_CODE" order="4" oracleDatatype="number"
           width="22" scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <crossProduct name="G_SumavlPeremp_no">
      <displayInfo x="0.99939" y="1.26465" width="1.77209" height="2.99414"/>
      <dimension>
        <group name="G_remarks"/>
      </dimension>
      <dimension>
        <group name="G_emp_no"/>
      </dimension>
      <summary name="SumavlPeremp_no" source="avl" function="sum" width="22"
       scale="-127" reset="G_emp_no" compute="report" defaultWidth="40000"
       defaultHeight="10000" columnFlags="552" defaultLabel="Total:"
       productOrder="G_emp_no">
        <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"
        />
      </summary>
      <summary name="SumavlPerremarks" source="avl" function="sum" width="22"
       scale="-127" reset="G_remarks" compute="report" defaultWidth="40000"
       defaultHeight="10000" columnFlags="552" defaultLabel="Total:"
       productOrder="G_remarks">
        <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"
        />
      </summary>
      <summary name="SumbalPeremp_no" source="bal" function="sum" width="22"
       precision="38" reset="G_emp_no" compute="report" defaultWidth="40000"
       defaultHeight="10000" columnFlags="552" defaultLabel="Total:"
       productOrder="G_emp_no">
        <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"
        />
      </summary>
      <summary name="SumbalPerremarks" source="bal" function="sum" width="22"
       precision="38" reset="G_remarks" compute="report" defaultWidth="40000"
       defaultHeight="10000" columnFlags="552" defaultLabel="Total:"
       productOrder="G_remarks">
        <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"
        />
      </summary>
    </crossProduct>
    <summary name="SumavlPerReport" source="avl" function="sum" width="22"
     scale="-127" reset="report" compute="report" defaultWidth="40000"
     defaultHeight="10000" columnFlags="552" defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.79993" height="0.19995"/>
    </summary>
    <formula name="fdate" source="fdateformula" datatype="date" width="20"
     precision="10" defaultWidth="90000" defaultHeight="10000"
     columnFlags="16" defaultLabel="Fdate" breakOrder="none">
      <displayInfo x="0.00000" y="0.45837" width="0.79993" height="0.19995"/>
    </formula>
    <formula name="tdate" source="tdateformula" datatype="date" width="20"
     precision="10" defaultWidth="90000" defaultHeight="10000"
     columnFlags="16" defaultLabel="Tdate" breakOrder="none">
      <displayInfo x="0.00000" y="0.68750" width="0.79993" height="0.19995"/>
    </formula>
    <summary name="SumbalPerReport" source="bal" function="sum" width="22"
     precision="38" reset="report" compute="report" defaultWidth="40000"
     defaultHeight="10000" columnFlags="552" defaultLabel="Total:">
      <displayInfo x="0.79993" y="0.00000" width="0.79993" height="0.19995"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_SumavlPeremp_no_GRPFR">
        <geometryInfo x="0.93750" y="0.00000" width="4.81250" height="0.56250"
        />
        <generalLayout verticalElasticity="variable"
         horizontalElasticity="variable"/>
        <repeatingFrame name="R_G_emp_no" source="G_emp_no"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.93750" y="0.37500" width="4.81250"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <field name="F_emp_no" source="emp_no" minWidowLines="1" spacing="0"
           alignment="center">
            <font face="Arial" size="8"/>
            <geometryInfo x="0.93750" y="0.37500" width="0.56250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_name" source="name" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial" size="8"/>
            <geometryInfo x="1.50000" y="0.37500" width="2.00000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_ABS" source="ABS" minWidowLines="1" spacing="0"
           alignment="center">
            <font face="Arial" size="8"/>
            <geometryInfo x="3.50000" y="0.37500" width="0.56250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_topay" source="topay" minWidowLines="1" spacing="0"
           alignment="center">
            <font face="Arial" size="8"/>
            <geometryInfo x="4.06250" y="0.37500" width="0.56250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_emp_no_HDR">
          <geometryInfo x="0.93750" y="0.00000" width="3.68750"
           height="0.37500"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <text name="B_emp_no" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="0.93750" y="0.00000" width="0.56250"
             height="0.37500"/>
            <visualSettings linePattern="solid"/>
            <textSegment>
              <font face="Times New Roman" size="8"/>
              <string>
              <![CDATA[EMP #]]>
              </string>
            </textSegment>
          </text>
          <text name="B_name" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="1.50000" y="0.00000" width="2.00000"
             height="0.37500"/>
            <visualSettings linePattern="solid"/>
            <textSegment>
              <font face="Times New Roman" size="8"/>
              <string>
              <![CDATA[NAME OF EMPLOYEE]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ABS" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="3.50000" y="0.00000" width="0.56250"
             height="0.37500"/>
            <visualSettings linePattern="solid"/>
            <textSegment>
              <font face="Times New Roman" size="8"/>
              <string>
              <![CDATA[ABSENT]]>
              </string>
            </textSegment>
          </text>
          <text name="B_topay" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="4.06250" y="0.00000" width="0.56250"
             height="0.37500"/>
            <visualSettings linePattern="solid"/>
            <textSegment>
              <font face="Times New Roman" size="8"/>
              <string>
              <![CDATA[TOPAY]]>
              </string>
            </textSegment>
          </text>
        </frame>
        <repeatingFrame name="R_G_remarks" source="G_remarks"
         printDirection="across" minWidowRecords="1" columnMode="no">
          <geometryInfo x="4.62500" y="0.00000" width="1.12500"
           height="0.56250"/>
          <generalLayout verticalElasticity="expand"
           horizontalElasticity="expand"/>
          <field name="F_remarks" source="remarks" minWidowLines="1"
           spacing="0" alignment="center">
            <font face="Times New Roman" size="8" bold="yes"/>
            <geometryInfo x="4.62500" y="0.00000" width="1.12500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings linePattern="solid"/>
          </field>
          <frame name="M_G_ent_HDR">
            <geometryInfo x="4.62500" y="0.18750" width="1.12500"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="anchoringObject"/>
            <visualSettings linePattern="solid"/>
            <text name="B_ent" minWidowLines="1">
              <textSettings justify="center" spacing="0"/>
              <geometryInfo x="4.62500" y="0.18750" width="0.37500"
               height="0.18750"/>
              <visualSettings linePattern="solid"/>
              <textSegment>
                <font face="Times New Roman" size="8"/>
                <string>
                <![CDATA[ENT]]>
                </string>
              </textSegment>
            </text>
            <text name="B_avl" minWidowLines="1">
              <textSettings justify="center" spacing="0"/>
              <geometryInfo x="5.00000" y="0.18750" width="0.37500"
               height="0.18750"/>
              <visualSettings linePattern="solid"/>
              <textSegment>
                <font face="Times New Roman" size="8"/>
                <string>
                <![CDATA[AVL]]>
                </string>
              </textSegment>
            </text>
            <text name="B_bal" minWidowLines="1">
              <textSettings justify="center" spacing="0"/>
              <geometryInfo x="5.37500" y="0.18750" width="0.37500"
               height="0.18750"/>
              <textSegment>
                <font face="Times New Roman" size="8"/>
                <string>
                <![CDATA[BAL]]>
                </string>
              </textSegment>
            </text>
          </frame>
          <repeatingFrame name="R_G_ent" source="G_ent" printDirection="down"
           minWidowRecords="1" columnMode="no">
            <geometryInfo x="4.62500" y="0.37500" width="1.12500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <field name="F_ent" source="ent" minWidowLines="1" spacing="0"
             alignment="center">
              <font face="Arial" size="8"/>
              <geometryInfo x="4.62500" y="0.37500" width="0.37500"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
            </field>
            <field name="F_avl" source="avl" minWidowLines="1" spacing="0"
             alignment="center">
              <font face="Arial" size="8"/>
              <geometryInfo x="5.00000" y="0.37500" width="0.37500"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
            </field>
            <field name="F_bal" source="bal" minWidowLines="1" spacing="0"
             alignment="center">
              <font face="Arial" size="8"/>
              <geometryInfo x="5.37500" y="0.37500" width="0.37500"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
            </field>
          </repeatingFrame>
        </repeatingFrame>
      </frame>
      <matrix name="X_G_SumavlPeremp_no" horizontalFrame="R_G_emp_no"
       verticalFrame="R_G_remarks" xProductGroup="G_SumavlPeremp_no">
        <geometryInfo x="4.62500" y="0.37500" width="1.12500" height="0.18750"
        />
      </matrix>
    </body>
    <margin>
      <text name="B_1" minWidowLines="1">
        <textSettings justify="center" spacing="0"/>
        <geometryInfo x="0.43750" y="0.56250" width="7.50000" height="0.27087"
        />
        <textSegment>
          <font face="Times New Roman" size="12" bold="yes"/>
          <string>
          <![CDATA[LEAVE / ABSENT DEDUCTION STATUS]]>
          </string>
        </textSegment>
      </text>
      <field name="CONAME" source="co_name" minWidowLines="1" spacing="0"
       alignment="center">
        <font face="Times New Roman" size="12" bold="yes"/>
        <geometryInfo x="0.43750" y="0.06250" width="7.50000" height="0.31250"
        />
      </field>
    </margin>
  </section>
  </layout>
  <programUnits>
    <function name="absformula" returnType="number">
      <textSource>
      <![CDATA[function ABSFormula return Number is
  cnt number;
begin
  select count(*) into cnt from emp_abded where adate between :fdate and :tdate
    and emp_no = :emp_no;
    return cnt;
end;]]>
      </textSource>
    </function>
    <function name="fdateformula" returnType="date">
      <textSource>
      <![CDATA[function fdateFormula return Date is
 fdate date;
begin
  select hrdatef into fdate
    from hr_year where hryear = :fyear;
  return fdate;
exception
	when no_data_found then 
	return' ';
end;]]>
      </textSource>
    </function>
    <function name="tdateformula" returnType="date">
      <textSource>
      <![CDATA[function tdateFormula return Date is
 fdate date;
begin
  select hrdatet into fdate
    from hr_year where hryear = :fyear;
  return fdate;
exception
	when no_data_found then 
	return' ';
end;
]]>
      </textSource>
    </function>
    <function name="topayformula" returnType="number">
      <textSource>
      <![CDATA[function topayFormula return Number is
  tp number;
begin
  IF :lv_code = 2 THEN
  	IF :abs = 0 then
  			return 0;
  		elsif :abs > :bal THEN
  			RETURN :bal;
  		else 
  			return :abs;
  		end if;
  	ELSE
  		return 0;
  end if;
  
  	
end;]]>
      </textSource>
    </function>
  </programUnits>
  <reportPrivate defaultReportType="matrix" versionFlags2="0" templateName=""
  />
  <reportWebSettings>
  <![CDATA[#NULL#]]>
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
<rw:dataArea id="MGSumavlPerempnoGRPFR15">
<table>
<caption>  </caption>
 <!-- Header -->
 <tr>
  <td> &nbsp; </td>
  <td> &nbsp; </td>
  <td> &nbsp; </td>
  <th <rw:id id="HBremarks15" asArray="no"/>> Remarks </th>
  <rw:foreach id="RGremarks151" src="G_remarks">
   <th colspan=3 <rw:headers id="HFremarks15" src="HBremarks15"/>><rw:field id="Fremarks15" src="remarks" breakLevel="RGremarks151" breakValue="&nbsp;"> F_remarks </rw:field></th>
  </rw:foreach>
  <td> &nbsp; </td>
  <td> &nbsp; </td>
 </tr>
 <tr>
  <th <rw:id id="HBempno15" asArray="no"/>> Emp No </th>
  <th <rw:id id="HBname15" asArray="no"/>> Name </th>
  <th <rw:id id="HBABS15" asArray="no"/>> Abs </th>
  <th <rw:id id="HBtopay15" asArray="no"/>> Topay </th>
  <rw:foreach id="RGremarks152" src="G_remarks">
   <th <rw:id id="HBent15" asArray="no"/>> Ent </th>
   <th <rw:id id="HBavl15" asArray="no"/>> Avl </th>
   <th <rw:id id="HBbal15" asArray="no"/>> Bal </th>
  </rw:foreach>
  <th <rw:id id="HBFSumavlPerempno15" asArray="no"/>> Total: </th>
  <th <rw:id id="HBFSumbalPerempno15" asArray="no"/>> Total: </th>
 </tr>
 <!-- Body -->
 <rw:foreach id="RGempno153" src="G_emp_no">
  <tr>
   <th <rw:id id="HFempno15" breakLevel="RGempno153" asArray="yes"/>><rw:field id="Fempno15" src="emp_no" breakLevel="RGempno153" breakValue="&nbsp;"> F_emp_no </rw:field></th>
   <th <rw:id id="HFname15" breakLevel="RGempno153" asArray="yes"/>><rw:field id="Fname15" src="name" breakLevel="RGempno153" breakValue="&nbsp;"> F_name </rw:field></th>
   <th <rw:id id="HFABS15" breakLevel="RGempno153" asArray="yes"/>><rw:field id="FABS15" src="ABS" breakLevel="RGempno153" breakValue="&nbsp;"> F_ABS </rw:field></th>
   <th <rw:id id="HFtopay15" breakLevel="RGempno153" asArray="yes"/>><rw:field id="Ftopay15" src="topay" breakLevel="RGempno153" breakValue="&nbsp;"> F_topay </rw:field></th>
   <rw:foreach id="RGremarks154" src="G_remarks">
    <td valign="top">
     <table>
      <rw:foreach id="RGent154" src="G_ent">
       <tr>
        <td <rw:headers id="HFent15" src="HBent15"/>><rw:field id="Fent15" src="ent" nullValue="&nbsp;"> F_ent </rw:field></td>
        <td <rw:headers id="HFavl15" src="HBavl15"/>><rw:field id="Favl15" src="avl" nullValue="&nbsp;"> F_avl </rw:field></td>
        <td <rw:headers id="HFbal15" src="HBbal15"/>><rw:field id="Fbal15" src="bal" nullValue="&nbsp;"> F_bal </rw:field></td>
       </tr>
      </rw:foreach>
     </table>
    </td>
   </rw:foreach>
   <td <rw:headers id="HFSumavlPerempno15" src="HFempno15 Fname15 FABS15 Ftopay15 Ftopay15"/>><rw:field id="FSumavlPerempno15" src="SumavlPeremp_no" nullValue="&nbsp;"> F_SumavlPeremp_no </rw:field></td>
   <td <rw:headers id="HFSumbalPerempno15" src="HFempno15 Fname15 FABS15 Ftopay15 Ftopay15"/>><rw:field id="FSumbalPerempno15" src="SumbalPeremp_no" nullValue="&nbsp;"> F_SumbalPeremp_no </rw:field></td>
  </tr>
 </rw:foreach>
 <tr>
  <td> &nbsp; </td>
  <td> &nbsp; </td>
  <td> &nbsp; </td>
  <td> &nbsp; </td>
  <rw:foreach id="RGremarks155" src="G_remarks">
   <td> &nbsp; </td>
   <td> &nbsp; </td>
   <td> &nbsp; </td>
   <td><rw:field id="FSumavlPerremarks15" src="SumavlPerremarks" nullValue="&nbsp;"> F_SumavlPerremarks </rw:field></td>
   <td><rw:field id="FSumbalPerremarks15" src="SumbalPerremarks" nullValue="&nbsp;"> F_SumbalPerremarks </rw:field></td>
  </rw:foreach>
  <td><rw:field id="FSumavlPerReport15" src="SumavlPerReport" nullValue="&nbsp;"> F_SumavlPerReport </rw:field></td>
  <td><rw:field id="FSumbalPerReport15" src="SumbalPerReport" nullValue="&nbsp;"> F_SumbalPerReport </rw:field></td>
 </tr>
</table>
</rw:dataArea> <!-- id="MGSumavlPerempnoGRPFR15" -->
<!-- End of Data Area Generated by Reports Developer -->




</body>
</html>

<!--
</rw:report> 
-->
