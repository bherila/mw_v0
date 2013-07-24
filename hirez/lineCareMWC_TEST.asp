<%@language=vbscript%>
<%
	if Request.Form("action") = "submit" Then
			Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
			Mailer.RemoteHost = "scriptmail.intermedia.net"
			Mailer.FromAddress = "Bsohler@middlesexwater.com"
			Mailer.FromName = "Web User"
			Mailer.AddRecipient "Rick Tester", "lg@ghdweb.com"
			Mailer.Subject = "TEST Middlesex Water Company LineCare Form"
			errField = ""

			messBody = vbCrLf & "User heard about LineCare through:" & vbCrLf & "--------------------------------------------------------------" & vbCrLf & vbCrLf



			If Request.form("c1")="ON" then
				messBody = messBody & "Bill Insert, "
			end if
			If Request.form("c2")="ON" then
				messBody = messBody & "Postcard, "
			end if
			If Request.form("c3")="ON" then
				messBody = messBody & "Billboard, "
			end if
			If Request.form("c4")="ON" then
				messBody = messBody & "Advertisement, "
			end if
			If Request.form("c5")="ON" then
				messBody = messBody & "Referral, "
			end if

			messBody = messBody & vbCrLf & vbCrLf & vbCrLf & "--------------------------------------------------------------" & vbCrLf & vbCrLf
			messBody = messBody & vbCrLf & vbCrLf & vbCrLf & "Submitted information:" & vbCrLf & "--------------------------------------------------------------" & vbCrLf & vbCrLf



			messBody = messBody & "User requests: " & Request.form("choose") & vbCrLf

			messBody = messBody & "Name: " & Request.Form("Name") & vbCrLf
			messBody = messBody & "Address: " & Request.Form("Address") & vbCrLf
			messBody = messBody & "             " & Request.Form("City") & ", " & Request.Form("State") & " " & Request.Form("Zip") & vbCrLf
			messBody = messBody & "Daytime Phone: " & Request.Form("Phone") & vbCrLf
			messBody = messBody & "Evening Phone: " & Request.Form("nightPhone") & vbCrLf
			messBody = messBody & "Fax Number: " & Request.Form("Fax") & vbCrLf
			messBody = messBody & "E-mail: " & Request.Form("Email") & vbCrLf & vbCrLf
			messBody = messBody & "Account Number: " & Request.Form("Account") & vbCrLf & vbCrLf
			messBody = messBody & "Referred by: " & Request.Form("Referral") & vbCrLf & vbCrLf

			If Request.form("Agreement")="ON" then
				messBody = messBody & "I have read and understood the terms..." & vbCrLf & vbCrLf
			else
				errField = "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>**Agreement Checkbox was not checked</FONT></B><BR>" & vbCrLf & vbCrLf & Request.form("Agreement")
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
			If Request.Form("nightPhone") = "" Then
				errField = errField & "<B><FONT SIZE='3' COLOR='#FF0000' FACE='Arial'>=> Evening Phone</FONT></B><BR>" & vbCrLf & vbCrLf
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
        <td width="88%">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
          <tr>
            <td width="44%">
            <p align="center">
            <img border="0" src="../sharedImages/MWC_Logo.gif"></td>
            <td width="56%">
            <p align="left">
            <span style="font-family: Arial; font-weight: 700">
            <font size="2" color="#FF0000">Welcome to our LineCare</font></span><font color="#FF0000"><sup><font size="1"><span style="font-family: Arial">sm</span></font></sup></font><span style="font-family: Arial; font-weight: 700"><font size="2" color="#FF0000"> Terms and <br>
            Conditions and Online Registration Center</font></span></td>
          </tr>
          <tr>
            <td colspan="2">
            <p align="center"><br>
            <img border="0" src="../sharedImages/Linecarepluscolor.gif"><br>
&nbsp;</td>
            <td width="56%">
            &nbsp;</td>
          </tr>
        </table>
        <p>
        
        
        <b><font face="Arial" size="2" color="#000066">Don’t get soaked by unexpected repair costs due to leaking water lines or 
        clogged sewer lines. Enjoy peace of mind with LineCare!<br>
        <br>
        Please read our terms and conditions below. Use our easy online 
        application form to sign up now!</font></b> <br>
