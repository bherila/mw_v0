<%@language=vbscript%>
<%

%>
<html>

<head>
<meta name="Author" content="GreenHouse Design, Inc. - www.ghdweb.com">
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>MWC - LineCare</title>
<!-- ImageReady Preload Script (waves800v8Top.psd) -->
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
		menu_03_over = newImage("images/menu_03-over.gif");
		menu_04_over = newImage("images/menu_04-over.gif");
		menu_05_over = newImage("images/menu_05-over.gif");
		menu_06_over = newImage("images/menu_06-over.gif");
		menu_07_over = newImage("images/menu_07-over.gif");
		menu_08_over = newImage("images/menu_08-over.gif");
		menu_09_over = newImage("images/menu_09-over.gif");
		links_03_over = newImage("images/links_03-over.gif");
		links_04_over = newImage("images/links_04-over.gif");
		links_05_over = newImage("images/links_05-over.gif");
		links_06_over = newImage("images/links_06-over.gif");
		links_07_over = newImage("images/links_07-over.gif");
		links_08_over = newImage("images/links_08-over.gif");
		links_09_over = newImage("images/links_09-over.gif");
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
</head>

<body ONLOAD="preloadImages();">

<table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="800" id="AutoNumber1" cellpadding="0">
  <tr>
    <td width="800" colspan="3">
    
    <!-- ImageReady Slices (waves800v8Top.psd) -->
<TABLE WIDTH=800 BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD COLSPAN=9>
			<IMG SRC="images/menu_01.gif" WIDTH=800 HEIGHT=125 BORDER=0 USEMAP="#menu_01_Map"></TD>
	</TR>
	<TR>
		<TD ROWSPAN=2>
			<IMG SRC="images/menu_02.gif" WIDTH=16 HEIGHT=38></TD>
		<TD>
			<A HREF="aboutUs.htm"
				ONMOUSEOVER="changeImages('menu_03', 'images/menu_03-over.gif'); return true;"
				ONMOUSEOUT="changeImages('menu_03', 'images/menu_03.gif'); return true;">
				<IMG NAME="menu_03" SRC="images/menu_03.gif" WIDTH=82 HEIGHT=22 BORDER=0></A></TD>
		<TD>
			<A HREF="news.htm"
				ONMOUSEOVER="changeImages('menu_04', 'images/menu_04-over.gif'); return true;"
				ONMOUSEOUT="changeImages('menu_04', 'images/menu_04.gif'); return true;">
				<IMG NAME="menu_04" SRC="images/menu_04.gif" WIDTH=68 HEIGHT=22 BORDER=0></A></TD>
		<TD>
			<A HREF="customerService.htm"
				ONMOUSEOVER="changeImages('menu_05', 'images/menu_05-over.gif'); return true;"
				ONMOUSEOUT="changeImages('menu_05', 'images/menu_05.gif'); return true;">
				<IMG NAME="menu_05" SRC="images/menu_05.gif" WIDTH=140 HEIGHT=22 BORDER=0></A></TD>
		<TD>
			<A HREF="shareholderInfo.htm"
				ONMOUSEOVER="changeImages('menu_06', 'images/menu_06-over.gif'); return true;"
				ONMOUSEOUT="changeImages('menu_06', 'images/menu_06.gif'); return true;">
				<IMG NAME="menu_06" SRC="images/menu_06.gif" WIDTH=145 HEIGHT=22 BORDER=0></A></TD>
		<TD>
			<A HREF="waterQuality.htm"
				ONMOUSEOVER="changeImages('menu_07', 'images/menu_07-over.gif'); return true;"
				ONMOUSEOUT="changeImages('menu_07', 'images/menu_07.gif'); return true;">
				<IMG NAME="menu_07" SRC="images/menu_07.gif" WIDTH=125 HEIGHT=22 BORDER=0></A></TD>
		<TD>
			<A HREF="aboutH2o.htm"
				ONMOUSEOVER="changeImages('menu_08', 'images/menu_08-over.gif'); return true;"
				ONMOUSEOUT="changeImages('menu_08', 'images/menu_08.gif'); return true;">
				<IMG NAME="menu_08" SRC="images/menu_08.gif" WIDTH=108 HEIGHT=22 BORDER=0></A></TD>
		<TD>
			<A HREF="contactUs.htm"
				ONMOUSEOVER="changeImages('menu_09', 'images/menu_09-over.gif'); return true;"
				ONMOUSEOUT="changeImages('menu_09', 'images/menu_09.gif'); return true;">
				<IMG NAME="menu_09" SRC="images/menu_09.gif" WIDTH=98 HEIGHT=22 BORDER=0></A></TD>
		<TD ROWSPAN=2>
			<IMG SRC="images/menu_10.gif" WIDTH=18 HEIGHT=38></TD>
	</TR>
	<TR>
		<TD COLSPAN=7>
			<IMG SRC="images/menu_11.gif" WIDTH=766 HEIGHT=16></TD>
	</TR>
