<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="HMSREPORT" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE2" xmlPrologType="text">
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
      <![CDATA[SELECT ALL PATIENT.PATIENT_ID, 
PATIENT.PATIENT_NAME, PATIENT.PATIENT_SURNAME, PATIENT.PATIENT_DISEASE, 
PATIENT.PATIENT_SEX, PATIENT.PATIENT_AGE, PATIENT.PATIENT_ADDRESS, PATIENT.DOCTOR_ID, ROOM.ROOM_ID, ROOM.ROOM_TYPE, ROOM.ROOM_CHARGES, ROOM.PATIENT_ID, MEDICINE.MEDICINE_ID, MEDICINE.MEDICINE_NAME, MEDICINE.MEDICINE_QUANTITY, 
MEDICINE.MEDICINE_PRICE, MEDICINE.PATIENT_ID, DOCTOR.DOCTOR_ID, 
DOCTOR.DOCTOR_NAME, DOCTOR.DOCTOR_SPECIALIZATION, DOCTOR.DOCTOR_SEX, 
DOCTOR.DOCTOR_ADDRESS, DOCTOR.DOCTOR_NUMBER, DOCTOR.DOCTOR_SALARY
FROM ROOM, PATIENT, DOCTOR, MEDICINE
WHERE ((ROOM.PATIENT_ID = PATIENT.PATIENT_ID)
 AND (PATIENT.DOCTOR_ID = DOCTOR.DOCTOR_ID)
 AND (MEDICINE.PATIENT_ID = PATIENT.PATIENT_ID)) ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_PATIENT_ID">
        <displayInfo x="0.64490" y="1.94995" width="2.71033" height="1.62695"
        />
        <dataItem name="PATIENT_ID" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Id">
          <dataDescriptor expression="PATIENT.PATIENT_ID"
           descriptiveExpression="PATIENT_ID" order="1" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_ID" oracleDatatype="number" columnOrder="18"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Doctor Id">
          <dataDescriptor expression="PATIENT.DOCTOR_ID"
           descriptiveExpression="DOCTOR_ID" order="8" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MEDICINE_ID" oracleDatatype="number" columnOrder="23"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Medicine Id">
          <dataDescriptor expression="MEDICINE.MEDICINE_ID"
           descriptiveExpression="MEDICINE_ID" order="13" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ROOM_ID" oracleDatatype="number" columnOrder="19"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Room Id">
          <dataDescriptor expression="ROOM.ROOM_ID"
           descriptiveExpression="ROOM_ID" order="9" width="22" precision="38"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_NAME" datatype="vchar2" columnOrder="12"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Patient Name">
          <dataDescriptor expression="PATIENT.PATIENT_NAME"
           descriptiveExpression="PATIENT_NAME" order="2" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ROOM_CHARGES" oracleDatatype="number" columnOrder="21"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Room Charges">
          <dataDescriptor expression="ROOM.ROOM_CHARGES"
           descriptiveExpression="ROOM_CHARGES" order="11" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MEDICINE_PRICE" oracleDatatype="number"
         columnOrder="26" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Medicine Price">
          <dataDescriptor expression="MEDICINE.MEDICINE_PRICE"
           descriptiveExpression="MEDICINE_PRICE" order="16" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <summary name="TotalPATIENT_IDPerPATIENT_ID" source="PATIENT_ID"
         function="percentOfTotal" width="22" precision="38"
         reset="G_PATIENT_ID" compute="report" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
      </group>
      <group name="G_DOCTOR_SALARY">
        <displayInfo x="0.90125" y="4.39917" width="2.19763" height="1.62695"
        />
        <dataItem name="DOCTOR_SALARY" oracleDatatype="number"
         columnOrder="34" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Doctor Salary">
          <dataDescriptor expression="DOCTOR.DOCTOR_SALARY"
           descriptiveExpression="DOCTOR_SALARY" order="24" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_SURNAME" datatype="vchar2" columnOrder="13"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Patient Surname">
          <dataDescriptor expression="PATIENT.PATIENT_SURNAME"
           descriptiveExpression="PATIENT_SURNAME" order="3" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_DISEASE" datatype="vchar2" columnOrder="14"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Patient Disease">
          <dataDescriptor expression="PATIENT.PATIENT_DISEASE"
           descriptiveExpression="PATIENT_DISEASE" order="4" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_SEX" datatype="vchar2" columnOrder="15"
         width="6" defaultWidth="60000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Patient Sex">
          <dataDescriptor expression="PATIENT.PATIENT_SEX"
           descriptiveExpression="PATIENT_SEX" order="5" width="6"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_AGE" oracleDatatype="number" columnOrder="16"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Patient Age">
          <dataDescriptor expression="PATIENT.PATIENT_AGE"
           descriptiveExpression="PATIENT_AGE" order="6" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_ADDRESS" datatype="vchar2" columnOrder="17"
         width="50" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Patient Address">
          <dataDescriptor expression="PATIENT.PATIENT_ADDRESS"
           descriptiveExpression="PATIENT_ADDRESS" order="7" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ROOM_TYPE" datatype="vchar2" columnOrder="20"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Room Type">
          <dataDescriptor expression="ROOM.ROOM_TYPE"
           descriptiveExpression="ROOM_TYPE" order="10" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_ID1" oracleDatatype="number" columnOrder="22"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Patient Id1">
          <dataDescriptor expression="ROOM.PATIENT_ID"
           descriptiveExpression="PATIENT_ID" order="12" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MEDICINE_NAME" datatype="vchar2" columnOrder="24"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Medicine Name">
          <dataDescriptor expression="MEDICINE.MEDICINE_NAME"
           descriptiveExpression="MEDICINE_NAME" order="14" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MEDICINE_QUANTITY" oracleDatatype="number"
         columnOrder="25" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="1"
         defaultLabel="Medicine Quantity">
          <dataDescriptor expression="MEDICINE.MEDICINE_QUANTITY"
           descriptiveExpression="MEDICINE_QUANTITY" order="15" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PATIENT_ID2" oracleDatatype="number" columnOrder="27"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Patient Id2">
          <dataDescriptor expression="MEDICINE.PATIENT_ID"
           descriptiveExpression="PATIENT_ID" order="17" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_ID1" oracleDatatype="number" columnOrder="28"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Doctor Id1">
          <dataDescriptor expression="DOCTOR.DOCTOR_ID"
           descriptiveExpression="DOCTOR_ID" order="18" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_NAME" datatype="vchar2" columnOrder="29"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Doctor Name">
          <dataDescriptor expression="DOCTOR.DOCTOR_NAME"
           descriptiveExpression="DOCTOR_NAME" order="19" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_SPECIALIZATION" datatype="vchar2"
         columnOrder="30" width="30" defaultWidth="100000"
         defaultHeight="10000" columnFlags="1"
         defaultLabel="Doctor Specialization">
          <dataDescriptor expression="DOCTOR.DOCTOR_SPECIALIZATION"
           descriptiveExpression="DOCTOR_SPECIALIZATION" order="20" width="30"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_SEX" datatype="vchar2" columnOrder="31"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Doctor Sex">
          <dataDescriptor expression="DOCTOR.DOCTOR_SEX"
           descriptiveExpression="DOCTOR_SEX" order="21" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_ADDRESS" datatype="vchar2" columnOrder="32"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Doctor Address">
          <dataDescriptor expression="DOCTOR.DOCTOR_ADDRESS"
           descriptiveExpression="DOCTOR_ADDRESS" order="22" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOCTOR_NUMBER" oracleDatatype="number"
         columnOrder="33" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="1" defaultLabel="Doctor Number">
          <dataDescriptor expression="DOCTOR.DOCTOR_NUMBER"
           descriptiveExpression="DOCTOR_NUMBER" order="23" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <summary name="AvgPATIENT_IDPerReport" source="PATIENT_ID"
     function="average" width="22" precision="38" reset="report"
     compute="report" defaultWidth="90000" defaultHeight="10000"
     columnFlags="552" defaultLabel="Average:">
      <displayInfo x="0.00000" y="0.00000" width="0.79993" height="0.19995"/>
    </summary>
    <summary name="CountPATIENT_IDPerReport" source="PATIENT_ID"
     function="count" precision="8" reset="report" compute="report"
     defaultWidth="100000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Count:">
      <displayInfo x="0.79993" y="0.00000" width="0.79993" height="0.19995"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_PATIENT_ID_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="6.75000" height="1.12500"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"/>
        <repeatingFrame name="R_G_PATIENT_ID" source="G_PATIENT_ID"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.00000" width="6.75000"
           height="0.93750"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_PATIENT_ID" source="PATIENT_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="0.68750" y="0.00000" width="1.37500"
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
          <field name="F_MEDICINE_PRICE" source="MEDICINE_PRICE"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="1.00000" y="0.37500" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <frame name="M_G_DOCTOR_SALARY_GRPFR">
            <geometryInfo x="0.00000" y="0.56250" width="1.37500"
             height="0.37500"/>
            <generalLayout verticalElasticity="variable"/>
            <visualSettings fillPattern="transparent"/>
            <repeatingFrame name="R_G_DOCTOR_SALARY" source="G_DOCTOR_SALARY"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="0.75000" width="1.37500"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableCell"/>
              <field name="F_DOCTOR_SALARY" source="DOCTOR_SALARY"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="0.00000" y="0.75000" width="1.37500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_DOCTOR_SALARY_HDR">
              <geometryInfo x="0.00000" y="0.56250" width="1.37500"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TextColor"/>
              <text name="B_DOCTOR_SALARY" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.56250" width="1.37500"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TextColor"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Doctor Salary]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_MEDICINE_PRICE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.37500" width="1.00000"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Medicine Price]]>
              </string>
            </textSegment>
          </text>
          <text name="B_PATIENT_NAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.93750" y="0.18750" width="0.93750"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Patient Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_TotalPATIENT_IDPerPATIENT_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.37500" y="0.37500" width="0.75000"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[% of Total:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_PATIENT_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.68750"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Patient Id]]>
              </string>
            </textSegment>
          </text>
          <field name="F_DOCTOR_ID" source="DOCTOR_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="2.68750" y="0.00000" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_PATIENT_NAME" source="PATIENT_NAME" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="2.87500" y="0.18750" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_TotalPATIENT_IDPerPATIENT_ID"
           source="TotalPATIENT_IDPerPATIENT_ID" minWidowLines="1"
           formatMask="NNNNNNNNNNN0D00%" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="3.12500" y="0.37500" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_DOCTOR_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.06250" y="0.00000" width="0.62500"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Doctor Id]]>
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
          <field name="F_ROOM_CHARGES" source="ROOM_CHARGES" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="5.37500" y="0.18750" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_ROOM_CHARGES" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.37500" y="0.18750" width="1.00000"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Room Charges]]>
              </string>
            </textSegment>
          </text>
          <text name="B_MEDICINE_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.06250" y="0.00000" width="0.81250"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TextColor"/>
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
            <visualSettings fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Room Id]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
        <frame name="M_G_PATIENT_ID_FTR">
          <geometryInfo x="0.00000" y="0.93750" width="6.75000"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Totals"/>
          <field name="F_AvgPATIENT_IDPerReport"
           source="AvgPATIENT_IDPerReport" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="0.62500" y="0.93750" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_AvgPATIENT_IDPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.93750" width="0.62500"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Average:]]>
              </string>
            </textSegment>
          </text>
          <field name="F_CountPATIENT_IDPerReport"
           source="CountPATIENT_IDPerReport" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="2.50000" y="0.93750" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_CountPATIENT_IDPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.00000" y="0.93750" width="0.50000"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Count:]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <text name="B_1" minWidowLines="1">
        <textSettings spacing="single"/>
        <geometryInfo x="0.50000" y="0.43750" width="5.60547" height="0.43750"
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
  <rw:style id="rwblue224">
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
<rw:dataArea id="MGPATIENTIDGRPFR224">
<rw:foreach id="RGPATIENTID2241" src="G_PATIENT_ID">
<!-- Start GetGroupHeader/n --> <table class="OraTable">
 <caption class="OraHeader">  <br>Patient Id <rw:field id="F_PATIENT_ID" src="PATIENT_ID" breakLevel="RGPATIENTID2241" breakValue="&nbsp;"> F_PATIENT_ID </rw:field><br>
