<%@language=vbscript%>
<%

%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="en-us">
<meta name="Author" content="GreenHouse Design, Inc. - www.ghdweb.com">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">

<TITLE>MWC - LineCare </TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<!-- ImageReady Preload Script (waves700v13TOP.psd) -->
<SCRIPT LANGUAGE="JavaScript">
<!--

function newImage(arg) {
	if (document.images) {
		rslt = new Image();
		rslt.src = arg;
		return rslt;
	}
}

function changeImages() {
	if (document.images && (preloadFlag == true)) {
		for (var i=0; i<changeImages.arguments.length; i+=2) {
			document[changeImages.arguments[i]].src = changeImages.arguments[i+1];
		}
	}
}

var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		waves700v13TOP_03_over = newImage("images/waves700v13TOP_03-over.gif");
		waves700v13TOP_04_over = newImage("images/waves700v13TOP_04-over.gif");
		waves700v13TOP_05_over = newImage("images/waves700v13TOP_05-over.gif");
		waves700v13TOP_06_over = newImage("images/waves700v13TOP_06-over.gif");
		waves700v13TOP_07_over = newImage("images/waves700v13TOP_07-over.gif");
		waves700v13TOP_08_over = newImage("images/waves700v13TOP_08-over.gif");
		waves700v13TOP_09_over = newImage("images/waves700v13TOP_09-over.gif");
		waves700v13BOTTOM_03_over = newImage("images/waves700v13BOTTOM_03-over.gif");
		waves700v13BOTTOM_04_over = newImage("images/waves700v13BOTTOM_04-over.gif");
		waves700v13BOTTOM_05_over = newImage("images/waves700v13BOTTOM_05-over.gif");
		waves700v13BOTTOM_06_over = newImage("images/waves700v13BOTTOM_06-over.gif");
		waves700v13BOTTOM_07_over = newImage("images/waves700v13BOTTOM_07-over.gif");
		waves700v13BOTTOM_08_over = newImage("images/waves700v13BOTTOM_08-over.gif");
		waves700v13BOTTOM_09_over = newImage("images/waves700v13BOTTOM_09-over.gif");
		preloadFlag = true;
	}
}

function checkrequired(which) 
	{
	var pass=true;
	if (document.images) 
		{
		for (i=0;i<which.length;i++) 
			{
			var tempobj=which.elements[i];
			if (tempobj.name.substring(0,8)=="required") 
				{
				if (((tempobj.type=="text"||tempobj.type=="textarea")&&
				tempobj.value=='')||(tempobj.type.toString().charAt(0)=="s"&&
				tempobj.selectedIndex==0)||(tempobj.type.toString().charAt(0)=="c"&&
				tempobj.checked==0)) 
					{
					pass=false;
					break;
         					}
      				}
   			}
		}

	if (!pass) 
		{
		shortFieldName=tempobj.name.substring(8,30);
		if(shortFieldName == "Agreement")
			{
			alert("Please make sure to read the terms and check the Checkbox.");
			}
		else
			{
			alert("Please make sure the "+shortFieldName+" field was properly completed.");
			}
		return false;
		}
	else
		return true;
	}
// -->
</SCRIPT>
<!-- End Preload Script -->
<style>
<!--
 li.MsoNormal
	{mso-style-parent:"";
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";
	margin-left:0in; margin-right:0in; margin-top:0in}
