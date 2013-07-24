<%@language=vbscript%>
<%
	if Request.Form("action") = "submit" Then
			Set Mailer = Server.CreateObject("SMTPsvg.Mailer")
			Mailer.RemoteHost = "scriptmail.intermedia.net"
			Mailer.FromAddress = Request.Form("email")
			Mailer.FromName = Request.Form("name")
			Mailer.AddRecipient "Recipient", "lg@ghdweb.com"
			Mailer.Subject = "MWC Contact Form"
			messBody = "Clients information is below" & vbCrLf & "--------------------------------------------------------------" & vbCrLf

			messBody = messBody & "Name: " 		& Request.Form("First-Name") &  vbCrLf
			messBody = messBody & "Name: " 		& Request.Form("Last-Name") & vbCrLf
			messBody = messBody & "Company: " 	& Request.Form("Company-Name") & vbCrLf
			messBody = messBody & "Title: " 	& Request.Form("Title") & vbCrLf
			messBody = messBody & "Address: " 	& Request.Form("Address") & vbCrLf
			messBody = messBody & Request.Form("City") & vbCrLf
			messBody = messBody & ", " 		& Request.Form("State") & vbCrLf
			messBody = messBody & " " 		& Request.Form("Zip") & vbCrLf
			messBody = messBody & "Country: " 	& Request.Form("Country") & vbCrLf
			messBody = messBody & "Phone: " 	& Request.Form("Phone") & vbCrLf
			messBody = messBody & "Fax: " 		& Request.Form("Fax") & vbCrLf
			messBody = messBody & "E-mail: " 	& Request.Form("E-mail") & vbCrLf & vbCrLf

			messBody = messBody & "Add me to your Investor Distribution List: " & Request.Form("Add-me") & vbCrLf & vbCrLf
			messBody = messBody & "Please send me the following: " & vbCrLf
			messBody = messBody & "Annual-Report: " & Request.Form("Annual-Report") & vbCrLf
			messBody = messBody & "10K: " & Request.Form("10K") & vbCrLf
			messBody = messBody & "10Q: " & Request.Form("10Q") & vbCrLf
			messBody = messBody & "DRIP: " & Request.Form("DRIP") & vbCrLf
			messBody = messBody & "Direct-Dep-of-Div: " & Request.Form("Direct-Dep-of-Div") & vbCrLf

			Mailer.BodyText = messBody
			if Mailer.SendMail then
				Set Mailer = Nothing
				Response.Redirect "http://www.middlesexwater.com/lorez/formok.htm"
			else
				Response.Write "Mail send failure. Error was " & Mailer.Response
			end if
	end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<body>
<table>
  <tr>
    <td>
       <form method="post" action="testAspForm.asp">
         <table class="bodytext">
           <tr>
             <td>
                Here is your text
	     </td>
           </tr>
           <tr>
             <td valign=top class="bodytext">Name
		<br><input class="input" style="width: 244px;" type=text name="name" value="<%=Request.Form("name")%>">
             </td>
           </tr>
           <tr>
             <td>Company/Organization
		<br><input class="input" style="width: 244px;" type=text name="company" value="<%=Request.Form("company")%>">
             </td>
            </tr>

           <tr>
             <td>Address
		<br><input class="input" style="width: 244px;" type=text name="address" value="<%=Request.Form("address")%>">
             </td>
            </tr>
           <tr>
             <td>E-MAIL
		<br><input class="input" style="width: 244px;" type=text name="email" value="<%=Request.Form("email")%>">
             </td>
            </tr>
           <tr>
             <td>Question: 
                <br><textarea cols="50" rows="5" name="message" class="input" style="width: 500px;"><%=Request.Form("message")%></textarea>
              </td>
           </tr>
	   <tr>
              <td>
		<input type="hidden" name="action" value="submit"><input type="submit" value="submit">
              </td>
            </tr>
         </table>
     </td>
  </tr>
</table>
</body>
</html>

