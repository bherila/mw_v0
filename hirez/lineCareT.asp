<%@language=vbscript%>
<%
	if Request.Form("action") = "submit" Then
			Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
			Mailer.RemoteHost = "scriptmail.intermedia.net"
			Mailer.FromAddress = "lg@ghdweb.com"
			Mailer.FromName = "Web User"
			Mailer.AddRecipient "Bernadette M. Sohler", "bsohler@middlesexwater.com"
			Mailer.Subject = "LineCare Form"
			errField = ""

			messBody = vbCrLf & "Submitted information:" & vbCrLf & "--------------------------------------------------------------" & vbCrLf & vbCrLf

			messBody = messBody & "Name: " & Request.Form("Name") & vbCrLf
			messBody = messBody & "Address: " & Request.Form("Address") & vbCrLf
			messBody = messBody & "         " & Request.Form("City") & ", " & Request.Form("State") & " " & Request.Form("Zip") & vbCrLf
			messBody = messBody & "Daytime Phone: " & Request.Form("Phone") & vbCrLf
			messBody = messBody & "Evening Phone: " & Request.Form("nightPhone") & vbCrLf
			messBody = messBody & "Fax Number: " & Request.Form("Fax") & vbCrLf
			messBody = messBody & "E-mail: " & Request.Form("Email") & vbCrLf & vbCrLf
			messBody = messBody & "Account Number: " & Request.Form("Account") & vbCrLf & vbCrLf
			messBody = messBody & "Referred by: " & Request.Form("Referral") & vbCrLf & vbCrLf

			If Request.form("Agreement")="on" then
				messBody = messBody & "I have read and understood the terms..." & vbCrLf & vbCrLf
			else
				errField = "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>**Agreement Checkbox was not checked</FONT></B><BR>" & vbCrLf & vbCrLf
			end if



			If Request.Form("Name") = "" Then
				errField = errField & "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>=> Name</FONT></B><BR>" & vbCrLf & vbCrLf
			end if
			If Request.Form("Address") = "" Then
				errField = errField & "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>=> Address</FONT></B><BR>" & vbCrLf & vbCrLf
			end if
			If Request.Form("City") = "" Then
				errField = errField & "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>=> City</FONT></B><BR>" & vbCrLf & vbCrLf
			end if
			If Request.Form("State") = "" Then
				errField = errField & "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>=> State</FONT></B><BR>" & vbCrLf & vbCrLf
			end if
			If Request.Form("Zip") = "" Then
				errField = errField & "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>=> Zip</FONT></B><BR>" & vbCrLf & vbCrLf
			end if
			If Request.Form("Phone") = "" Then
				errField = errField & "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>=> Daytime Phone</FONT></B><BR>" & vbCrLf & vbCrLf
			end if



			If errField <> "" Then
				Response.Write "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>Please go back and correct the following:</FONT></B><BR>" & errField
			else

				Mailer.BodyText = messBody
				
				if Mailer.SendMail then
					Set Mailer = Nothing
					Response.Redirect "formok.htm"
				else
					Response.Write "<BR><BR><B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>Mail send failure. Error was: </FONT></B>" & Mailer.Response
				end if
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
        <font face="Arial" color="#000066" size="2"><b>WHAT YOU DON’T KNOW CAN 
        COST YOU!</b><br>
        <span style="FONT-WEIGHT: 400">Protect yourself and your property with 
        LineCare<sup>SM</sup><br>
        </span></font><font color="#000066"><br></font>
        <font face="Arial" color="#000066" size="2">
        <span style="FONT-WEIGHT: 400">Did you know that if there is a problem with your in home shut-off valve or a leak on the service line running from the curbstop to your home  that <b>YOU</b> are responsible for those repairs?</span></font></td>
        <td width="25">&nbsp;</td>
      </tr>
      <tr>
        <td width="15">&nbsp;</td>
        <td width="88%">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="642" id="AutoNumber3" height="141">
          <tr>
            <td width="635" valign="top" height="16"><p>
            <p>
            <p>
            <FONT FACE="Arial" SIZE="2" COLOR="#000066">
            <IMG BORDER="0" SRC="images/house.gif" width="600" height="500"></FONT></td>
            </td>
          </tr>
          <tr>
            <td width="635" valign="top" height="16"><p>
            <p>
            <p>
        <FONT FACE="Arial" SIZE="2" COLOR="#000066">
            <SPAN STYLE="font-weight: 400">The average repair or replacement of a single leaking service line 
            can cost over $3,000. And, most homeowner insurance policies don’t 
            offer coverage for this type of repair work.<br>
            <br>
            </SPAN>
            <B>DON’T GET CAUGHT OFF GUARD! <A HREF="#terms">APPLY ONLINE NOW</A> FOR LineCare<SUP>SM</SUP></B>
            <SPAN STYLE="font-weight: 400">, a water service line maintenance plan offered by Utility Service 
            Affiliates (USA) Inc., a subsidiary of Middlesex Water Company.<br>