Doctor Id <rw:field id="F_DOCTOR_ID" src="DOCTOR_ID" breakLevel="RGPATIENTID2241" breakValue="&nbsp;"> F_DOCTOR_ID </rw:field><br>
Medicine Id <rw:field id="F_MEDICINE_ID" src="MEDICINE_ID" breakLevel="RGPATIENTID2241" breakValue="&nbsp;"> F_MEDICINE_ID </rw:field><br>
Room Id <rw:field id="F_ROOM_ID" src="ROOM_ID" breakLevel="RGPATIENTID2241" breakValue="&nbsp;"> F_ROOM_ID </rw:field><br>
Patient Name <rw:field id="F_PATIENT_NAME" src="PATIENT_NAME" breakLevel="RGPATIENTID2241" breakValue="&nbsp;"> F_PATIENT_NAME </rw:field><br>
Room Charges <rw:field id="F_ROOM_CHARGES" src="ROOM_CHARGES" breakLevel="RGPATIENTID2241" breakValue="&nbsp;"> F_ROOM_CHARGES </rw:field><br>
Medicine Price <rw:field id="F_MEDICINE_PRICE" src="MEDICINE_PRICE" breakLevel="RGPATIENTID2241" breakValue="&nbsp;"> F_MEDICINE_PRICE </rw:field><br>
% of Total: <rw:field id="F_TotalPATIENT_IDPerPATIENT_ID" src="TotalPATIENT_IDPerPATIENT_ID" breakLevel="RGPATIENTID2241" breakValue="&nbsp;"> F_TotalPATIENT_IDPerPATIENT_ID </rw:field><br>
 </caption>
