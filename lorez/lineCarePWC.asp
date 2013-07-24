<%@language=vbscript%>
<%
	if Request.Form("action") = "submit" Then
			Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
			Mailer.RemoteHost = "scriptmail.intermedia.net"
			Mailer.FromAddress = "Bsohler@middlesexwater.com"
			Mailer.FromName = "Web User"
			Mailer.AddRecipient "Customer Service", "csmwc@middlesexwater.com"
'			Mailer.AddRecipient "Tester", "lg@ghdweb.com"
			Mailer.Subject = "Pinelands Water Company LineCare Form"
			errField = ""

			messBody = vbCrLf & "Submitted information:" & vbCrLf & "--------------------------------------------------------------" & vbCrLf & vbCrLf
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
        <td width="568">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
          <tr>
            <td width="44%">
            <p align="center">
            <img border="0" src="../sharedImages/PinelandsLogo.gif"></td>
            <td width="56%">
            <p>
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
        
        
        <b><font face="Arial" size="2" color="#000066"><br>
        Don’t get soaked by unexpected repair costs due to leaking water lines or 
        clogged sewer lines. Enjoy peace of mind with LineCare!<br>
        <br>
        Please read our terms and conditions below. Use our easy online 
        application form to sign up now!</font></b> <br>
&nbsp;</td>
        <td width="30">&nbsp;</td>
      </tr>
      <tr>
        <td width="30">&nbsp;</td>
        <td width="568">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="568" id="AutoNumber3" height="127">
          <tr>
            <td width="635" valign="top" height="16"><p>
            <p>
                        
			
			<p>
        <font face="Arial" color="#000066" size="2"><b>KEY TERMS AND CONDITIONS 
        OF YOUR LINECARE PROTECTION PLAN</b></font><p class="MsoNormal" style="text-autospace: none">
            <span style="font-family: Arial"><font size="2" color="#000066">The 
            LineCare Protection Plan is being offered by Utility Service 
            Affiliates, Inc. (“USA” or the “Company”), an affiliate of Pinelands 
            Water Company (“Pinelands”). This agreement is between USA and You, 
            a subscriber in (the “Plan.”)<br>
            &nbsp;</font></span></p>
            <p class="MsoNormal" style="text-autospace: none">
            <font color="#000066"><b><span style="font-family: Arial">
            <font size="2">COVERAGE</font></span></b><span style="font-family: Arial"><font size="2">
            <br>
            The LineCare Water Line Protection Plan covers all parts, material 
            and labor required to repair or replace a leaking water service line 
            for up to $5,000 per occurrence or up to two service calls per year for 
            a total of up to $10,000 annual coverage per covered plan. Plan also 
            includes service line leading to the Company-owned irrigation meter, 
            if applicable. Coverage also includes the restoration of sidewalks, 
            paving and grass in areas disturbed by excavation. </font></span>
            </font></p>
            <p class="MsoNormal" style="text-autospace: none">
            <span style="font-family: Arial"><font size="2" color="#000066">The 
            LineCare Sewer Line Protection Plan covers the repair of a leaking 
            sewer lateral or the removal of sewer blockages that occur in the 
            sewer lateral that runs from the building foundation, to the 
            beginning of your sewer utility’s responsibility for up to $5,000 
            per occurrence or up to two service calls per year for a total of up 
            to $10,000 annual coverage per covered plan. Under both Plans, USA 
            or its agents will determine whether to repair or replace any 
            covered parts. Repair or replacement includes excavation, as 
            required, in the area of repair or replacement. USA reserves the 
            right to choose the materials and/or parts to be utilized; however, 
            all such materials and/or parts, and all work performed, will comply 
            with all relevant and applicable laws, regulations, codes and 
            standards. </font></span></p>
            <p class="MsoNormal" style="text-autospace: none">
            <span style="font-family: Arial"><font size="2" color="#000066">
            Water Line Protection Service Calls – The Company will dispatch an 
            authorized service representative to investigate your water service 
            call. If the repair is determined to be covered by the Plan, the 
            water service call will be paid by the Plan. If the repair is not 
            covered by the Plan, the customer will be responsible for paying the 
            plumber directly and for all related uncovered repair costs. </font>
            </span></p>
            <p class="MsoNormal" style="text-autospace: none">
            <span style="font-family: Arial"><font size="2" color="#000066">
            Sewer Line Protection Service Calls – The Company will dispatch an 
            authorized service representative to investigate your sewer service 
            call. Service call fees are assessed per visit. If the repair is 
            determined to be covered by the Plan, the sewer service call will be 
            paid by the Plan. If the repair is not covered by the Plan, the 
            customer will be responsible for paying the plumber directly and for 
            all related uncovered repair costs. &nbsp;</font></span></p>
            <p class="MsoNormal" style="text-autospace: none">
            <font color="#000066"><b><span style="font-family: Arial">
            <font size="2">EXCLUSIONS <br>
            </font></span></b><span style="font-family: Arial"><font size="2">
            Coverage under the Water Line Protection Plan is limited to the 
            water service line from the limit of the utility’s responsibility up 
            to the foundation. Plan does not 
            include any line beyond the Company-owned irrigation meter. Coverage 
            under the Sewer Line Protection Plan is limited to the service line 
            from the limit of the utility’s responsibility up to the foundation 
            of the home. Coverage does not include any parts not specifically 
            identified as covered. Items such as pressure-reducing valves, 
            booster pumps, lawn and/or fire sprinkler systems, meter pits, 
            septic systems, private well lines and ejection pump lines, 
            landscaping (trees, shrubbery) and decorative stones are not 
            included in Plan coverage. The Plan does not cover the repair 
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
            improperly installed pipes and appurtenances. </font></span></font>
            </p>
            <p class="MsoNormal" style="text-autospace: none">
            <span style="font-family: Arial"><font size="2" color="#000066">The 
            Water Line Protection Plan does not cover curb or valve box 
            maintenance or repair. The LineCare Sewer Protection Plan does not 
            cover the repair or maintenance of external sewer line clean outs.
            </font></span></p>
            <p class="MsoNormal" style="text-autospace: none">
            <font color="#000066"><b><span style="font-family: Arial">
            <font size="2">ELIGIBILITY <br>
            </font></span></b><span style="font-family: Arial"><font size="2">To 
            be eligible for coverage under the respective Plans, you must own 
            the water service line (and associated parts) and/or the sewer line 
            which serves a residential dwelling. </font></span></font></p>
            <p class="MsoNormal" style="text-autospace: none">
            <span style="font-family: Arial"><font size="2" color="#000066">The 
            water service line must be a standard line that is no greater than 
            1-1/2 inches in diameter. The sewer line must be a standard line 
            that is no greater than 6 inches in diameter and both lines must 
            conform to applicable plumbing codes. USA reserves the right to deny 
            Plan coverage for any reason. </font></span></p>
            <p class="MsoNormal" style="text-autospace: none">
            <span style="font-family: Arial"><font size="2" color="#000066">
            Separate Plan coverage is required for each additional service 
            connection and/or service line at a premise. Plans are not 
            transferable. The Plan is not available in all areas. </font></span>
            </p>
            <p class="MsoNormal" style="text-autospace: none">
            <font color="#000066"><b><span style="font-family: Arial">
            <font size="2">BEGINNING OF COVERAGE AND BILLING </font></span></b>
            <span style="font-family: Arial"><font size="2"><br>
            Coverage begins 30 days after the acceptance of your application. 
            Prior to such acceptance, the Company reserves the right to make an 
            on-site inspection of your water or sewer line and associated parts 
            to ensure that they are in proper operating condition before 
            accepting any responsibility under the Plan. Such determination is 
            within the sole discretion of the Company. You will receive an 
            acknowledgment letter indicating your enrollment in the Line Care 
            Water Line Plan, the LineCare Sewer Line Plan or LineCare Plus (both 
            plans.) You may choose to pay for the LineCare Plan in its entirety 
            at time of registration, or, as a Pinelands Water Company customer, 
            elect to be billed quarterly. Each subsequent bill will include your 
            charges in advance. The initial term of service shall be one year. 
            After the first year, and for each subsequent year, the Plan will be 
            automatically renewed annually unless terminated by you or the 
            Company. </font></span></font></p>
            <p class="MsoNormal" style="text-autospace: none">
            <font color="#000066"><b><span style="font-family: Arial">
            <font size="2">CANCELLATION/TERMINATION <br>
            </font></span></b><span style="font-family: Arial"><font size="2">
            You may cancel the Plan at any time by notifying USA, in writing, at 
            1500 Ronson Road, Iselin, New Jersey 08830. Coverage will continue until the end of the period for 
            which you have paid. There will be no refund for payments made under 
            the Plan. </font></span></font></p>
            <p class="MsoNormal" style="text-autospace: none">
            <span style="font-family: Arial"><font size="2" color="#000066">The 
            Company may also terminate the Plan for non-payment of the fee and 
            reserves the right to terminate the plan agreement if USA determines 
            that: <br>
            1) The water or sewer line or its associated parts do not conform to 
            applicable plumbing codes; <br>
            2) There are unsafe working conditions at the site; <br>
            3) The property owner does not allow or permit the servicing or 
            replacement of any parts necessary to maintain the parts covered.</font></span></p>
            <p class="MsoNormal" style="text-autospace: none">
            <font color="#000066"><b><span style="font-family: Arial">
            <font size="2">LIMITATIONS <br>
            </font></span></b><span style="font-family: Arial"><font size="2">
            USA will not be liable for any incidental or consequential damages, 
            including, but not limited to water damage caused by leaks. USA will 
            not be liable for any damages caused to you or your property unless 
            such damage is the direct result of negligence of USA or its agents.
            </font></span></font></p>
            <p class="MsoNormal" style="text-autospace: none">
            <span style="font-family: Arial"><font size="2" color="#000066">USA 
            or its authorized contractor must perform all work in relation to 
            the Plan and will not pay for any labor or parts costs for the 
            repair or replacement of any covered items performed by any 
            unauthorized parties. </font></span></p>
            <p class="MsoNormal" style="text-autospace: none">
            <font color="#000066"><b><span style="font-family: Arial">
            <font size="2">REPORTING A LEAK OR BREAK ON YOUR WATER AND/OR SEWER 
            LINE <br>
            </font></span></b><span style="font-family: Arial"><font size="2">
            Depending on which plan you choose, if you suspect a leak or break 
            to your water service line, and/or a leak, break or blockage on your 
            sewer line, call the toll-free number (800) 729-4030 to report the 
            problem. USA will have a representative contact you to investigate 
            the source of the problem and begin the repairs normally within 24 
            hours of your initial call. However, USA will not be responsible for 
            delays beyond its reasonable control. </font></span></font></p>
            <p class="MsoNormal" style="text-autospace: none">
            <font color="#000066"><b><span style="font-family: Arial">
            <font size="2">CHANGES IN MONTHLY CHARGES, TERMS AND CONDITIONS <br>
            </font></span></b><span style="font-family: Arial"><font size="2">
            The charges for the Plan, and any other terms and conditions 
            applicable, may be changed by USA at any time upon at least 30 days 
            prior written notice (which may be in the form of a bill insert or 
            other written notification). The payment of applicable charges by 
            the customers, or a request for service under the Plan, after 
            receiving such notice of a change in the charges or other terms and 
            conditions will be deemed to be assent by the customer to the 
            changes(s) in the charges, terms or conditions. If You do not wish 
            to continue with the Plan under such revised charges, terms or 
            conditions, You may simply terminate participation under the Plan at 
            any time upon written notice to USA. </font></span></font></p>
            <p class="MsoNormal" style="text-autospace: none">
            <font color="#000066"><b><span style="font-family: Arial">
            <font size="2">LIMITATION OF LIABILITY <br>
            </font></span></b><span style="font-family: Arial"><font size="2">
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
            consequential damages resulting from the provision of or failure to 
            provide service under this Plan, or from any fault, failure, defect 
            or deficiency in any service, labor, material, work or product 
            furnished in connection with the Plan. These limitations of and 
            exclusions from liability shall apply regardless of whether a claim 
            or remedy is sought in contract, tort (including negligence and 
            strict liability) or otherwise. </font></span></font></p>
            <p>
            <span style="font-size: 10.0pt; font-family: Arial; color: #000066">
            The Plan is not an insurance contract or policy. Depending upon your 
            chosen coverage, the Plan provides for the repair of leaks/breaks to 
            your customer-owned water line and/or sewer line due to normal wear 
            and tear. This contract constitutes the entire agreement between 
            Utility Service Affiliates, Inc. and You, and there are no other 
            promises or conditions in any other agreement whether written or 
            oral.</span></p>
			
            <p class="MsoNormal"><font face="Arial" size="2" color="#000066"><b>
            Utility Service Affiliates, Inc.<br>
            LineCare Program<br>
            1500 Ronson Road<br>
            Iselin, New Jersey 08830<br>
            (800) 729-4030</b><br>