&nbsp;</td>
        <td width="25">&nbsp;</td>
      </tr>
      <tr>
        <td width="15">&nbsp;</td>
        <td width="88%">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="642" id="AutoNumber3" height="127">
          <tr>
            <td width="635" valign="top" height="16"><p>
            <p>
                        
			
			<p>
        <font face="Arial" color="#000066" size="2"><b>KEY TERMS AND CONDITIONS 
        OF YOUR LINECARE PROTECTION PLAN</b></font><H4 ALIGN="left">
      <font face="Arial" size="2" color="#000066">
      <span style="font-weight: 400"><A NAME="terms">The LineCare Protection 
      Plan is being offered by Utility Service Affiliates, Inc. (“USA” or the 
      “Company”), a subsidiary of Middlesex Water Company (“Middlesex”). This 
      agreement is between USA and You, a subscriber in (the “Plan.”)</A></span></font></H4>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            COVERAGE</b><br>
            The LineCare Water Line Protection Plan covers all parts, material 
            and labor required to repair or replace a leaking water service line 
            and customer shut off valve (i.e. first inside shut off valve) for 
            up to $5,000 per occurrence or up to two service calls per year for 
            a total of up to $10,000 annual coverage per covered plan. Coverage 
            also includes the cost of the restoration of sidewalks, paving and 
            grass in areas disturbed by excavation.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066">The 
            LineCare Sewer Line Protection Plan covers the repair of a leaking 
            sewer lateral or the removal of sewer blockages that occur in the 
            sewer lateral that runs from the building foundation,
            to the beginning of your sewer utility’s responsibility for up to 
            $5,000 per occurrence or up to two service calls per year for a 
            total of up to $10,000 annual coverage per covered plan.
            Under both Plans, USA or its agents will determine whether to repair 
            or replace any covered parts. Repair or replacement includes 
            excavation, as required, in the area of repair or replacement. USA 
            reserves the right to choose the materials and/or parts to be 
            utilized; however, all such materials and/or parts, and all work 
            performed, will comply with all relevant and applicable laws, 
            regulations, codes and standards.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066">
            Water Line Protection Service Calls – The Company will dispatch an 
            authorized service representative to investigate your water service 
            call. If the repair is determined to be covered by the Plan, the 
            water service call will be paid by the Plan. If the repair is not 
            covered by the Plan, the customer will be responsible for paying the 
            plumber directly and for all related&nbsp; uncovered repair costs.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066">
            Sewer Line Protection Service Calls – The Company will dispatch an 
            authorized service representative to investigate your sewer service 
            call. Service call fees are assessed per visit. If
            the repair is determined to be covered by the Plan, the sewer 
            service call will be paid by the Plan. If the repair is not covered 
            by the Plan, the customer will be responsible for paying the plumber 
            directly and for all related uncovered repair costs.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            EXCLUSIONS</b><br>
            Coverage under the Water Line Protection Plan is limited to the 
            water service line from the limit of the utility’s responsibility up 
            to and including the customer’s shut-off valve. Coverage under the 
            Sewer Line Protection Plan is limited to the service line from the 
            limit of the utility’s responsibility up to the foundation of the 
            home. Coverage does not include any parts not specifically 
            identified as covered. Items such as pressure-reducing valves, 
            booster pumps, lawn and/or fire sprinkler systems, meter pits, 
            septic systems, private well lines and ejection pump lines, 
            landscaping (trees, shrubbery) and decorative stones are not 
            included in Plan coverage. The Water Line Protection Plan will cover 
            the water service line from the street into your house up to the 
            shut off valve, but not beyond. The Plan does not cover the repair 
            and replacement of any finished or unfinished walls or surfaces 
            which must be removed or opened in order to access and repair the 
            water service line inside the premises. The Plan does not cover 
            pre-existing damages or conditions (including low pressure or 
            flow-related conditions), relocation or alteration of existing water 
            service lines and/or replacement of parts damaged directly or 
            indirectly as a result of You or any other party working or 
            excavating on your property or in the vicinity of the water or sewer 
            service line or its associated parts. The Plan does not cover 
            damages caused by earthquake, hurricane, landslide, natural 
            disaster, civil disobedience, riot or war. The Plan does not cover 
            improperly installed pipes and appurtenances.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066">The 
            Water Line Protection Plan does not cover curb or valve box 
            maintenance or repair. The LineCare Sewer Protection Plan does not 
            cover the repair or maintenance of external sewer line clean outs.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            ELIGIBILITY</b><br>
            To be eligible for coverage under the respective Plans, you must own 
            the water service line (and associated parts) and/or the sewer line 
            which serves a residential dwelling. </font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066">The 
            water service line must be a standard line that is no greater than 
            1-1/2 inches in diameter. The sewer line must be a standard line that 
            is no greater than 6 inches in diameter and both 
            lines must conform to applicable plumbing codes. USA reserves the 
            right to deny Plan coverage for any reason. </font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066">
            Separate Plan coverage is required for each additional service 
            connection and/or service line at a premise. Plans are not 
            transferable. The Plan is not available in all areas.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            BEGINNING OF COVERAGE AND BILLING</b><br>
            Coverage begins 30 days after the acceptance of your application. 
            Prior to such acceptance, the Company reserves the right to make an 
            on-site inspection of your water or sewer line and
            associated parts to ensure that they are in proper operating 
            condition before accepting any responsibility under the Plan. Such 
            determination is within the sole discretion of the Company. You will 
            receive an acknowledgment letter indicating your enrollment in the 
            Line Care Water Line Plan, the LineCare Sewer Line Plan or LineCare 
            Plus (both plans.) You may choose to pay for the LineCare Plan in 
            its entirety at time of registration, or, as a Middlesex Water 
            Company customer, elect to be billed quarterly. Each subsequent bill 
            will include your charges in advance. The initial term of service 
            shall be one year. After the first year, and for each subsequent 
            year, the Plan will be automatically renewed annually unless 
            terminated by you or the Company.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            CANCELLATION/TERMINATION</b><br>
            You may cancel the Plan at any time by notifying USA, in writing, at 
            1500 Ronson Road, Iselin, New Jersey 08830 or by calling (732) 
            634-1500. Coverage will continue until the end of the
            period for which you have paid. There will be no refund for payments 
            made under the Plan.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066">The 
            Company may also terminate the Plan for non-payment of the fee and 
            reserves the right to terminate the plan agreement if USA determines 
            that:<br>
            1) The water or sewer line or its associated parts do not conform to 
            applicable plumbing codes;<br>
            2) There are unsafe working conditions at the site;<br>
            3) The property owner does not allow or permit the servicing or 
            replacement of any parts necessary to maintain the parts covered.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            LIMITATIONS</b><br>
            USA will not be liable for any incidental or consequential damages, 
            including, but not limited to water damage caused by leaks. USA will 
            not be liable for any damages caused to you or your property unless 
            such damage is the direct result of negligence of USA or its agents.
            </font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066">USA 
            or its authorized contractor must perform all work in relation to 
            the Plan and will not pay for any labor or parts costs for the 
            repair or replacement of any covered items performed by any 
            unauthorized parties.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            REPORTING A LEAK OR BREAK ON YOUR WATER AND/OR SEWER LINE</b><br>
            Depending on which plan you choose, if you suspect a leak or break 
            to your water service line, and/or a leak, break or blockage on your 
            sewer line, call the toll-free number (800) 729-4030 to report the 
            problem. USA will have a representative contact you to investigate 
            the source of the problem and begin the repairs normally within 24 
            hours of your initial call. However, USA will not be responsible for 
            delays beyond its reasonable control.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            CHANGES IN MONTHLY CHARGES, TERMS AND CONDITIONS</b><br>
            The charges for the Plan, and any other terms and conditions 
            applicable, may be changed by USA at any time upon at least 30 days 
            prior written notice (which may be in the form of a bill
            insert or other written notification). The payment of applicable 
            charges by the customers, or a request for service under the Plan, 
            after receiving such notice of a change in the charges or other 
            terms and conditions will be deemed to be assent by the customer to 
            the change(s) in the charges, terms or conditions. If You do not 
            wish to continue with the Plan under such revised
            charges, terms or conditions, You may simply terminate participation 
            under the Plan at any time upon notice to USA.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            LIMITATION OF LIABILITY</b><br>
            The liability, if any, of USA, its affiliated companies, their 
            employees, agents and contractors to the customer or to any other 
            person for damages resulting from the provision of or failure to 
            provide service under the Plan, or from any fault, failure, defect 
            or deficiency in any service, labor, material, work or product 
            furnished in connection with the Plan, shall be limited to an annual 
            amount not to exceed $10,000 and, in the event You choose both water 
            and sewer line protection, $20,000. In no event, however, shall USA, 
            its affiliate companies, their employees, agents and contractors 
            have any liability for special, indirect, incidental or 
            consequential damages resulting
            from the provision of or failure to provide service under this Plan, 
            or from any fault, failure, defect or deficiency in any service, 
            labor, material, work or product furnished in connection with the 
            Plan. These limitations of and exclusions from liability shall apply 
            regardless of whether a claim or remedy is sought in contract, tort 
            (including negligence and strict liability) or otherwise.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066">The 
            Plan is not an insurance contract or policy. Depending upon your 
            chosen coverage, the Plan provides for the repair of leaks/breaks to 
            your customer-owned water line and/or sewer line due to normal wear 
            and tear. This contract constitutes the entire agreement between 
            Utility Service Affiliates, Inc. and You, and there are no other 
            promises or conditions in any other agreement whether written or 
            oral.</font></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            Utility Service Affiliates, Inc.<br>
            LineCare Protection Program<br>
            1500 Ronson Road<br>
            Iselin, New Jersey 08830<br>
            (800) 729-4030</b><br>