-->
</style>
</HEAD>
<BODY BGCOLOR=#FFFFFF ONLOAD="preloadImages();">
<!-- ImageReady Slices (waves700v13TOP.psd) -->
<TABLE WIDTH=700 BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD COLSPAN=9>
			<IMG SRC="images/waves700v13TOP_01.gif" WIDTH=700 HEIGHT=97 BORDER=0 USEMAP="#waves700v13TOP_01_Map"></TD>
	</TR>
	<TR>
		<TD ROWSPAN=2>
			<IMG SRC="images/waves700v13TOP_02.gif" WIDTH=26 HEIGHT=25></TD>
		<TD>
			<A HREF="aboutUs.htm"
				ONMOUSEOVER="changeImages('waves700v13TOP_03', 'images/waves700v13TOP_03-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13TOP_03', 'images/waves700v13TOP_03.gif'); return true;">
				<IMG NAME="waves700v13TOP_03" SRC="images/waves700v13TOP_03.gif" WIDTH=70 HEIGHT=21 BORDER=0></A></TD>
		<TD>
			<A HREF="news.htm"
				ONMOUSEOVER="changeImages('waves700v13TOP_04', 'images/waves700v13TOP_04-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13TOP_04', 'images/waves700v13TOP_04.gif'); return true;">
				<IMG NAME="waves700v13TOP_04" SRC="images/waves700v13TOP_04.gif" WIDTH=58 HEIGHT=21 BORDER=0></A></TD>
		<TD>
			<A HREF="customerService.htm"
				ONMOUSEOVER="changeImages('waves700v13TOP_05', 'images/waves700v13TOP_05-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13TOP_05', 'images/waves700v13TOP_05.gif'); return true;">
				<IMG NAME="waves700v13TOP_05" SRC="images/waves700v13TOP_05.gif" WIDTH=121 HEIGHT=21 BORDER=0></A></TD>
		<TD>
			<A HREF="shareholderInfo.htm"
				ONMOUSEOVER="changeImages('waves700v13TOP_06', 'images/waves700v13TOP_06-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13TOP_06', 'images/waves700v13TOP_06.gif'); return true;">
				<IMG NAME="waves700v13TOP_06" SRC="images/waves700v13TOP_06.gif" WIDTH=122 HEIGHT=21 BORDER=0></A></TD>
		<TD>
			<A HREF="waterQuality.htm"
				ONMOUSEOVER="changeImages('waves700v13TOP_07', 'images/waves700v13TOP_07-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13TOP_07', 'images/waves700v13TOP_07.gif'); return true;">
				<IMG NAME="waves700v13TOP_07" SRC="images/waves700v13TOP_07.gif" WIDTH=107 HEIGHT=21 BORDER=0></A></TD>
		<TD>
			<A HREF="aboutH2o.htm"
				ONMOUSEOVER="changeImages('waves700v13TOP_08', 'images/waves700v13TOP_08-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13TOP_08', 'images/waves700v13TOP_08.gif'); return true;">
				<IMG NAME="waves700v13TOP_08" SRC="images/waves700v13TOP_08.gif" WIDTH=90 HEIGHT=21 BORDER=0></A></TD>
		<TD>
			<A HREF="contactUs.htm"
				ONMOUSEOVER="changeImages('waves700v13TOP_09', 'images/waves700v13TOP_09-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13TOP_09', 'images/waves700v13TOP_09.gif'); return true;">
				<IMG NAME="waves700v13TOP_09" SRC="images/waves700v13TOP_09.gif" WIDTH=85 HEIGHT=21 BORDER=0></A></TD>
		<TD ROWSPAN=2>
			<IMG SRC="images/waves700v13TOP_10.gif" WIDTH=21 HEIGHT=25></TD>
	</TR>
	<TR>
		<TD COLSPAN=7>
			<IMG SRC="images/waves700v13TOP_11.gif" WIDTH=653 HEIGHT=4></TD>
	</TR>
</TABLE>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" id="AutoNumber2">
  <tr>
    <td width="36" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="36" id="AutoNumber3" height="100%">
  <tr>
    <td width="32" bgcolor="#005E9A"><img src="images/empty.gif" width="1" height="1"></td>
    <td width="1" bgcolor="#406F8D"><img src="images/empty.gif" width="1" height="1"></td>
    <td width="1" bgcolor="#808080"><img src="images/empty.gif" width="1" height="1"></td>
    <td width="1" bgcolor="#C0C0C0"><img src="images/empty.gif" width="1" height="1"></td>
    <td width="1"><img src="images/empty.gif" width="1" height="1"></td>
  </tr>
</table>
</td>
    <td width="628" height="100%">
    <br>
    