</TABLE>

    
    </td>
  </tr>
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
    <td width="728">
    <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber2" height="100%">
      <tr>
        <td width="15">&nbsp;</td>
        <td width="88%"><font face="Arial" color="#000066"><b>LineCare</b><sup><font size="2">SM</font></sup></font><p>
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
        should leak or your sewer line get clogged or break, it�s your 
        responsibility to repair it.&nbsp; A typical water line replacement can range 
        from $2,000-$5,000 and sewer repairs can cost even more. </span></font><font face="Arial" color="#000066">
        <font size="2">LineCare</font><sup><font size="1">SM</font><font size="2"> </font></sup></font>
        <font color="#000066"><span style="font-size:10.0pt;font-family:Arial">
        can give you peace of mind in these kinds of emergencies.</span></font></p>
        <p class="MsoNormal"><b><font face="Arial" color="#000066">
        <font size="2">LineCare</font><sup><font size="1">SM</font></sup></font></b><font color="#000066"><b><span style="font-size: 10.0pt; font-family: Arial"> 
        Is a Simple And Affordable Maintenance Program for Water and Sewer Lines</span></b><span style="font-size: 10.0pt; font-family: Arial">.</span></font></td>
        <td width="25">&nbsp;</td>
      </tr>
      <tr>
        <td width="15">&nbsp;</td>
        <td width="88%">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="642" id="AutoNumber3" height="141">
          <tr>
            <td width="635" valign="top" height="16"><p>
            <p>
            <p align="center">
            <img border="0" src="../sharedImages/New_House_Meter.jpg" width="582" height="460"></td>
            </td>
          </tr>
          <tr>
            <td width="635" valign="top" height="16"><p>
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
              with contractors or plumbers.&nbsp; PLUS�No Deductible!</span></font></li>
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
            <a href="lineCareMWC.asp"><font color="#000066">Middlesex 
            Water Company Customers � </font><font color="#000066"><b>Click 
            here.</b></font></a></span></font></p>
            <p class="MsoNormal"><font color="#000066">
            <span style="font-size:10.0pt;font-family:Arial">
            <a href="lineCarePWC.asp"><font color="#000066">Pinelands 
            Water Company Customers - </font><font color="#000066"><b>Click 
            here.</b></font></a></span></font><br>
&nbsp;</td>
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
&nbsp;</td>
        <td width="25">&nbsp;</td>
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
  <tr>
    <td width="34" colspan="3">
    
    <!-- ImageReady Slices (waves800v8Buttom.psd) -->
<TABLE WIDTH=800 BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD COLSPAN=9>
			<IMG SRC="images/links_01.gif" WIDTH=800 HEIGHT=12></TD>
	</TR>
	<TR>
		<TD ROWSPAN=2>
			<IMG SRC="images/links_02.gif" WIDTH=133 HEIGHT=23></TD>
		<TD>
			<A HREF="aboutUs.htm"
				ONMOUSEOVER="changeImages('links_03', 'images/links_03-over.gif'); return true;"
				ONMOUSEOUT="changeImages('links_03', 'images/links_03.gif'); return true;">
				<IMG NAME="links_03" SRC="images/links_03.gif" WIDTH=57 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="news.htm"
				ONMOUSEOVER="changeImages('links_04', 'images/links_04-over.gif'); return true;"
				ONMOUSEOUT="changeImages('links_04', 'images/links_04.gif'); return true;">
				<IMG NAME="links_04" SRC="images/links_04.gif" WIDTH=43 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="customerService.htm"
				ONMOUSEOVER="changeImages('links_05', 'images/links_05-over.gif'); return true;"
				ONMOUSEOUT="changeImages('links_05', 'images/links_05.gif'); return true;">
				<IMG NAME="links_05" SRC="images/links_05.gif" WIDTH=104 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="shareholderInfo.htm"
				ONMOUSEOVER="changeImages('links_06', 'images/links_06-over.gif'); return true;"
				ONMOUSEOUT="changeImages('links_06', 'images/links_06.gif'); return true;">
				<IMG NAME="links_06" SRC="images/links_06.gif" WIDTH=102 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="waterQuality.htm"
				ONMOUSEOVER="changeImages('links_07', 'images/links_07-over.gif'); return true;"
				ONMOUSEOUT="changeImages('links_07', 'images/links_07.gif'); return true;">
				<IMG NAME="links_07" SRC="images/links_07.gif" WIDTH=88 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="aboutH2o.htm"
				ONMOUSEOVER="changeImages('links_08', 'images/links_08-over.gif'); return true;"
				ONMOUSEOUT="changeImages('links_08', 'images/links_08.gif'); return true;">
				<IMG NAME="links_08" SRC="images/links_08.gif" WIDTH=73 HEIGHT=17 BORDER=0></A></TD>
		<TD>
			<A HREF="contactUs.htm"
				ONMOUSEOVER="changeImages('links_09', 'images/links_09-over.gif'); return true;"
				ONMOUSEOUT="changeImages('links_09', 'images/links_09.gif'); return true;">
				<IMG NAME="links_09" SRC="images/links_09.gif" WIDTH=71 HEIGHT=17 BORDER=0></A></TD>
		<TD ROWSPAN=2>
			<IMG SRC="images/links_10.gif" WIDTH=129 HEIGHT=23></TD>
	</TR>
	<TR>
		<TD COLSPAN=7>
			<IMG SRC="images/links_11.gif" WIDTH=538 HEIGHT=6></TD>
	</TR>
</TABLE>
<!-- End ImageReady Slices -->
    
    </td>
  </tr>
</table>
<MAP NAME="menu_01_Map">
<AREA SHAPE="rect" ALT="Go to MWC Homepage" COORDS="75,11,222,81" HREF="index.htm">
</MAP>
<!-- End ImageReady Slices -->

</body>

</html>