&nbsp;</font></p>
		    

<form method="post" action="lineCareMWC_TEST.asp">

              	
      <P ALIGN="left">&nbsp;</P>
		    <TABLE BORDER="0" CELLSPACING="1" STYLE="border-collapse: collapse" BORDERCOLOR="#111111" WIDTH="100%" ID="AutoNumber1" HEIGHT="218">
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="19%" HEIGHT="19" COLSPAN="3">
                <p class="MsoNormal"><font color="#000066">




<font face="Arial"><font size="2"font color="#000066">How did you hear about the LineCare Program? (check all that apply)</font>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
    <tr>
      <td width="20%"><font face="Arial"><font color="#000066">
      <input type="checkbox" name="C1" value="ON"></font><font size="2" color="#000066">Bill 
      Insert</font></font></td>
      <td width="20%"><font face="Arial"><font color="#000066">
      <input type="checkbox" name="C2" value="ON"></font><font size="2" color="#000066">Postcard</font></font></td>
      <td width="20%"><font face="Arial"><font color="#000066">
      <input type="checkbox" name="C3" value="ON"></font><font size="2" color="#000066">Billboard</font></font></td>
      <td width="20%"><font face="Arial"><font color="#000066">
      <input type="checkbox" name="C4" value="ON"></font><font size="2" color="#000066">Advertisement</font></font></td>
      <td width="20%"><font face="Arial"><font color="#000066">
      <input type="checkbox" name="C5" value="ON"></font><font size="2" color="#000066">Referral</font></font></td>
    </tr>
  </table>