&nbsp;</SPAN></FONT></td>
            </td>
          </tr>
        </table>
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="642" id="AutoNumber3" height="127">
          <tr>
            <td width="310" valign="top" height="105">
        <p>
        <FONT FACE="Arial" SIZE="2" COLOR="#000066">
            <SPAN STYLE="font-weight: 700">Consider this…A typical leaking service line involves:</SPAN></FONT><p>
            <UL>
            <LI><SPAN STYLE="font-weight: 400"><FONT FACE="Arial" SIZE="2" COLOR="#000066">Hiring a 
                plumber to locate, dig up and repair or replace the leaking pipe</FONT></SPAN><LI><FONT FACE="Arial" SIZE="2" COLOR="#000066"><SPAN STYLE="font-weight: 400">Calling 
                your water supplier to disconnect/shutoff the water supply</SPAN></FONT><LI><FONT FACE="Arial" SIZE="2" COLOR="#000066"><SPAN STYLE="font-weight: 400">Scheduling 
                a qualified plumber to handle repairs</SPAN></FONT><LI><FONT FACE="Arial" SIZE="2" COLOR="#000066"><SPAN STYLE="font-weight: 400">Planning 
                repair work appointments around your busy schedule</SPAN></FONT><LI><FONT FACE="Arial" SIZE="2" COLOR="#000066"><SPAN STYLE="font-weight: 400">Contracting 
                an experienced landscaper to restore the lawn or sidewalk</SPAN></FONT><LI><FONT FACE="Arial" SIZE="2" COLOR="#000066"><SPAN STYLE="font-weight: 400">Contacting 
                the water supplier to restore water service</SPAN></FONT>
                </UL>
                
                
                
                <p>
        <b>
        <FONT FACE="Arial" SIZE="2" COLOR="#000066">LineCare<SUP>SM</SUP> is the 
                EASY solution!</FONT></b><SPAN STYLE="font-weight: 400"><FONT FACE="Arial" COLOR="#000066"></p>
        <UL>
            <LI>&nbsp;</FONT><FONT FACE="Arial" SIZE="2" COLOR="#000066">Simple and 
            affordable</FONT><FONT FACE="Arial" COLOR="#000066"><LI>&nbsp;</FONT><FONT FACE="Arial" SIZE="2" COLOR="#000066">Just 
            $5 a month (plus tax)</FONT><FONT FACE="Arial" COLOR="#000066"><LI>&nbsp;</FONT><FONT FACE="Arial" SIZE="2" COLOR="#000066">Prompt, 
            professional service</FONT><FONT FACE="Arial" COLOR="#000066"><LI>&nbsp;</FONT><FONT FACE="Arial" SIZE="2" COLOR="#000066">Easy 
            payment</FONT><FONT FACE="Arial" COLOR="#000066"><LI>&nbsp;</FONT><FONT FACE="Arial" SIZE="2" COLOR="#000066">Authorized, 
            licensed plumbers</FONT><FONT FACE="Arial" COLOR="#000066"><LI>&nbsp;</FONT><FONT FACE="Arial" SIZE="2" COLOR="#000066">Peace 
            of mind</FONT></SPAN><p></UL>
        <p>&nbsp;</td>
            <td width="22" height="105">&nbsp;</td>
            <td width="310" valign="top" height="105">
        <p>
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">
            <B>How the Program Works…One Call Brings Peace of Mind</B><BR>
            <SPAN STYLE="font-weight: 400">If you spot a problem with your service line or shut-off valve, call 
            us toll free at 800-729-4030 to report the situation day or night.<BR>
            </SPAN>
            <BR>
                &nbsp;</FONT></p>
        <p>
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">
                <b>Here’s How You Benefit from LineCare<SUP>SM:</SUP></b></FONT></p>
        <ul style="margin-top: 0in; margin-bottom: 0in" type="disc">
          <li class="MsoNormal"><font color="#000066">
          <span style="font-size:10.0pt;font-family:Arial">Emergency service 
          representatives on call around the clock.</span></font></li>
          <li class="MsoNormal"><font color="#000066">
          <span style="font-size:10.0pt;font-family:Arial">Licensed 
          professionals will handle repairs quickly and completely.</span></font></li>
          <li class="MsoNormal"><font color="#000066">
          <span style="font-size:10.0pt;font-family:Arial">Savings of up to 
          $10,000 in unexpected repairs. (Up to two service calls per year – 
          $5,000 per service call.)</span></font></li>
          <li class="MsoNormal"><font color="#000066">
          <span style="font-size:10.0pt;font-family:Arial">All repairs 
          guaranteed for one year.</span></font></li>
          <li class="MsoNormal"><font color="#000066">
          <span style="font-size:10.0pt;font-family:Arial">No negotiating with 
          contractors or plumbers. PLUS…No Deductible!</span></font></li>
          <li class="MsoNormal"><font color="#000066">
          <span style="font-size:10.0pt;font-family:Arial">Program is easy, 
          affordable and convenient! No Hidden Charges!</span></font></li>
          <li class="MsoNormal"><font color="#000066">
        <span style="font-size: 10.0pt; font-family: Arial">Convenient payment 
        on your quarterly water bill.</span></font></li>
        </ul>
            </td>
          </tr>
          <tr>
            <td width="635" valign="top" height="16" colspan="3"><p>
            <p>
                        
			
			<H4><FONT FACE="Arial" SIZE="2" COLOR="#000066">
            You make the call. We do the work. NO hassles, NO worries, NO 
            inflated costs!<BR>
            <SPAN STYLE="font-weight: 400">
            <A HREF="#terms">Apply Online Now</A> or call us toll free at 
            800-729-4030 to register.
            </SPAN>
            </FONT></H4>
			
			
      <H4 ALIGN="left">
      <FONT FACE="Arial" SIZE="2" COLOR="#000066"><B>KEY TERMS AND CONDITIONS<br>
      </B></FONT><A NAME="terms"></A>
      <FONT FACE="Arial" COLOR="#000066" SIZE="2">Please read the terms and 
      conditions below and complete the application form
      that follows:</FONT></H4>
			
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">UTILITY SERVICE AFFILIATES, INC.</span></b></font><font face="Arial"><span style="color: #000066"><font size="2"><br>
            LineCare</font></span><font size="2"><span style="color: #000066"><sup>SM </sup></span></font><span style="color: #000066"><font size="2">is being 
            offered by Utility Service Affiliates, Inc. (“USA” or the 
            “Company”), a subsidiary of Middlesex Water Company (“Middlesex”). 
            This agreement is between USA and You, a subscriber in the LineCare<sup>SM</sup> 
            Water Line Protection Program.</font></span></font></p>
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">COVERAGE</span></b></font><font face="Arial"><span style="color: #000066"><font size="2"><br>
            The LineCare<sup>SM</sup></font></span><font color="#000066" size="2">Water 
            Service Line Maintenance Program (the “Plan”) covers all parts, 
            material and labor required to repair or replace the water service 
            line and customer shut-off valve (i.e. first inside shut-off valve) 
            for up to $5,000 per service call or up to two service calls per 
            year for a total of up to $10,000 annual coverage. USA or its agents 
            will determine whether to repair or replace any covered parts. 
            Repair or replacement includes excavation, as required, in the area 
            of repair or replacement. USA reserves the right to choose the 
            materials and/or parts to be utilized; however, all such materials 
            and/ or parts, and all work performed, will comply with all relevant 
            and applicable laws, regulations, codes and standards. Coverage also 
            includes the cost of water service shut off/turn on by Middlesex 
            Water and the restoration of sidewalks, paving and grass in areas 
            disturbed by excavation.</font></font></p>
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">ELIGIBILITY<br>
            </span></b><span style="color: #000066">To be eligible for coverage, 
            you must own or have a written legal responsibility and authority to 
            provide maintenance for the covered water service line (and 
            associated parts) that serves a residential dwelling served by 
            Middlesex Water Company.</span></font></p>
            <p class="MsoBodyText"><font face="Arial" size="2">
            <span style="color: #000066">The covered service line must be a 
            standard line that is no greater than 1-1/2 inches in diameter and 
            must conform to applicable plumbing codes. USA reserves the right to 
            deny Plan coverage for any reason.&nbsp; Separate Plan coverage is 
            required for each additional service connection and/or service line 
            at a premise. Plans are not transferable. LineCare<sup>SM</sup> is not available 
            in all areas.</span></font></p>
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">EXCLUSIONS</span></b><span style="color: #000066"><br>
            Coverage is limited to the service line from the curb box up to and 
            including the customer’s shut-off valve.&nbsp; Coverage does not include 
            any parts not specifically identified as covered. Items such as 
            pressurereducing valves, booster pumps, lawn and/or fire sprinkler 
            systems, meter pits, landscaping (trees, shrubbery) and decorative 
            stones are not included in Plan coverage. The Plan does not cover 
            repair of any leaks inside the premises beyond (downstream) of the 
            customer’s shut-off valve. The Plan does not cover the repair and 
            replacement of any finished or unfinished walls or surfaces that 
            must be removed or opened in order to access and repair the service 
            line inside the premises. The Plan does not cover pre-existing 
            damages or conditions(including low pressure or flow-related conditions), relocation or alteration of             existing water 
            service lines, repairs and/or replacement of parts damaged directly 
            or indirectly as a result of You or any other party working or 
            excavating on your property or in the vicinity of the water service 
            line or its associated parts. The Plan does not cover damages caused 
            by earthquake, hurricane, landslide, natural disaster, civil 
            disobedience, riot or war. The Plan does not cover improperly 
            installed pipes and appurtenances.</span></font></p>
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">BEGINNING OF COVERAGE AND BILLING</span></b><span style="color: #000066"><br>
            Coverage begins on the date of acceptance of your application. Prior to such acceptance, the Company             reserves the right to make an on-site inspection of your service line and associated parts to ensure that             they are in proper operating condition before accepting any responsibility under the plan. Such             determination is within the sole discretion of the Company. 
            You will receive an acknowledgment letter indicating your enrollment 
            in the Program.&nbsp; You may choose to pay for the program in its 
            entirety at time of registration or elect to be billed for the 
            program on your quarterly water bill. Each subsequent bill will 
            include your quarterly charges in advance. The initial term of 
            service shall be one year. After the first year, and for each 
            subsequent year, the program will be automatically renewed annually 
            unless terminated by You or the Company.</span></font></p>
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">CANCELLATION/TERMINATION</span></b><span style="color: #000066"><br>
            You may cancel this Maintenance Plan at any time by notifying USA, 
            in writing, at 1500 Ronson Road, Iselin, New Jersey 08830. Coverage 
            will continue until the end of the period for which you have paid.</span></font></p>
            <p class="MsoBodyText"><font face="Arial" size="2">
            <span style="color: #000066">The Company may also terminate this 
            Maintenance Plan for non-payment of the fee and reserves the right 
            to terminate this Maintenance Plan if USA determines that:</span></font></p>
			
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber4">
              <tr>
                <td width="3%"><font face="Arial" size="2" color="#000066">1<SPAN STYLE="font-weight: 400">) </SPAN>
                </font></td>
                <td width="97%">
                <font face="Arial" size="2" color="#000066">The service line or 
                its associated parts do not conform to applicable plumbing 
                codes;</font></td>
              </tr>
              <tr>
                <td width="3%"><font face="Arial" size="2" color="#000066">2<SPAN STYLE="font-weight: 400">) </SPAN>
                </font></td>
                <td width="97%">
                
                <FONT FACE="Arial" SIZE="2" COLOR="#000066"> <SPAN STYLE="font-weight: 400">
                There are unsafe working conditions at the site;</SPAN></FONT></td>
              </tr>
              <tr>
                <td width="3%"><font face="Arial" size="2" color="#000066">3<SPAN STYLE="font-weight: 400">) </SPAN>
                </font></td>
                <td width="97%">
                <font face="Arial" size="2" color="#000066">The property owner 
                does not allow or permit the servicing or replacement of any 
                parts necessary to maintain the parts covered.</font></td>
              </tr>
            </table>
			
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">LIMITATIONS</span></b><span style="color: #000066"><br>
            USA will not be liable for any incidental or consequential damages, 
            including water damage caused by leaks. USA will not be liable for 
            any damages caused to you or your property unless such damage is the 
            direct result of negligence of USA or its agents.</span></font></p>
            <p class="MsoBodyText"><font face="Arial" size="2">
            <span style="color: #000066">USA or its authorized contractor must 
            perform all work in relation to the Plan. The Plan will not pay for 
            any labor or parts costs for repair or replacement of any covered 
            items performed by any unauthorized parties.</span></font></p>
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">REPORTING A LEAK OR BREAK ON YOUR WATER 
            SERVICE LINE</span></b><span style="color: #000066"><br>
            If you suspect a leak or break to your service line, call the 
            toll-free number (800) 729-4030 to report the problem. USA will have 
            a representative contact you to investigate the source of the 
            problem and begin the repair process. USA will arrange to begin 
            repairs normally within 24 hours of your initial call. However, USA 
            will not be responsible for delays beyond its reasonable control.</span></font></p>
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">CHANGES IN MONTHLY CHARGES, TERMS AND 
            CONDITIONS</span></b></font><font face="Arial"><span style="color: #000066"><font size="2"><br>
            The charges for this Plan, and any other terms and conditions 
            applicable to this Plan, may be changed by USA at any time upon at 
            least 30 days prior written notice (which may be in the form of a 
            bill insert or other written notification). The payment of 
            applicable charges by the customers, or a request for service under 
            the Plan, after receiving such notice of a change in the charges or 
            other terms and conditions will be deemed to be assent by the 
            customer to the changes(s) in the charges, terms or conditions. If 
            the customer does not wish to continue with LineCare</font></span><font size="2"><span style="color: #000066"><sup>SM </sup></span></font><span style="color: #000066"><font size="2">under such 
            revised charges, terms or conditions, customer may simply terminate 
            participation under the Plan at any time upon written notice to USA.</font></span></font></p>
            <p class="MsoNormal"><font face="Arial" size="2"><b>
            <span style="color: #000066">LIMITATION OF LIABILITY</span></b></font><span style="font-size: 10.0pt; font-family: Arial; color: #000066"><br>
            The liability, if any, of USA, its affiliated companies, their 
            employees, agents and contractors to the customer or to any other 
            person for damages resulting from the provision of or failure to 
            provide service under this Plan, or from any fault, failure, defect 
            or deficiency in any service, labor, material, work or product 
            furnished in connection with this Plan, shall be limited to an 
            amount not to exceed $10,000. In no event, however, shall USA, its 
            affiliate companies, their employees, agents and contractors have 
            any liability for special, indirect, incidental or consequential 
            damages resulting from the provision of or failure to provide 
            service under this Plan, or from any fault, failure, defect or 
            deficiency in any service, labor, material, work or product 
            furnished in connection with this Plan. These limitations of and 
            exclusions from liability shall apply regardless of whether a claim 
            or remedy is sought in contract, tort (including negligence and 
            strict liability) or otherwise.&nbsp; The LineCare<sup>SM</sup> program is not an 
            insurance contract or policy. The program provides for the repair of 
            leaks or breaks to your customer-owned water line due to normal wear 
            and tear. This contract constitutes the entire agreement between 
            Utility Service Affiliates, Inc. and You, and there are no other 
            promises or conditions in any other agreement whether written or 
            oral.</span></p>
			
      <H4 ALIGN="left">
      <font face="Arial" size="2" color="#000066">Utility Service Affiliates, 
      Inc.<br>
      LineCare<sup>SM</sup> Water Line Protection Program<br>
      P.O. Box 500<br>
      Iselin, New Jersey 08830<br>
      (800) 729-4030</font></H4>
			
      <P ALIGN="left"><B><FONT FACE="Arial" SIZE="2" COLOR="#000066">TO TAKE 
      ADVANTAGE OF THIS VALUABLE PROGRAM, PLEASE FILL OUT THE FORM BELOW.<BR>
