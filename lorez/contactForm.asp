<%@language=vbscript%>
<%
	if Request.Form("action") = "submit" Then
			Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
			Mailer.RemoteHost = "scriptmail.intermedia.net"
			Mailer.FromAddress = "lg@ghdweb.com"
			Mailer.FromName = "Web User"
			Mailer.AddRecipient "Bernadette M. Sohler", "bsohler@middlesexwater.com"
			Mailer.Subject = "Investor Relations Contact Form"

			messBody = vbCrLf & "Submitted information:" & vbCrLf & "--------------------------------------------------------------" & vbCrLf & vbCrLf

			messBody = messBody & "Name: " & Request.Form("FirstName") & " " & Request.Form("LastName") & vbCrLf
			messBody = messBody & "Company: " & Request.Form("CompanyName") & vbCrLf
			messBody = messBody & "Title: " & Request.Form("Title") & vbCrLf
			messBody = messBody & "Address: " & Request.Form("Address") & vbCrLf
			messBody = messBody & "         " & Request.Form("City") & ", " & Request.Form("State") & " " & Request.Form("Zip") & vbCrLf
			messBody = messBody & "Country: " & Request.Form("Country") & vbCrLf
			messBody = messBody & "Phone: " & Request.Form("Phone") & vbCrLf
			messBody = messBody & "Fax: " & Request.Form("Fax") & vbCrLf
			
			messBody = messBody & "E-mail: " & Request.Form("Email") & vbCrLf & vbCrLf

			If Request.form("Addme")="on" then
				messBody = messBody & "YES! Please add my name to your Investor Distribution List." & vbCrLf & vbCrLf
			end if

			messBody = messBody & "Please send me the following: " & vbCrLf

			If Request.form("AnnualReport")="on" then
				messBody = messBody & "Annual Report" & vbCrLf
			end if

			If Request.form("10k")="on" then
				messBody = messBody & "10K" & vbCrLf
			end if

			If Request.form("10Q")="on" then
				messBody = messBody & "10Q" & vbCrLf
			end if

			If Request.form("DRIP")="on" then
				messBody = messBody & "Dividend Reinvestment Plan" & vbCrLf
			end if

			If Request.form("DirectDepofDiv")="on" then
				messBody = messBody & "Direct Deposit of Dividends" & vbCrLf
			end if


			Mailer.BodyText = messBody
				
			if Mailer.SendMail then
				Set Mailer = Nothing
				Response.Redirect "formok.htm"
			else
				Response.Write "<BR><BR><B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>Mail send failure. Error was: </FONT></B>" & Mailer.Response
			end if


	end if
%>

<html>
<HEAD>
<meta name="Author" content="GreenHouse Design, Inc. - www.ghdweb.com">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">

<TITLE>MWC - </TITLE>
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

// -->
</SCRIPT>
<!-- End Preload Script -->
<style>
<!--
h1
	{margin-top:2.0pt;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:0in;
	margin-bottom:.0001pt;
	line-height:150%;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Times New Roman";
	font-style:italic;
	text-decoration:underline;
	text-underline:single}
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
    <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="628" id="AutoNumberCONTENT">
      <tr>
        <td width="30" height="100%">&nbsp;</td>
        <td width="568">
        <b>
        <FONT SIZE="3" COLOR="#000066" FACE="Arial">Investor Contact Form:</FONT>
        </b>
        <p><FONT SIZE="2" COLOR="#000066" FACE="Arial">Please fill in this information entirely so that we can better
serve you.<br>
&nbsp;</FONT></td>
        <td width="30" height="100%">&nbsp;</td>
      </tr>
      <tr>
        <td width="30" height="100%">&nbsp;</td>
        <td width="568">        

<form method="post" action="contactForm.asp">


<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="568" id="AutoNumberFORM">
  <tr>
    <td width="100%">
    
    <TABLE BORDER="0" CELLPADDING="2" width="280" style="border-collapse: collapse" bordercolor="#008000" cellspacing="0" id="AutoNumberFORM1">
		<TR>
			<TD width="98">
<b>
<FONT SIZE="2" FACE="Arial"  color="#000066">First Name:</font></b></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="FirstName" SIZE="14"></TD>
		</TR>
		<TR>
			<TD width="98"><b><FONT SIZE="2" FACE="Arial"  color="#000066">Last 
            Name:</FONT></b></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="LastName" SIZE="25" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><b><FONT SIZE="2" FACE="Arial"  color="#000066">
            Company Name:</FONT></b></TD>
			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="CompanyName" SIZE="25" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">
            Title:</FONT></B></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="Title" SIZE="13" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">
            Address:</FONT></B></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="Address" SIZE="25" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">City:</FONT></B></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="City" SIZE="25" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">
            State:</FONT></B></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="State" SIZE="6" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">Zip:</FONT></B></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="Zip" SIZE="6" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">
            Country:</FONT></B></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="Country" SIZE="6" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">
            Phone:</FONT></B></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="Phone" SIZE="10" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><b><FONT SIZE="2" FACE="Arial"  color="#000066">Fax:</FONT></b></TD>

			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="Fax" SIZE="10" MAXLENGTH="25"></TD>
		</TR>

		<TR>
			<TD width="98"><b><FONT SIZE="2" FACE="Arial"  color="#000066">
            E-Mail:</FONT></b></TD>


			<TD WIDTH="218"><INPUT class="input" TYPE="TEXT" NAME="Email" SIZE="25" MAXLENGTH="25"></TD>
		</TR>
	</TABLE>