<!-- End GetGroupHeader/n -->   <tr>
    <td valign="top">
    <table class="OraTable" summary="">
     <!-- Header -->
     <thead>
      <tr>
       <th <rw:id id="HBDOCTORSALARY224" asArray="no"/> class="OraColumnHeader"> Doctor Salary </th>
      </tr>
     </thead>
     <!-- Body -->
     <tbody>
      <rw:foreach id="RGDOCTORSALARY2241" src="G_DOCTOR_SALARY">
       <tr>
        <td <rw:headers id="HFDOCTORSALARY224" src="HBDOCTORSALARY224"/> class="OraCellNumber"><rw:field id="FDOCTORSALARY224" src="DOCTOR_SALARY" nullValue="&nbsp;"> F_DOCTOR_SALARY </rw:field></td>
       </tr>
      </rw:foreach>
     </tbody>
     <tr>
      <td  class="OraTotalNumber">% of Total: <rw:field id="FTotalPATIENTIDPerPATIENTID224" src="TotalPATIENT_IDPerPATIENT_ID" nullValue="&nbsp;"> F_TotalPATIENT_IDPerPATIENT_ID </rw:field></td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</rw:foreach>
<table class="OraTable" summary="">
 <tr>
  <th class="OraTotalNumber"> Average: <rw:field id="F_AvgPATIENT_IDPerReport" src="AvgPATIENT_IDPerReport" nullValue="&nbsp;"> F_AvgPATIENT_IDPerReport </rw:field></th>
  <th class="OraTotalNumber"> Count: <rw:field id="F_CountPATIENT_IDPerReport" src="CountPATIENT_IDPerReport" nullValue="&nbsp;"> F_CountPATIENT_IDPerReport </rw:field></th>
 </tr>
</table>
</rw:dataArea> <!-- id="MGPATIENTIDGRPFR224" -->
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