Fields marked with an * are required!</FONT></B></P>
		    

<form method="post" action="lineCare.asp">

              	
      <P ALIGN="left">&nbsp;</P>
		    <TABLE BORDER="0" CELLSPACING="1" STYLE="border-collapse: collapse" BORDERCOLOR="#111111" WIDTH="100%" ID="AutoNumber1" HEIGHT="218">
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Name*</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input" NAME="Name" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Address*</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input" NAME="Address" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">City*</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input" NAME="City" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <TABLE BORDER="0" CELLSPACING="0" STYLE="border-collapse: collapse" BORDERCOLOR="#111111" WIDTH="100%" ID="AutoNumber3" CELLPADDING="0">
                  <TR>
                    <TD WIDTH="50%">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">State*</FONT><BR></TD>
                    <TD WIDTH="50%">
                    </TD>
                    <TD WIDTH="50%">&nbsp;&nbsp;&nbsp;&nbsp;</TD>
                  </TR>
                </TABLE>
                </TD>
                <TD WIDTH="23%" HEIGHT="19">
                <TABLE BORDER="0" CELLSPACING="0" STYLE="border-collapse: collapse" BORDERCOLOR="#111111" WIDTH="100%" ID="AutoNumber2" CELLPADDING="0">
                  <TR>
                    <TD WIDTH="25%">
                    <P ALIGN="left">
                    <INPUT class="input" NAME="State" SIZE="2" STYLE="float: left"></TD>
                    <TD WIDTH="75%">
                <P ALIGN="center">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Zip* </FONT></TD>
                    <TD WIDTH="50%">
                    <INPUT class="input" NAME="Zip" SIZE="5" STYLE="float: right"><BR></TD>
                  </TR>
                </TABLE>
                </TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="8"></TD>
                <TD WIDTH="21%" HEIGHT="8">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Daytime Phone*</FONT></TD>
                <TD WIDTH="23%" HEIGHT="8">
                <INPUT class="input" NAME="Phone" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="8"></TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Evening Phone</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input" NAME="nightPhone" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Fax Number</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input" NAME="Fax" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Email</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input" NAME="Email" SIZE="30" STYLE="float: right"></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Account Number</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input" NAME="Account" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Referred by</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input" NAME="Referral" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="19%" HEIGHT="19" COLSPAN="3">&nbsp;</TD>
                <TD WIDTH="25%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="19%" HEIGHT="19" COLSPAN="3">
                <P CLASS="MsoNormal">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Click the 
                following Checkbox to complete your registration and click 
                Submit to send.</FONT><BR>
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">
                <INPUT TYPE="checkbox" NAME="Agreement"> *I have read and 
                understand the terms set forth in the LineCare<SUP>SM</SUP> Service 
                contract.&nbsp; By submitting my information, via this form, I am 
                agreeing to register for the LineCare<SUP>SM</SUP> Program, subject to a 
                service line inspection.&nbsp; I understand I will be contacted by a 
                Customer Service representative to schedule the service line 
                inspection.&nbsp; I understand that charges for the LineCare<SUP>SM</SUP> program 
                of $5 per month, plus tax, will appear on my quarterly water 
                bill.</FONT></TD>
                <TD WIDTH="25%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19" VALIGN="bottom">&nbsp;</TD>
                <TD WIDTH="23%" HEIGHT="19" VALIGN="bottom">&nbsp;</TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19" VALIGN="bottom"><P ALIGN="left">
                <input type="hidden" name="action" value="submit"><input type="submit" value="submit" STYLE="float: right"></P></TD>
                <TD WIDTH="23%" HEIGHT="19" VALIGN="bottom"><INPUT TYPE="reset" VALUE="Reset"></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
            </TABLE>
                        </FORM>


</td>
            </td>
          </tr>
        </table>        </td>
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
        </font><a href="lineCare.asp">LineCare Service Line Maintenance Plan</a></font><br>
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