<BR>

<b>
                <span style="font-size:10.0pt;font-family:Arial">Apply for 
                LineCare</span></b><sup><font size="1"><span style="font-family: Arial">sm</span></font></sup><b><span style="font-size:10.0pt;font-family:Arial"><br>
                </span></b><span style="font-size:10.0pt;font-family:Arial">
                LineCare</span><sup><font size="1"><span style="font-family: Arial">sm</span></font></sup><span style="font-size:10.0pt;font-family:Arial">
                is an annual program which is billed quarterly and will appear 
                as a line item on your quarterly water bill. Below, please find 
                various options available under our LineCare Program. Please 
                select the box next to the Plan Option you desire and complete 
                the registration form below. When complete, be sure to check off 
                the box related to our Terms and Conditions and hit the Submit 
                link.</span></font></p>
                <p class="MsoNormal">
                <font face="Arial" size="2" color="#000066">
                <span style="font-size: 10pt; font-family: Arial; font-weight: 700">
                Option 1 </span></font><font color="#000066"><b>
                <span style="font-size:10.0pt;font-family:Arial">
                <input type="radio" value="Current subscriber - add Sewer Line Protection." checked name="choose"> </span></b>
                <span style="font-size: 10.0pt; font-family: Arial">I am a 
                current subscriber to the LineCare</span><sup><font size="1"><span style="font-family: Arial">sm</span></font></sup><span style="font-size: 10.0pt; font-family: Arial"> 
                Water Line maintenance plan and would like to add the LineCare</span><sup><font size="1"><span style="font-family: Arial">sm</span></font></sup><span style="font-size: 10.0pt; font-family: Arial"> 
                Sewer Plan to my existing coverage for an additional $96.00 plus 
                NJ State sales tax.</span></font></p>
                <p class="MsoNormal">
                <font face="Arial" size="2" color="#000066">
                <span style="font-size: 10pt; font-family: Arial; font-weight: 700">
                Option 2 </span></font>
                <input type="radio" name="choose" value="Both Water Line and Sewer Line Protection.">
                <font color="#000066">
                <span style="font-size: 10.0pt; font-family: Arial">I want to 
                protect both my water and sewer line for $156.00 + NJ State 
                sales tax.</span></font></p>
                <p class="MsoNormal">
                <font face="Arial" size="2" color="#000066">
                <span style="font-size: 10pt; font-family: Arial; font-weight: 700">
                Option 3 </span></font>
                <input type="radio" name="choose" value="Water Line Protection Only.">
                <font color="#000066">
                <span style="font-size: 10.0pt; font-family: Arial">I would like 
                Water Line Protection Only for $60.00 + NJ State sales tax.</span></font></p>
                <p class="MsoNormal">
                <font face="Arial" size="2" color="#000066">
                <span style="font-size: 10pt; font-family: Arial; font-weight: 700">
                Option 4 </span></font>
                <input type="radio" name="choose" value="Sewer Line Protection Only."> <font color="#000066"><span style="font-size: 10.0pt; font-family: Arial"> 
                I would like Sewer Line Protection Only for $120.00 plus NJ 
                State sales tax.<br>
