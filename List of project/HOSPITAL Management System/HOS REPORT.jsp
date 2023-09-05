<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="HOS REPORT" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE1" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <afterPageHtmlEscape>
    <![CDATA[<hr size=5 noshade>
]]>
    </afterPageHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html dir=&Direction>
<body bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
    <pageNavigationHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
<TITLE>Oracle HTML Navigator</TITLE>
<SCRIPT type="text/javascript" LANGUAGE = "JavaScript">

var jump_index = 1			// Jump to this page
var num_pages = &TotalPages			// Total number of pages
var basefilename = "&file_name"		// Base file name
var fileext = "&file_ext"		//File extension

/* jumps to "new_page" */
function new_page(form, new_page)
{
	form.reqpage.value = new_page;
	parent.frames[0].location = basefilename + "_" + new_page + "."+fileext;
}

/* go back one page */
function back(form)
{
	/* if we are not in first page */
	if (jump_index > 1)
	{
		jump_index--;
		new_page(form, jump_index);
	}
}

/* go forward one page */
function forward(form)
{
	/* if we are not in last page */
	if (jump_index < num_pages)
	{
		jump_index++;
		new_page(form, jump_index);
	}
}

/* go to first page */
function first(form)
{
	if(jump_index != 1)
	{
		jump_index = 1;
		new_page(form, jump_index);
	}
}

/* go to last page */
function last(form)
{
	if(jump_index != num_pages)
	{
		jump_index = num_pages;
		new_page(form, jump_index);
	}
}

/* go to the user specified page number */
function pagenum(form)
{
	/* sanity check */
	if (form.reqpage.value < 1)
	{
		form.reqpage.value = 1;
	}
	if (form.reqpage.value > num_pages)
	{
		form.reqpage.value = num_pages;
	}
	jump_index = form.reqpage.value;
	new_page(form, jump_index);
}
</SCRIPT>
</HEAD>

<BODY>
<FORM NAME="ThisForm" action="" onSubmit="pagenum(this); return false;">
<center><table><tr>
<td> <INPUT TYPE="button"  VALUE="<< " onClick="first(this.form)">
<td> <INPUT TYPE="button"  VALUE=" < " onClick="back(this.form)">
<td> <INPUT TYPE="button"  VALUE="Page:" onClick="pagenum(this.form)">
<td> <INPUT NAME="reqpage" VALUE="1" SIZE=2>
<td> <INPUT TYPE="button"  VALUE=" > " onClick="forward(this.form)">
<td> <INPUT TYPE="button"  VALUE=" >>" onClick="last(this.form)">
</table></center>
</FORM>
</body></html>]]>
    </pageNavigationHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT ALL DOCTOR.DOCTOR_ID, 