</td>

<td valign="top">
<table border="0" cellpadding="3" cellspacing="3" style="border-collapse: collapse" bordercolor="#FF00FF" width="268" id="AutoNumberFORM2">
          <tr>
            <td width="9%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	        <INPUT TYPE="CHECKBOX" NAME="Addme"></td>
            <td width="91%">
<ALIGN=JUSTIFY>
    <FONT SIZE="2" COLOR="#000066" FACE="Arial">Please add my
	name to your Investor Distribution List.</FONT></td>
          </tr>
          <tr>
            <td width="9%" colspan="2">
<ALIGN=JUSTIFY>
<ALIGN=JUSTIFY>
	        <FONT SIZE="2" COLOR="#000066" FACE="Arial"><BR></FONT>
<ALIGN=JUSTIFY>
<b>
	        <FONT SIZE="2" COLOR="#000066" FACE="Arial">Please send me the following:<BR></FONT>
</b></td>
          </tr>
          <tr>
            <td width="9%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	        <INPUT TYPE="CHECKBOX" NAME="AnnualReport"></font></td>
            <td width="91%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	<P><FONT SIZE="2" COLOR="#000066" FACE="Arial">&nbsp;Annual
	Report</FONT></P>
	    </font>
            </td>
          </tr>
          <tr>
            <td width="9%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	        <INPUT TYPE="CHECKBOX" NAME="10K"></font></td>
            <td width="91%">
<ALIGN=JUSTIFY>
    <FONT SIZE="2" COLOR="#000066" FACE="Arial">10K</FONT></td>
          </tr>
          <tr>
            <td width="9%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	        <INPUT TYPE="CHECKBOX" NAME="10Q"></font></td>
            <td width="91%">
<ALIGN=JUSTIFY>
    <FONT SIZE="2" COLOR="#000066" FACE="Arial">10Q</FONT></td>
          </tr>
          <tr>
            <td width="9%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	        <INPUT TYPE="CHECKBOX" NAME="DRIP"></td>
            <td width="91%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
<ALIGN=JUSTIFY>
	<P><FONT SIZE="2" COLOR="#000066" FACE="Verdana">&nbsp;</FONT><FONT SIZE="2" COLOR="#000066" FACE="Arial">Dividend Reinvestment
	Plan</FONT></P>
	        </td>
          </tr>
          <tr>
            <td width="9%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	        <INPUT TYPE="CHECKBOX" NAME="DirectDepofDiv"></td>
            <td width="91%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
<ALIGN=JUSTIFY>
	<P><FONT SIZE="2" COLOR="#000066" FACE="Verdana">&nbsp;</FONT><FONT SIZE="2" COLOR="#000066" FACE="Arial">Direct
	Deposit of Dividends</FONT></P>
	        </td>
          </tr>
          <tr>
            <td width="9%" colspan="2">
<p align="center">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
<ALIGN=JUSTIFY>
<FONT SIZE="2" COLOR="#000066" FACE="Arial"><input type="hidden" name="action" value="submit"><input type="submit" value="submit">&nbsp;
	<INPUT TYPE="RESET" VALUE="Clear"></FONT> </td>
          </tr>
        </table>

</td>
  </tr>
</table>
</FORM>

        </td>
        <td width="30" height="100%">&nbsp;</td>
      </tr>
      <tr>
        <td width="30" height="100%">&nbsp;</td>
        <td width="568"><p><br><font face="arial, helvetica" color="#000066" size="2">
        <a href="shareholderInfo.htm">Investor Relations</a> 
        | </font><font face="arial, helvetica" size="2">
        <a href="faq.htm">FAQ</a></font><font face="arial, helvetica" color="#000066" size="2"> 
        | </font><font face="arial, helvetica" size="2">
        <a href="drip.htm">DRIP</a></font><font face="arial, helvetica" color="#000066" size="2"> 
        | </font><font face="arial, helvetica" size="2">
        <a href="contactForm.asp">Contact Form</a></font><font face="arial, helvetica" color="#000066" size="2"> </font><font face="arial, helvetica" size="2">
        | <a href="annualReport.htm">Annual Report</a></font><font face="arial, helvetica" color="#000066" size="2"> </font><font face="arial, helvetica" size="2">
        | <a href="corpGov.htm">Corporate Governance</a></font><br>
&nbsp;</td>
        <td width="30" height="100%">&nbsp;</td>
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