&nbsp;</font></p>
		    

<form method="post" action="lineCarePWC.asp">

              	
      <P ALIGN="left">&nbsp;</P>
		    <TABLE BORDER="0" CELLSPACING="1" STYLE="border-collapse: collapse" BORDERCOLOR="#111111" WIDTH="100%" ID="AutoNumber1" HEIGHT="218">
              <TR>
                <TD WIDTH="5%" HEIGHT="19">&nbsp;</TD>
                <TD WIDTH="19%" HEIGHT="19" COLSPAN="3">
                <p class="MsoNormal"><font color="#000066"><b>
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
                Option 1 </span></font>
                <input type="radio" name="choose" value="Both Water Line and Sewer Line Protection.">
                <font color="#000066">
                <span style="font-size: 10.0pt; font-family: Arial">I want to 
                protect both my water and sewer line for $156.00 + NJ State 
                sales tax.</span></font></p>
                <p class="MsoNormal">
                <font face="Arial" size="2" color="#000066">
                <span style="font-size: 10pt; font-family: Arial; font-weight: 700">
                Option 2 </span></font>
                <input type="radio" name="choose" value="Water Line Protection Only.">
                <font color="#000066">
                <span style="font-size: 10.0pt; font-family: Arial">I would like 
                Water Line Protection Only for $60.00 + NJ State sales tax.</span></font></p>
                <p class="MsoNormal">
                <font face="Arial" size="2" color="#000066">
                <span style="font-size: 10pt; font-family: Arial; font-weight: 700">
                Option 3 </span></font>
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
        </font><a href="lineCareMWC.asp">LineCare Service Line Maintenance Plan</a></font><br>
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