DOCTOR.DOCTOR_NAME, DOCTOR.DOCTOR_SPECIALIZATION, DOCTOR.DOCTOR_SEX, 
DOCTOR.DOCTOR_ADDRESS, DOCTOR.DOCTOR_NUMBER, DOCTOR.DOCTOR_SALARY, PATIENT.PATIENT_ID, 
PATIENT.PATIENT_NAME, PATIENT.PATIENT_SURNAME, PATIENT.PATIENT_DISEASE, 
PATIENT.PATIENT_SEX, PATIENT.PATIENT_AGE, PATIENT.PATIENT_ADDRESS, PATIENT.DOCTOR_ID, ROOM.ROOM_ID, ROOM.ROOM_TYPE, ROOM.ROOM_CHARGES, ROOM.PATIENT_ID, MEDICINE.MEDICINE_ID, MEDICINE.MEDICINE_NAME, MEDICINE.MEDICINE_QUANTITY, 
MEDICINE.MEDICINE_PRICE, MEDICINE.PATIENT_ID
FROM DOCTOR, PATIENT, MEDICINE, ROOM
WHERE ((PATIENT.DOCTOR_ID = DOCTOR.DOCTOR_ID)
 AND (MEDICINE.PATIENT_ID = PATIENT.PATIENT_ID)
 AND (ROOM.PATIENT_ID = PATIENT.PATIENT_ID)) ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_DOCTOR_ID">
        <displayInfo x="0.57166" y="1.94995" width="2.85681" height="1.69922"
        />
        <dataItem name="DOCTOR_ID" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Doctor Id">
          <dataDescriptor expression="DOCTOR.DOCTOR_ID"
           descriptiveExpression="DOCTOR_ID" order="1" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_ID" oracleDatatype="number" columnOrder="18"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Id">
          <dataDescriptor expression="PATIENT.PATIENT_ID"
           descriptiveExpression="PATIENT_ID" order="8" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MEDICINE_ID" oracleDatatype="number" columnOrder="30"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Medicine Id">
          <dataDescriptor expression="MEDICINE.MEDICINE_ID"
           descriptiveExpression="MEDICINE_ID" order="20" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ROOM_ID" oracleDatatype="number" columnOrder="26"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Room Id">
          <dataDescriptor expression="ROOM.ROOM_ID"
           descriptiveExpression="ROOM_ID" order="16" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <summary name="TotalDOCTOR_IDPerDOCTOR_ID" source="DOCTOR_ID"
         function="percentOfTotal" width="22" precision="38"
         reset="G_DOCTOR_ID" compute="report" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="TotalPATIENT_IDPerDOCTOR_ID" source="PATIENT_ID"
         function="percentOfTotal" width="22" precision="38"
         reset="G_DOCTOR_ID" compute="report" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="TotalMEDICINE_IDPerDOCTOR_ID" source="MEDICINE_ID"
         function="percentOfTotal" width="22" precision="38"
         reset="G_DOCTOR_ID" compute="report" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="TotalROOM_IDPerDOCTOR_ID" source="ROOM_ID"
         function="percentOfTotal" width="22" precision="38"
         reset="G_DOCTOR_ID" compute="report" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="SumDOCTOR_SALARYPerDOCTOR_ID" source="DOCTOR_SALARY"
         function="sum" width="22" precision="38" reset="G_DOCTOR_ID"
         compute="report" defaultWidth="90000" defaultHeight="10000"
         columnFlags="552" defaultLabel="Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="TotalROOM_CHARGESPerDOCTOR_ID" source="ROOM_CHARGES"
         function="percentOfTotal" width="22" precision="38"
         reset="G_DOCTOR_ID" compute="report" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="TotalMEDICINE_PRICEPerDOCTOR_I" source="MEDICINE_PRICE"
         function="percentOfTotal" width="22" precision="38"
         reset="G_DOCTOR_ID" compute="report" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
      </group>
      <group name="G_DOCTOR_NAME">
        <displayInfo x="0.57166" y="4.39917" width="2.85681" height="1.69922"
        />
        <dataItem name="DOCTOR_NAME" datatype="vchar2" columnOrder="12"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Doctor Name">
          <dataDescriptor expression="DOCTOR.DOCTOR_NAME"
           descriptiveExpression="DOCTOR_NAME" order="2" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_SPECIALIZATION" datatype="vchar2"
         columnOrder="13" width="30" defaultWidth="100000"
         defaultHeight="10000" columnFlags="33"
         defaultLabel="Doctor Specialization">
          <dataDescriptor expression="DOCTOR.DOCTOR_SPECIALIZATION"
           descriptiveExpression="DOCTOR_SPECIALIZATION" order="3" width="30"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_SEX" datatype="vchar2" columnOrder="14"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Doctor Sex">
          <dataDescriptor expression="DOCTOR.DOCTOR_SEX"
           descriptiveExpression="DOCTOR_SEX" order="4" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_ADDRESS" datatype="vchar2" columnOrder="15"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Doctor Address">
          <dataDescriptor expression="DOCTOR.DOCTOR_ADDRESS"
           descriptiveExpression="DOCTOR_ADDRESS" order="5" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_NUMBER" oracleDatatype="number"
         columnOrder="16" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Doctor Number">
          <dataDescriptor expression="DOCTOR.DOCTOR_NUMBER"
           descriptiveExpression="DOCTOR_NUMBER" order="6" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_SALARY" oracleDatatype="number"
         columnOrder="17" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Doctor Salary">
          <dataDescriptor expression="DOCTOR.DOCTOR_SALARY"
           descriptiveExpression="DOCTOR_SALARY" order="7" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_NAME" datatype="vchar2" columnOrder="19"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Name">
          <dataDescriptor expression="PATIENT.PATIENT_NAME"
           descriptiveExpression="PATIENT_NAME" order="9" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_SURNAME" datatype="vchar2" columnOrder="20"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Surname">
          <dataDescriptor expression="PATIENT.PATIENT_SURNAME"
           descriptiveExpression="PATIENT_SURNAME" order="10" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_DISEASE" datatype="vchar2" columnOrder="21"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Disease">
          <dataDescriptor expression="PATIENT.PATIENT_DISEASE"
           descriptiveExpression="PATIENT_DISEASE" order="11" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_SEX" datatype="vchar2" columnOrder="22"
         width="6" defaultWidth="60000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Patient Sex">
          <dataDescriptor expression="PATIENT.PATIENT_SEX"
           descriptiveExpression="PATIENT_SEX" order="12" width="6"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_AGE" oracleDatatype="number" columnOrder="23"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Age">
          <dataDescriptor expression="PATIENT.PATIENT_AGE"
           descriptiveExpression="PATIENT_AGE" order="13" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_ADDRESS" datatype="vchar2" columnOrder="24"
         width="50" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Address">
          <dataDescriptor expression="PATIENT.PATIENT_ADDRESS"
           descriptiveExpression="PATIENT_ADDRESS" order="14" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_ID1" oracleDatatype="number" columnOrder="25"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Doctor Id1">
          <dataDescriptor expression="PATIENT.DOCTOR_ID"
           descriptiveExpression="DOCTOR_ID" order="15" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ROOM_TYPE" datatype="vchar2" columnOrder="27"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Room Type">
          <dataDescriptor expression="ROOM.ROOM_TYPE"
           descriptiveExpression="ROOM_TYPE" order="17" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ROOM_CHARGES" oracleDatatype="number" columnOrder="28"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Room Charges">
          <dataDescriptor expression="ROOM.ROOM_CHARGES"
           descriptiveExpression="ROOM_CHARGES" order="18" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_ID1" oracleDatatype="number" columnOrder="29"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Id1">
          <dataDescriptor expression="ROOM.PATIENT_ID"
           descriptiveExpression="PATIENT_ID" order="19" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MEDICINE_NAME" datatype="vchar2" columnOrder="31"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Medicine Name">
          <dataDescriptor expression="MEDICINE.MEDICINE_NAME"
           descriptiveExpression="MEDICINE_NAME" order="21" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MEDICINE_QUANTITY" oracleDatatype="number"
         columnOrder="32" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33"
         defaultLabel="Medicine Quantity">
          <dataDescriptor expression="MEDICINE.MEDICINE_QUANTITY"
           descriptiveExpression="MEDICINE_QUANTITY" order="22" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MEDICINE_PRICE" oracleDatatype="number"
         columnOrder="33" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Medicine Price">
          <dataDescriptor expression="MEDICINE.MEDICINE_PRICE"
           descriptiveExpression="MEDICINE_PRICE" order="23" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_ID2" oracleDatatype="number" columnOrder="34"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Id2">
          <dataDescriptor expression="MEDICINE.PATIENT_ID"
           descriptiveExpression="PATIENT_ID" order="24" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <summary name="TotalROOM_CHARGESPerDOCTOR_NAM" source="ROOM_CHARGES"
         function="percentOfTotal" width="22" precision="38"
         reset="G_DOCTOR_NAME" compute="G_DOCTOR_ID" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="TotalMEDICINE_PRICEPerDOCTOR_N" source="MEDICINE_PRICE"
         function="percentOfTotal" width="22" precision="38"
         reset="G_DOCTOR_NAME" compute="G_DOCTOR_ID" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
      </group>
    </dataSource>
    <summary name="SumDOCTOR_SALARYPerReport" source="DOCTOR_SALARY"
     function="sum" width="22" precision="38" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_DOCTOR_ID_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.50000" height="1.75000"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_DOCTOR_ID" source="G_DOCTOR_ID"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.00000" width="7.50000"
           height="1.56250"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_DOCTOR_ID" source="DOCTOR_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="0.62500" y="0.00000" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_ROOM_ID" source="ROOM_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="0.56250" y="0.18750" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_TotalROOM_IDPerDOCTOR_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.56250" width="0.75000"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[% of Total:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_TotalDOCTOR_IDPerDOCTOR_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.93750" y="0.18750" width="0.43750"
             height="0.37500"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[% of
]]>
              </string>
            </textSegment>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
          <field name="F_TotalROOM_IDPerDOCTOR_ID"
           source="TotalROOM_IDPerDOCTOR_ID" minWidowLines="1"
           formatMask="NNNNNNNNNNN0D00%" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="0.75000" y="0.56250" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <frame name="M_G_DOCTOR_NAME_GRPFR">
            <geometryInfo x="0.00000" y="0.75000" width="7.50000"
             height="0.81250"/>
            <generalLayout verticalElasticity="variable"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g100b100"/>
            <repeatingFrame name="R_G_DOCTOR_NAME" source="G_DOCTOR_NAME"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="1.06250" width="7.50000"
               height="0.25000"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableCell"/>
              <field name="F_DOCTOR_NAME" source="DOCTOR_NAME"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="0.00000" y="1.06250" width="0.37500"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_MEDICINE_PRICE" source="MEDICINE_PRICE"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="0.00000" y="1.18750" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_DOCTOR_SPECIALIZATION"
               source="DOCTOR_SPECIALIZATION" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="0.37500" y="1.06250" width="0.37500"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PATIENT_ID2" source="PATIENT_ID2"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="0.56250" y="1.18750" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_DOCTOR_SEX" source="DOCTOR_SEX" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="0.75000" y="1.06250" width="0.31250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_DOCTOR_ADDRESS" source="DOCTOR_ADDRESS"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="1.06250" y="1.06250" width="0.43750"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_TotalROOM_CHARGESPerDOCTOR_N"
               source="TotalROOM_CHARGESPerDOCTOR_NAM" minWidowLines="1"
               formatMask="NNNNNNNNNNN0D00%" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="1.12500" y="1.18750" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_DOCTOR_NUMBER" source="DOCTOR_NUMBER"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="1.50000" y="1.06250" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_TotalMEDICINE_PRICEPerDOCTO1"
               source="TotalMEDICINE_PRICEPerDOCTOR_N" minWidowLines="1"
               formatMask="NNNNNNNNNNN0D00%" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="1.68750" y="1.18750" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_DOCTOR_SALARY" source="DOCTOR_SALARY"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="2.06250" y="1.06250" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PATIENT_NAME" source="PATIENT_NAME"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="2.62500" y="1.06250" width="0.31250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PATIENT_SURNAME" source="PATIENT_SURNAME"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="2.93750" y="1.06250" width="0.31250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PATIENT_DISEASE" source="PATIENT_DISEASE"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="3.25000" y="1.06250" width="0.31250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PATIENT_SEX" source="PATIENT_SEX"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="3.56250" y="1.06250" width="0.18750"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PATIENT_AGE" source="PATIENT_AGE"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="3.75000" y="1.06250" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PATIENT_ADDRESS" source="PATIENT_ADDRESS"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="4.31250" y="1.06250" width="0.31250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_DOCTOR_ID1" source="DOCTOR_ID1" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="4.62500" y="1.06250" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_ROOM_TYPE" source="ROOM_TYPE" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="5.18750" y="1.06250" width="0.31250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_ROOM_CHARGES" source="ROOM_CHARGES"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="5.50000" y="1.06250" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PATIENT_ID1" source="PATIENT_ID1"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="6.06250" y="1.06250" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_MEDICINE_NAME" source="MEDICINE_NAME"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="6.62500" y="1.06250" width="0.31250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_MEDICINE_QUANTITY" source="MEDICINE_QUANTITY"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="4"/>
                <geometryInfo x="6.93750" y="1.06250" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_DOCTOR_NAME_FTR">
              <geometryInfo x="0.00000" y="1.31250" width="7.50000"
               height="0.25000"/>
              <advancedLayout printObjectOnPage="lastPage"
               basePrintingOn="anchoringObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="Totals"/>
              <field name="F_SumDOCTOR_SALARYPerDOCTOR_ID"
               source="SumDOCTOR_SALARYPerDOCTOR_ID" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="4" bold="yes"/>
                <geometryInfo x="2.06250" y="1.31250" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_TotalROOM_CHARGESPerDOCTOR_I"
               source="TotalROOM_CHARGESPerDOCTOR_ID" minWidowLines="1"
               formatMask="NNNNNNNNNNN0D00%" spacing="0" alignment="start">
                <font face="helvetica" size="4" bold="yes"/>
                <geometryInfo x="5.50000" y="1.43750" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_TotalMEDICINE_PRICEPerDOCTOR"
               source="TotalMEDICINE_PRICEPerDOCTOR_I" minWidowLines="1"
               formatMask="NNNNNNNNNNN0D00%" spacing="0" alignment="start">
                <font face="helvetica" size="4" bold="yes"/>
                <geometryInfo x="0.00000" y="1.43750" width="0.56250"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <text name="B_Total_" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="1.31250" width="0.18750"
                 height="0.12500"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes"/>
                  <string>
                  <![CDATA[Total:]]>
                  </string>
                </textSegment>
              </text>
            </frame>
            <frame name="M_G_DOCTOR_NAME_HDR">
              <geometryInfo x="0.00000" y="0.75000" width="7.50000"
               height="0.31250"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableHeading"/>
              <text name="B_DOCTOR_NAME" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.75000" width="0.37500"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Doctor Name]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_DOCTOR_SPECIALIZATION" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.37500" y="0.75000" width="0.37500"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Doctor
]]>
                  </string>
                </textSegment>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Specialization]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_DOCTOR_SEX" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.75000" y="0.75000" width="0.31250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Doctor Sex]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_DOCTOR_ADDRESS" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.06250" y="0.75000" width="0.43750"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Doctor Address]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_DOCTOR_NUMBER" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.50000" y="0.75000" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Doctor Number]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_DOCTOR_SALARY" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="2.06250" y="0.75000" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Doctor Salary]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PATIENT_NAME" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="2.62500" y="0.75000" width="0.31250"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Patient
]]>
                  </string>
                </textSegment>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Name]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PATIENT_SURNAME" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="2.93750" y="0.75000" width="0.31250"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Patient
]]>
                  </string>
                </textSegment>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Surname]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PATIENT_DISEASE" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.25000" y="0.75000" width="0.31250"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Patient
]]>
                  </string>
                </textSegment>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Disease]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PATIENT_SEX" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.56250" y="0.75000" width="0.18750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Patient
]]>
                  </string>
                </textSegment>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Sex]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PATIENT_AGE" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.75000" y="0.75000" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Patient Age]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PATIENT_ADDRESS" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="4.31250" y="0.75000" width="0.31250"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Patient
]]>
                  </string>
                </textSegment>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Address]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_DOCTOR_ID1" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="4.62500" y="0.75000" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Doctor Id1]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_ROOM_TYPE" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="5.18750" y="0.75000" width="0.31250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Room Type]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_ROOM_CHARGES" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="5.50000" y="0.75000" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Room Charges]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PATIENT_ID1" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="6.06250" y="0.75000" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Patient Id1]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_MEDICINE_NAME" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="6.62500" y="0.75000" width="0.31250"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Medicine
]]>
                  </string>
                </textSegment>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Name]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_MEDICINE_QUANTITY" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="6.93750" y="0.75000" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Medicine Quantity]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_MEDICINE_PRICE" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.93750" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Medicine Price]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PATIENT_ID2" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.56250" y="0.93750" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[Patient Id2]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_TotalROOM_CHARGESPerDOCTOR_N" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.12500" y="0.93750" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[% of Total:]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_TotalMEDICINE_PRICEPerDOCTOR" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.68750" y="0.93750" width="0.56250"
                 height="0.12500"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="4" bold="yes" textColor="white"
                  />
                  <string>
                  <![CDATA[% of Total:]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_DOCTOR_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.62500"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Doctor Id]]>
              </string>
            </textSegment>
          </text>
          <field name="F_PATIENT_ID" source="PATIENT_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="2.68750" y="0.00000" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_TotalDOCTOR_IDPerDOCTOR_ID"
           source="TotalDOCTOR_IDPerDOCTOR_ID" minWidowLines="1"
           formatMask="NNNNNNNNNNN0D00%" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="2.37500" y="0.18750" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_TotalPATIENT_IDPerDOCTOR_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.75000" y="0.18750" width="0.43750"
             height="0.37500"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[% of
]]>
              </string>
            </textSegment>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_PATIENT_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.00000" y="0.00000" width="0.68750"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Patient Id]]>
              </string>
            </textSegment>
          </text>
          <field name="F_MEDICINE_ID" source="MEDICINE_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="4.87500" y="0.00000" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_TotalPATIENT_IDPerDOCTOR_ID"
           source="TotalPATIENT_IDPerDOCTOR_ID" minWidowLines="1"
           formatMask="NNNNNNNNNNN0D00%" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="4.18750" y="0.18750" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_TotalMEDICINE_IDPerDOCTOR_ID"
           source="TotalMEDICINE_IDPerDOCTOR_ID" minWidowLines="1"
           formatMask="NNNNNNNNNNN0D00%" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="6.00000" y="0.18750" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_TotalMEDICINE_IDPerDOCTOR_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.56250" y="0.18750" width="0.43750"
             height="0.37500"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[% of
]]>
              </string>
            </textSegment>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_MEDICINE_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.06250" y="0.00000" width="0.81250"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Medicine Id]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ROOM_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.18750" width="0.56250"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Room Id]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
        <frame name="M_G_DOCTOR_ID_FTR">
          <geometryInfo x="0.00000" y="1.56250" width="7.50000"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Totals"/>
          <field name="F_SumDOCTOR_SALARYPerReport"
           source="SumDOCTOR_SALARYPerReport" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="4" bold="yes"/>
            <geometryInfo x="0.43750" y="1.56250" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_SumDOCTOR_SALARYPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="1.56250" width="0.43750"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="4" bold="yes"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <text name="B_1" minWidowLines="1">
        <textSettings spacing="single"/>
        <geometryInfo x="0.47913" y="0.58337" width="5.55334" height="0.37622"
        />
        <advancedLayout printObjectOnPage="allPage"
         basePrintingOn="anchoringObject"/>
        <textSegment>
          <font face="Courier New" size="24" bold="yes"/>
          <string>
          <![CDATA[HOSPITAL REPORT OF THE MONTH]]>
          </string>
        </textSegment>
      </text>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#336699"/>
    <color index="191" displayName="TableHeading" value="#336699"/>
    <color index="192" displayName="TableCell" value="#e0f0ff"/>
    <color index="193" displayName="Totals" value="#c5e3ff"/>
  </colorPalette>
  <reportPrivate defaultReportType="masterDetail" versionFlags2="0"
   templateName="rwblue"/>
  <reportWebSettings>
  <![CDATA[]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>

<HEAD>
  <TITLE> Your Title </TITLE>
  <rw:style id="rwblue12">
<link rel="StyleSheet" type="text/css" href="css/rwblue.css">
</rw:style>

  <META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</HEAD>

<BODY bgColor="#ffffff" link="#000000" vLink="#000000">

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ffffff" rowSpan=2 vAlign=middle width=188><IMG alt="" src="images/rwblue_logo.gif" width="135" height="36"></TD>
    <TD bgColor="#ffffff" height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor="#ffffff" vAlign=bottom>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE bgColor="#ff0000" border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" class="OraColumnHeader">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor="#000000" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#9a9c9a" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#b3b4b3" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top">
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
      <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGDOCTORIDGRPFR199">
<rw:foreach id="RGDOCTORID1991" src="G_DOCTOR_ID">
<!-- Start GetGroupHeader/n --> <table class="OraTable">
 <caption class="OraHeader">  <br>Doctor Id <rw:field id="F_DOCTOR_ID" src="DOCTOR_ID" breakLevel="RGDOCTORID1991" breakValue="&nbsp;"> F_DOCTOR_ID </rw:field><br>
Patient Id <rw:field id="F_PATIENT_ID" src="PATIENT_ID" breakLevel="RGDOCTORID1991" breakValue="&nbsp;"> F_PATIENT_ID </rw:field><br>
Medicine Id <rw:field id="F_MEDICINE_ID" src="MEDICINE_ID" breakLevel="RGDOCTORID1991" breakValue="&nbsp;"> F_MEDICINE_ID </rw:field><br>
Room Id <rw:field id="F_ROOM_ID" src="ROOM_ID" breakLevel="RGDOCTORID1991" breakValue="&nbsp;"> F_ROOM_ID </rw:field><br>
% of
Total: <rw:field id="F_TotalDOCTOR_IDPerDOCTOR_ID" src="TotalDOCTOR_IDPerDOCTOR_ID" breakLevel="RGDOCTORID1991" breakValue="&nbsp;"> F_TotalDOCTOR_IDPerDOCTOR_ID </rw:field><br>
% of
Total: <rw:field id="F_TotalPATIENT_IDPerDOCTOR_ID" src="TotalPATIENT_IDPerDOCTOR_ID" breakLevel="RGDOCTORID1991" breakValue="&nbsp;"> F_TotalPATIENT_IDPerDOCTOR_ID </rw:field><br>
% of
Total: <rw:field id="F_TotalMEDICINE_IDPerDOCTOR_ID" src="TotalMEDICINE_IDPerDOCTOR_ID" breakLevel="RGDOCTORID1991" breakValue="&nbsp;"> F_TotalMEDICINE_IDPerDOCTOR_ID </rw:field><br>
% of Total: <rw:field id="F_TotalROOM_IDPerDOCTOR_ID" src="TotalROOM_IDPerDOCTOR_ID" breakLevel="RGDOCTORID1991" breakValue="&nbsp;"> F_TotalROOM_IDPerDOCTOR_ID </rw:field><br>
 </caption>
<!-- End GetGroupHeader/n -->   <tr>
    <td valign="top">
    <table class="OraTable" summary="">
     <!-- Header -->
     <thead>
      <tr>
       <th <rw:id id="HBDOCTORNAME199" asArray="no"/> class="OraColumnHeader"> Doctor Name </th>
       <th <rw:id id="HBDOCTORSPECIALIZATION199" asArray="no"/> class="OraColumnHeader"> Doctor
Specialization </th>
       <th <rw:id id="HBDOCTORSEX199" asArray="no"/> class="OraColumnHeader"> Doctor Sex </th>
       <th <rw:id id="HBDOCTORADDRESS199" asArray="no"/> class="OraColumnHeader"> Doctor Address </th>
       <th <rw:id id="HBDOCTORNUMBER199" asArray="no"/> class="OraColumnHeader"> Doctor Number </th>
       <th <rw:id id="HBDOCTORSALARY199" asArray="no"/> class="OraColumnHeader"> Doctor Salary </th>
       <th <rw:id id="HBPATIENTNAME199" asArray="no"/> class="OraColumnHeader"> Patient
Name </th>
       <th <rw:id id="HBPATIENTSURNAME199" asArray="no"/> class="OraColumnHeader"> Patient
Surname </th>
       <th <rw:id id="HBPATIENTDISEASE199" asArray="no"/> class="OraColumnHeader"> Patient
Disease </th>
       <th <rw:id id="HBPATIENTSEX199" asArray="no"/> class="OraColumnHeader"> Patient
Sex </th>
       <th <rw:id id="HBPATIENTAGE199" asArray="no"/> class="OraColumnHeader"> Patient Age </th>
       <th <rw:id id="HBPATIENTADDRESS199" asArray="no"/> class="OraColumnHeader"> Patient
Address </th>
       <th <rw:id id="HBDOCTORID1199" asArray="no"/> class="OraColumnHeader"> Doctor Id1 </th>
       <th <rw:id id="HBROOMTYPE199" asArray="no"/> class="OraColumnHeader"> Room Type </th>
       <th <rw:id id="HBROOMCHARGES199" asArray="no"/> class="OraColumnHeader"> Room Charges </th>
       <th <rw:id id="HBPATIENTID1199" asArray="no"/> class="OraColumnHeader"> Patient Id1 </th>
       <th <rw:id id="HBMEDICINENAME199" asArray="no"/> class="OraColumnHeader"> Medicine
Name </th>
       <th <rw:id id="HBMEDICINEQUANTITY199" asArray="no"/> class="OraColumnHeader"> Medicine Quantity </th>
       <th <rw:id id="HBMEDICINEPRICE199" asArray="no"/> class="OraColumnHeader"> Medicine Price </th>
       <th <rw:id id="HBPATIENTID2199" asArray="no"/> class="OraColumnHeader"> Patient Id2 </th>
       <th <rw:id id="HBTotalROOMCHARGESPerDOCTORN199" asArray="no"/> class="OraColumnHeader"> % of Total: </th>
       <th <rw:id id="HBTotalMEDICINEPRICEPerDOCTOR199" asArray="no"/> class="OraColumnHeader"> % of Total: </th>
      </tr>
     </thead>
     <!-- Body -->
     <tbody>
      <rw:foreach id="RGDOCTORNAME1991" src="G_DOCTOR_NAME">
       <tr>
        <td <rw:headers id="HFDOCTORNAME199" src="HBDOCTORNAME199"/> class="OraCellText"><rw:field id="FDOCTORNAME199" src="DOCTOR_NAME" nullValue="&nbsp;"> F_DOCTOR_NAME </rw:field></td>
        <td <rw:headers id="HFDOCTORSPECIALIZATION199" src="HBDOCTORSPECIALIZATION199"/> class="OraCellText"><rw:field id="FDOCTORSPECIALIZATION199" src="DOCTOR_SPECIALIZATION" nullValue="&nbsp;"> F_DOCTOR_SPECIALIZATION </rw:field></td>
        <td <rw:headers id="HFDOCTORSEX199" src="HBDOCTORSEX199"/> class="OraCellText"><rw:field id="FDOCTORSEX199" src="DOCTOR_SEX" nullValue="&nbsp;"> F_DOCTOR_SEX </rw:field></td>
        <td <rw:headers id="HFDOCTORADDRESS199" src="HBDOCTORADDRESS199"/> class="OraCellText"><rw:field id="FDOCTORADDRESS199" src="DOCTOR_ADDRESS" nullValue="&nbsp;"> F_DOCTOR_ADDRESS </rw:field></td>
        <td <rw:headers id="HFDOCTORNUMBER199" src="HBDOCTORNUMBER199"/> class="OraCellNumber"><rw:field id="FDOCTORNUMBER199" src="DOCTOR_NUMBER" nullValue="&nbsp;"> F_DOCTOR_NUMBER </rw:field></td>
        <td <rw:headers id="HFDOCTORSALARY199" src="HBDOCTORSALARY199"/> class="OraCellNumber"><rw:field id="FDOCTORSALARY199" src="DOCTOR_SALARY" nullValue="&nbsp;"> F_DOCTOR_SALARY </rw:field></td>
        <td <rw:headers id="HFPATIENTNAME199" src="HBPATIENTNAME199"/> class="OraCellText"><rw:field id="FPATIENTNAME199" src="PATIENT_NAME" nullValue="&nbsp;"> F_PATIENT_NAME </rw:field></td>
        <td <rw:headers id="HFPATIENTSURNAME199" src="HBPATIENTSURNAME199"/> class="OraCellText"><rw:field id="FPATIENTSURNAME199" src="PATIENT_SURNAME" nullValue="&nbsp;"> F_PATIENT_SURNAME </rw:field></td>
        <td <rw:headers id="HFPATIENTDISEASE199" src="HBPATIENTDISEASE199"/> class="OraCellText"><rw:field id="FPATIENTDISEASE199" src="PATIENT_DISEASE" nullValue="&nbsp;"> F_PATIENT_DISEASE </rw:field></td>
        <td <rw:headers id="HFPATIENTSEX199" src="HBPATIENTSEX199"/> class="OraCellText"><rw:field id="FPATIENTSEX199" src="PATIENT_SEX" nullValue="&nbsp;"> F_PATIENT_SEX </rw:field></td>
        <td <rw:headers id="HFPATIENTAGE199" src="HBPATIENTAGE199"/> class="OraCellNumber"><rw:field id="FPATIENTAGE199" src="PATIENT_AGE" nullValue="&nbsp;"> F_PATIENT_AGE </rw:field></td>
        <td <rw:headers id="HFPATIENTADDRESS199" src="HBPATIENTADDRESS199"/> class="OraCellText"><rw:field id="FPATIENTADDRESS199" src="PATIENT_ADDRESS" nullValue="&nbsp;"> F_PATIENT_ADDRESS </rw:field></td>
        <td <rw:headers id="HFDOCTORID1199" src="HBDOCTORID1199"/> class="OraCellNumber"><rw:field id="FDOCTORID1199" src="DOCTOR_ID1" nullValue="&nbsp;"> F_DOCTOR_ID1 </rw:field></td>
        <td <rw:headers id="HFROOMTYPE199" src="HBROOMTYPE199"/> class="OraCellText"><rw:field id="FROOMTYPE199" src="ROOM_TYPE" nullValue="&nbsp;"> F_ROOM_TYPE </rw:field></td>
        <td <rw:headers id="HFROOMCHARGES199" src="HBROOMCHARGES199"/> class="OraCellNumber"><rw:field id="FROOMCHARGES199" src="ROOM_CHARGES" nullValue="&nbsp;"> F_ROOM_CHARGES </rw:field></td>
        <td <rw:headers id="HFPATIENTID1199" src="HBPATIENTID1199"/> class="OraCellNumber"><rw:field id="FPATIENTID1199" src="PATIENT_ID1" nullValue="&nbsp;"> F_PATIENT_ID1 </rw:field></td>
        <td <rw:headers id="HFMEDICINENAME199" src="HBMEDICINENAME199"/> class="OraCellText"><rw:field id="FMEDICINENAME199" src="MEDICINE_NAME" nullValue="&nbsp;"> F_MEDICINE_NAME </rw:field></td>
        <td <rw:headers id="HFMEDICINEQUANTITY199" src="HBMEDICINEQUANTITY199"/> class="OraCellNumber"><rw:field id="FMEDICINEQUANTITY199" src="MEDICINE_QUANTITY" nullValue="&nbsp;"> F_MEDICINE_QUANTITY </rw:field></td>
        <td <rw:headers id="HFMEDICINEPRICE199" src="HBMEDICINEPRICE199"/> class="OraCellNumber"><rw:field id="FMEDICINEPRICE199" src="MEDICINE_PRICE" nullValue="&nbsp;"> F_MEDICINE_PRICE </rw:field></td>
        <td <rw:headers id="HFPATIENTID2199" src="HBPATIENTID2199"/> class="OraCellNumber"><rw:field id="FPATIENTID2199" src="PATIENT_ID2" nullValue="&nbsp;"> F_PATIENT_ID2 </rw:field></td>
        <td <rw:headers id="HFTotalROOMCHARGESPerDOCTORN199" src="HBTotalROOMCHARGESPerDOCTORN199"/> class="OraCellNumber"><rw:field id="FTotalROOMCHARGESPerDOCTORN199" src="TotalROOM_CHARGESPerDOCTOR_NAM" nullValue="&nbsp;"> F_TotalROOM_CHARGESPerDOCTOR_N </rw:field></td>
        <td <rw:headers id="HFTotalMEDICINEPRICEPerDOCTO1199" src="HBTotalMEDICINEPRICEPerDOCTOR199"/> class="OraCellNumber"><rw:field id="FTotalMEDICINEPRICEPerDOCTO1199" src="TotalMEDICINE_PRICEPerDOCTOR_N" nullValue="&nbsp;"> F_TotalMEDICINE_PRICEPerDOCTO1 </rw:field></td>
       </tr>
      </rw:foreach>
     </tbody>
     <tr>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <td <rw:headers id="HFSumDOCTORSALARYPerDOCTORID199" src="HBDOCTORSALARY199"/> class="OraTotalNumber">Total: <rw:field id="FSumDOCTORSALARYPerDOCTORID199" src="SumDOCTOR_SALARYPerDOCTOR_ID" nullValue="&nbsp;"> F_SumDOCTOR_SALARYPerDOCTOR_ID </rw:field></td>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
     </tr>
     <tr>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <td <rw:headers id="HFTotalROOMCHARGESPerDOCTORI199" src="HBROOMCHARGES199"/> class="OraTotalNumber">% of Total: <rw:field id="FTotalROOMCHARGESPerDOCTORI199" src="TotalROOM_CHARGESPerDOCTOR_ID" nullValue="&nbsp;"> F_TotalROOM_CHARGESPerDOCTOR_I </rw:field></td>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <td <rw:headers id="HFTotalMEDICINEPRICEPerDOCTOR199" src="HBMEDICINEPRICE199"/> class="OraTotalNumber">% of Total: <rw:field id="FTotalMEDICINEPRICEPerDOCTOR199" src="TotalMEDICINE_PRICEPerDOCTOR_I" nullValue="&nbsp;"> F_TotalMEDICINE_PRICEPerDOCTOR </rw:field></td>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
     </tr>
     <tr>
      <td  class="OraTotalNumber">% of Total: <rw:field id="FTotalDOCTORIDPerDOCTORID199" src="TotalDOCTOR_IDPerDOCTOR_ID" nullValue="&nbsp;"> F_TotalDOCTOR_IDPerDOCTOR_ID </rw:field></td>
      <td  class="OraTotalNumber">% of Total: <rw:field id="FTotalPATIENTIDPerDOCTORID199" src="TotalPATIENT_IDPerDOCTOR_ID" nullValue="&nbsp;"> F_TotalPATIENT_IDPerDOCTOR_ID </rw:field></td>
      <td  class="OraTotalNumber">% of Total: <rw:field id="FTotalMEDICINEIDPerDOCTORID199" src="TotalMEDICINE_IDPerDOCTOR_ID" nullValue="&nbsp;"> F_TotalMEDICINE_IDPerDOCTOR_ID </rw:field></td>
      <td  class="OraTotalNumber">% of Total: <rw:field id="FTotalROOMIDPerDOCTORID199" src="TotalROOM_IDPerDOCTOR_ID" nullValue="&nbsp;"> F_TotalROOM_IDPerDOCTOR_ID </rw:field></td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</rw:foreach>
<table class="OraTable" summary="">
 <tr>
  <th class="OraTotalNumber"> Total: <rw:field id="F_SumDOCTOR_SALARYPerReport" src="SumDOCTOR_SALARYPerReport" nullValue="&nbsp;"> F_SumDOCTOR_SALARYPerReport </rw:field></th>
 </tr>
</table>
</rw:dataArea> <!-- id="MGDOCTORIDGRPFR199" -->
<!-- End of Data Area Generated by Reports Developer -->

      </DIV>
    </TD>
  </TR>
</TABLE>

<P>
  <BR>
</P>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ff0000" colSpan=2 class="OraColumnHeader"><IMG alt="" border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ffffff">&nbsp;</TD>
    <TD align=right bgColor="#ffffff">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

</BODY>

</HTML>

<!--
</rw:report>
-->