<table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="628" id="AutoNumberLCForm" height="100%">
      <tr>
        <td width="30">&nbsp;</td>
        <td width="568"><font face="Arial" color="#000066"><b>LineCare</b><sup><font size="2">SM</font></sup></font><p>
        <font color="#000066"><b>
        <span style="font-size: 10.0pt; font-family: Arial">ARE YOU PREPARED FOR 
        WATER OR SEWER LINE EMERGENCY?</span></b></font><p class="MsoNormal">
        <font color="#000066"><b>
        <span style="font-size:10.0pt;font-family:Arial">Sign up today to 
        prevent costly water and sewer line repair costs!</span></b></font></p>
        <p class="MsoNormal"><font color="#000066">
        <span style="font-size:10.0pt;font-family:Arial">Last year, broken water 
        lines and clogged sewer lines cost homeowners across the United States 
        millions of dollars.&nbsp; As a homeowner, if the water line on your property 
        should leak or your sewer line get clogged or break, it’s your 
        responsibility to repair it.&nbsp; A typical water line replacement can range 
        from $2,000-$5,000 and sewer repairs can cost even more. </span></font><font face="Arial" color="#000066">
        <font size="2">LineCare</font><sup><font size="1">SM</font><font size="2"> </font></sup></font>
        <font color="#000066"><span style="font-size:10.0pt;font-family:Arial">
        can give you peace of mind in these kinds of emergencies.</span></font></p>
        <p class="MsoNormal"><b><font face="Arial" color="#000066">
        <font size="2">LineCare</font><sup><font size="1">SM</font></sup></font></b><font color="#000066"><b><span style="font-size: 10.0pt; font-family: Arial"> 
        Is a Simple And Affordable Maintenance Program for Water and Sewer Lines</span></b><span style="font-size: 10.0pt; font-family: Arial">.</span></font></td>
        <td width="30">&nbsp;</td>
      </tr>
      <tr>
        <td width="30">&nbsp;</td>
        <td width="568">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="568" id="AutoNumber13" height="141">
          <tr>
            <td width="568" valign="top" height="16"><p>
            <p>
            <p>
            <img border="0" src="../sharedImages/New_House_Meter.jpg"></td>
            </td>
          </tr>
          <tr>
            <td width="568" valign="top" height="16"><p>
            <p>
            <p class="MsoNormal"><font color="#000066"><b>
            <span style="font-size:10.0pt;font-family:Arial">What is </span></b>
            </font><b><font face="Arial" color="#000066"><font size="2">LineCare</font><sup><font size="1">SM</font></sup></font></b><font color="#000066"><b><span style="font-size:10.0pt;font-family:Arial">?</span></b></font></p>
            <p class="MsoNormal"><font face="Arial" color="#000066">
            <font size="2">LineCare</font><sup><font size="1">SM </font></sup></font>
            <font color="#000066">
            <span style="font-size:10.0pt;font-family:Arial">is an annual 
            maintenance program that covers all parts, material and labor 
            required to repair or replace a leaking or broken water service line 
            or a clogged or blocked sewer line.&nbsp; </span></font></p>
            <p class="MsoNormal"><font color="#000066"><b>
            <span style="font-size:10.0pt;font-family:Arial">You Can Choose 
            Water Line Protection Only, Sewer Line Protection Only or Cover Both 
            Water and Sewer Through </span></b></font><b><font face="Arial" color="#000066">
            <font size="2">LineCare</font><sup><font size="1">SM </font></sup></font>
            </b><font color="#000066"><b>
            <span style="font-size:10.0pt;font-family:Arial">Plus.</span></b></font></p>
            <p><font color="#000066"><b>
            <span style="font-size: 10.0pt; font-family: Arial">Enjoy the 
            Benefits of </span></b></font><b><font face="Arial" color="#000066">
            <font size="2">LineCare</font><sup><font size="1">SM</font></sup><font size="2">:</font></font></b></p>
            <ul style="line-height: 100%">
              <li>
              <p class="MsoNormal" style="text-indent: -.25in; line-height: 150%; margin-left: 39.0pt">
              <font color="#000066">
              <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;</span><span style="font-size:10.0pt;font-family:Arial">Peace 
              of mind in a water and/or sewer line emergency.</span></font></li>
              <li>
              <p class="MsoNormal" style="text-indent: -.25in; line-height: 150%; margin-left: 39.0pt">
              <font color="#000066">
              <span style="font-size:10.0pt;font-family:Arial">Emergency service 
              representatives on call around the clock.</span></font></li>
              <li>
              <p class="MsoNormal" style="text-indent: -.25in; line-height: 150%; margin-left: 39.0pt">
              <font color="#000066">
              <span style="font-size:10.0pt;font-family:Arial">Savings of up to 
              $10,000 in unexpected repairs per plan.&nbsp; (Up to two service calls 
              per year, per plan - $5,000 per service call.)</span></font></li>
              <li>
              <p class="MsoNormal" style="text-indent: -.25in; line-height: 150%; margin-left: 39.0pt">
              <font color="#000066">
              <span style="font-size:10.0pt;font-family:Arial">No negotiating 
              with contractors or plumbers.&nbsp; PLUS…No Deductible!</span></font></li>
              <li>
              <p class="MsoNormal" style="text-indent: -.25in; line-height: 150%; margin-left: 39.0pt">
              <font color="#000066">
              <span style="font-size:10.0pt;font-family:Arial">Program is easy, 
              affordable and convenient!</span></font></li>
              <li>
              <p class="MsoNormal" style="text-indent: -.25in; line-height: 150%; margin-left: 39.0pt">
              <font color="#000066">
              <span style="font-size:10.0pt;font-family:Arial">Convenient 
              payment on your quarterly water bill.</span></font></li>
              <li>
              <p class="MsoNormal" style="text-indent: -.25in; line-height: 150%; margin-left: 39.0pt">
              <font color="#000066">
              <span style="font-size:10.0pt;font-family:Arial">Choose water line 
              protection, sewer line protection, or both. </span><b>
              <span style="font-size: 10.0pt; font-family: Arial"><br>
