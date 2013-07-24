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

<head>
<meta name="Author" content="GreenHouse Design, Inc. - www.ghdweb.com">
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>MWC - Contact Form</title>
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
</head>

<body ONLOAD="preloadImages();">

<A NAME="Top"></A><table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="800" id="AutoNumber1" cellpadding="0">
  <tr>
    <td width="800">

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

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="800" id="AutoNumber2" height="100%">
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
    <td width="678" height="100%" valign="top">

    <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="727" id="AutoNumberCONTENT" height="100%">
      <tr>
        <td width="30">&nbsp;</td>
        <td width="667">
        <b>



        <FONT SIZE="3" COLOR="#000066" FACE="Arial">Investor Contact Form:</FONT>



        </b>
        <p><FONT SIZE="2" COLOR="#000066" FACE="Arial">Please fill in this information entirely so that we can better
serve you.<br>
&nbsp;</FONT></td>
        <td width="30">&nbsp;</td>
      </tr>
      <tr>
        <td width="30">&nbsp;</td>
        <td width="667">        
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="667" id="AutoNumberCOPY" height="100%">
          <tr>
            <td width="322" valign="top" height="100%">
        <p>
        

<form method="post" action="contactForm.asp">


<DIV>
<ALIGN=JUSTIFY>
	<TABLE BORDER="0" CELLPADDING="2" width="330">
		<TR>
			<TD width="98">
<b>
<FONT SIZE="2" FACE="Arial"  color="#000066">First Name:</font></b></TD>

			<TD WIDTH="218">
            <input class="input" type=text SIZE="14" name="FirstName"></TD>
		</TR>
		<TR>
			<TD width="98"><b><FONT SIZE="2" FACE="Arial"  color="#000066">Last Name:</FONT></b></TD>

			<TD WIDTH="218">
            <input class="input" type=text SIZE="25" name="LastName"></TD>
		</TR>

		<TR>
			<TD width="98"><b><FONT SIZE="2" FACE="Arial"  color="#000066">Company Name:</FONT></b></TD>
			<TD WIDTH="218">
            <input class="input" type=text SIZE="25" name="CompanyName"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">Title:</FONT></B></TD>

			<TD WIDTH="218">
            <input class="input" type=text SIZE="13" name="Title"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">Address:</FONT></B></TD>

			<TD WIDTH="218">
            <input class="input" type=text SIZE="25" name="Address"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">City:</FONT></B></TD>

			<TD WIDTH="218">
            <input class="input" type=text SIZE="25" name="City"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">State:</FONT></B></TD>

			<TD WIDTH="218">
            <input class="input" type=text SIZE="6" name="State"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">Zip:</FONT></B></TD>

			<TD WIDTH="218"><input class="input" type=text SIZE="6" name="Zip"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">Country:</FONT></B></TD>

			<TD WIDTH="218">
            <input class="input" type=text SIZE="6" name="Country"></TD>
		</TR>

		<TR>
			<TD width="98"><B><FONT SIZE="2" FACE="Arial"  color="#000066">Phone:</FONT></B></TD>

			<TD WIDTH="218">
            <input class="input" type=text SIZE="14" name="Phone"></TD>
		</TR>

		<TR>
			<TD width="98"><b><FONT SIZE="2" FACE="Arial"  color="#000066">Fax:</FONT></b></TD>

			<TD WIDTH="218"><input class="input" type=text SIZE="14" name="Fax"></TD>
		</TR>

		<TR>
			<TD width="98"><b><FONT SIZE="2" FACE="Arial"  color="#000066">E-Mail:</FONT></b></TD>


			<TD WIDTH="218">
            <input class="input" type=text SIZE="25" name="Email"></TD>
		</TR>
	</TABLE>



            </td>
            <td width="42" height="264">&nbsp;</td>
            <td width="290" valign="top" height="264">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	    <table border="0" cellpadding="3" cellspacing="3" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber4">
          <tr>
            <td width="9%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	        <input type=CHECKBOX name="Addme"></FONT></td>
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
	        <input type=CHECKBOX name="AnnualReport"></font></td>
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
	        <input type=CHECKBOX name="10k"></font></td>
            <td width="91%">
<ALIGN=JUSTIFY>
    <FONT SIZE="2" COLOR="#000066" FACE="Arial">10K</FONT></td>
          </tr>
          <tr>
            <td width="9%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	        <input type=CHECKBOX name="10Q"></font></td>
            <td width="91%">
<ALIGN=JUSTIFY>
    <FONT SIZE="2" COLOR="#000066" FACE="Arial">10Q</FONT></td>
          </tr>
          <tr>
            <td width="9%">
<ALIGN=JUSTIFY>
<FONT SIZE="2" FACE="Arial">
	        <input type=CHECKBOX name="DRIP"></font></td>
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
	        <input type=CHECKBOX name="DirectDepofDiv"></font></td>
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
	    </font>
</DIV>

</FORM>
        
        
        </td>
            <td width="23" height="200">&nbsp;</td>
            <td width="322" valign="top" height="100%">
			&nbsp;</td>
          </tr>
          <tr>
            <td width="667" valign="top" height="16" colspan="3"><p>
            </td>
            </td>
          </tr>
        </table>
        </td>
        <td width="30">&nbsp;</td>
      </tr>
      <tr>
        <td width="30">&nbsp;</td>
        <td width="667"><p><br><font face="arial, helvetica" color="#000066" size="2">
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


	</td>
  </tr>
  <tr>
    <td width="800">
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