&nbsp;</span></font></p>
                </TD>
                <TD WIDTH="25%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Name*</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input"  NAME="Name" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Address*</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input"  NAME="Address" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">City*</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input"  NAME="City" SIZE="30" STYLE="float: right"><BR></TD>
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
                    <INPUT class="input"  NAME="State" SIZE="2" STYLE="float: left"></TD>
                    <TD WIDTH="75%">
                <P ALIGN="center">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Zip* </FONT></TD>
                    <TD WIDTH="50%">
                    <INPUT class="input"  NAME="Zip" SIZE="5" STYLE="float: right"><BR></TD>
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
                <INPUT class="input"  NAME="Phone" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="8"></TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Evening Phone*</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input"  NAME="nightPhone" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Fax Number</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input"  NAME="Fax" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Email</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input"  NAME="Email" SIZE="30" STYLE="float: right"></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Account Number</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input"  NAME="Account" SIZE="30" STYLE="float: right"><BR></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="21%" HEIGHT="19">
                <FONT FACE="Arial" SIZE="2" COLOR="#000066">Referred by</FONT></TD>
                <TD WIDTH="23%" HEIGHT="19">
                <INPUT class="input"  NAME="Referral" SIZE="30" STYLE="float: right"><BR></TD>
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
                <INPUT TYPE="checkbox" NAME="Agreement" value="ON"> *</FONT><font color="#000066"><span style="font-size: 10.0pt; font-family: Arial">I 
                have read and understand the terms set forth in the LineCare</span><sup><font size="1"><span style="font-family: Arial">sm</span></font></sup><span style="font-size: 10.0pt; font-family: Arial">&nbsp; 
                Service Contract.&nbsp; By submitting my information, and my desired 
                plan coverage via this form, I am agreeing to register for the 
                LineCare</span><sup><font size="1"><span style="font-family: Arial">sm</span></font></sup><span style="font-size: 10.0pt; font-family: Arial"> 
                &nbsp;Program.&nbsp; I understand that charges for the LineCare</span><sup><font size="1"><span style="font-family: Arial">sm</span></font></sup><span style="font-size: 10.0pt; font-family: Arial"> 
                program will appear on my quarterly water bill.</span></font></TD>
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
                <TD WIDTH="23%" HEIGHT="19" VALIGN="bottom"><INPUT TYPE="reset" VALUE="Reset" NAME="B2"></TD>
                <TD WIDTH="51%" HEIGHT="19">&nbsp;</TD>
              </TR>
            </TABLE>
                        </FORM>


</td>
            </tr>
          <tr>
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
	</TR>V5
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