&nbsp;</span></b></font></li>
            </ul>
            <p class="MsoNormal"><font color="#000066">
            <span style="font-size:10.0pt;font-family:Arial">CHOOSE WATER OR 
            SEWER LINE PROTECTION OR <u>SAVE </u>WHEN YOU CHOOSE <u>BOTH</u> FOR 
            JUST $13 A MONTH!</span></font></p>
            <p class="MsoNormal"><font color="#000066"><b>
            <span style="font-size:10.0pt;font-family:Arial">To Register for
            </span></b></font><b><font face="Arial" color="#000066">
            <font size="2">LineCare</font><sup><font size="1">SM </font></sup></font>
            </b><font color="#000066"><b>
            <span style="font-size:10.0pt;font-family:Arial">Water, </span></b>
            </font><b><font face="Arial" color="#000066"><font size="2">LineCare</font><sup><font size="1">SM </font></sup></font>
            </b><font color="#000066"><b>
            <span style="font-size:10.0pt;font-family:Arial">Sewer or </span>
            </b></font><b><font face="Arial" color="#000066"><font size="2">LineCare</font><sup><font size="1">SM </font></sup></font>
            </b><font color="#000066"><b>
            <span style="font-size:10.0pt;font-family:Arial">Plus, see links 
            below.</span></b><span style="font-size:10.0pt;font-family:Arial">&nbsp;</span></font></p>
            <p class="MsoNormal"><font color="#000066">
            <span style="font-size:10.0pt;font-family:Arial">
            <a href="lineCareMWC.asp"><font color="#000066">Middlesex Water 
            Company Customers – </font><b><font color="#000066">Click here.</font></b></a></span></font></p>
            <p class="MsoNormal"><font color="#000066">
            <span style="font-size:10.0pt;font-family:Arial">
            <a href="lineCarePWC.asp"><font color="#000066">Pinelands Water 
            Company Customers - </font><b><font color="#000066">Click here.</font></b></a><b><br>
&nbsp;</b></span></font></td>
            </td>
          </tr>
        </table>
        </td>
        <td width="25">&nbsp;</td>
      </tr>
      <tr>
        <td width="15">&nbsp;</td>
        <td width="88%">
        <p>
        <FONT SIZE="2" COLOR="#000066" FACE="arial, helvetica"><br></FONT><font face="arial, helvetica" size="2">
        <a href="customerService.htm">Contact Numbers</a></font><font face="arial, helvetica" color="#000066" size="2"> 
        | </font><font face="arial, helvetica" size="2"><a href="rates.htm">
        Rates</a></font><font face="arial, helvetica" color="#000066" size="2"> 
        | </font><font face="arial, helvetica" size="2"><a href="tips.htm">Tips
        </a></font><font face="arial, helvetica" color="#000066" size="2">&nbsp;|
        </font><font face="arial, helvetica" size="2">
        <a onclick="window.open('../sharedFiles/tariffPopUp.html','Disclaimer','width=500,height=200,scrollbars=no')" href="#">
        Tariff</a><font face="arial, helvetica" color="#000066" size="2"> |
        </font><a href="lineCare.htm">LineCare Service Line Maintenance Plan</a></font><br>
        <br>
&nbsp;</td>
        <td width="30">&nbsp;</td>
      </tr>
    </table>
    

    
    </td>
    
    <td width="36" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="36" id="AutoNumber4" height="100%">
  <tr>
    <td width="2"><img src="images/empty.gif" width="1" height="1"></td>
    <td width="1" bgcolor="#C0C0C0"><img src="images/empty.gif" width="1" height="1"></td>
    <td width="1" bgcolor="#808080"><img src="images/empty.gif" width="1" height="1"></td>
    <td width="1" bgcolor="#406F8D"><img src="images/empty.gif" width="1" height="1"></td>
    <td width="31" bgcolor="#005E9A"><img src="images/empty.gif" width="1" height="1"></td>
  </tr>
</table>
 </td>
  </tr>
  </table>


<TABLE WIDTH=700 BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD COLSPAN=9>
			<IMG SRC="images/waves700v13BOTTOM_01.gif" WIDTH=700 HEIGHT=11 BORDER=0 USEMAP="#waves700v13BOTTOM_01_Map"></TD>
	</TR>
	<TR>
		<TD ROWSPAN=2>
			<IMG SRC="images/waves700v13BOTTOM_02.gif" WIDTH=82 HEIGHT=26 BORDER=0 USEMAP="#waves700v13BOTTOM_02_Map"></TD>
		<TD>
			<A HREF="aboutUs.htm"
				ONMOUSEOVER="changeImages('waves700v13BOTTOM_03', 'images/waves700v13BOTTOM_03-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13BOTTOM_03', 'images/waves700v13BOTTOM_03.gif'); return true;">
				<IMG NAME="waves700v13BOTTOM_03" SRC="images/waves700v13BOTTOM_03.gif" WIDTH=57 HEIGHT=17 BORDER=0 USEMAP="#waves700v13BOTTOM_03_Map"></A></TD>
		<TD>
			<A HREF="news.htm"
				ONMOUSEOVER="changeImages('waves700v13BOTTOM_04', 'images/waves700v13BOTTOM_04-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13BOTTOM_04', 'images/waves700v13BOTTOM_04.gif'); return true;">
				<IMG NAME="waves700v13BOTTOM_04" SRC="images/waves700v13BOTTOM_04.gif" WIDTH=44 HEIGHT=17 BORDER=0 USEMAP="#waves700v13BOTTOM_04_Map"></A></TD>
		<TD>
			<A HREF="customerService.htm"
				ONMOUSEOVER="changeImages('waves700v13BOTTOM_05', 'images/waves700v13BOTTOM_05-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13BOTTOM_05', 'images/waves700v13BOTTOM_05.gif'); return true;">
				<IMG NAME="waves700v13BOTTOM_05" SRC="images/waves700v13BOTTOM_05.gif" WIDTH=104 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="shareholderInfo.htm"
				ONMOUSEOVER="changeImages('waves700v13BOTTOM_06', 'images/waves700v13BOTTOM_06-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13BOTTOM_06', 'images/waves700v13BOTTOM_06.gif'); return true;">
				<IMG NAME="waves700v13BOTTOM_06" SRC="images/waves700v13BOTTOM_06.gif" WIDTH=101 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="waterQuality.htm"
				ONMOUSEOVER="changeImages('waves700v13BOTTOM_07', 'images/waves700v13BOTTOM_07-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13BOTTOM_07', 'images/waves700v13BOTTOM_07.gif'); return true;">
				<IMG NAME="waves700v13BOTTOM_07" SRC="images/waves700v13BOTTOM_07.gif" WIDTH=87 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="aboutH2o.htm"
				ONMOUSEOVER="changeImages('waves700v13BOTTOM_08', 'images/waves700v13BOTTOM_08-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13BOTTOM_08', 'images/waves700v13BOTTOM_08.gif'); return true;">
				<IMG NAME="waves700v13BOTTOM_08" SRC="images/waves700v13BOTTOM_08.gif" WIDTH=74 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="contactUs.htm"
				ONMOUSEOVER="changeImages('waves700v13BOTTOM_09', 'images/waves700v13BOTTOM_09-over.gif'); return true;"
				ONMOUSEOUT="changeImages('waves700v13BOTTOM_09', 'images/waves700v13BOTTOM_09.gif'); return true;">
				<IMG NAME="waves700v13BOTTOM_09" SRC="images/waves700v13BOTTOM_09.gif" WIDTH=66 HEIGHT=17 BORDER=0></A></TD>
		<TD ROWSPAN=2>
			<IMG SRC="images/waves700v13BOTTOM_10.gif" WIDTH=85 HEIGHT=26></TD>
	</TR>
	<TR>
		<TD COLSPAN=7>
			<IMG SRC="images/waves700v13BOTTOM_11.gif" WIDTH=533 HEIGHT=9 BORDER=0 USEMAP="#waves700v13BOTTOM_11_Map"></TD>
	</TR>
</TABLE>

<MAP NAME="waves700v13TOP_01_Map">
<AREA SHAPE="rect" ALT="" COORDS="63,8,183,66" HREF="index.htm">
</MAP>
<!-- End ImageReady Slices -->
</BODY>
</HTML>