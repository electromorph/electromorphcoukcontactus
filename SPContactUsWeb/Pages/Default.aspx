<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SPContactUsWeb.Pages.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdn.sharepointonline.com/9321/_layouts/15/sp.ui.controls.js" type="text/javascript"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=8" />
    <script 
        src="http://ajax.aspnetcdn.com/ajax/4.0/1/MicrosoftAjax.js" 
        type="text/javascript">
    </script>
    <script 
        type="text/javascript" 
        src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.min.js">
    </script>      
    <script type="text/javascript">
        var hostweburl;

        // Load the SharePoint resources.
        $(document).ready(function () {

            // Get the URI decoded app web URL.
            hostweburl =
                decodeURIComponent(
                    getQueryStringParameter("SPHostUrl")
            );

            // The SharePoint js files URL are in the form:
            // web_url/_layouts/15/resource.js
            var scriptbase = hostweburl + "/_layouts/15/";

            // Load the js file and continue to the 
            // success handler.
            $.getScript(scriptbase + "SP.UI.Controls.js")
        });

        // Function to retrieve a query string value.
        // For production purposes you may want to use
        // a library to handle the query string.
        function getQueryStringParameter(paramToRetrieve) {
            var params =
                document.URL.split("?")[1].split("&");
            var strParams = "";
            for (var i = 0; i < params.length; i = i + 1) {
                var singleParam = params[i].split("=");
                if (singleParam[0] == paramToRetrieve)
                    return singleParam[1];
            }
        }
    </script>
</head>
<body>
    <!-- Chrome control placeholder 
           Options are declared inline.  -->
    <div 
        id="chrome_ctrl_container"
        data-ms-control="SP.UI.Controls.Navigation"  
        data-ms-options=
            '{  
                "appHelpPageUrl" : "Help.html",
                "appIconUrl" : "/assets/chat.png",
                "appTitle" : "Contact Electromorph",
                "settingsLinks" : [
                    {
                        "linkUrl" : "Contact.aspx",
                        "displayName" : "Contact us"
                    }
                ]
             }'>
    </div> 
    <form id="form1" runat="server">
        <asp:Panel ID="pnlSendEmail" runat="server">
            <div id="chrome_control_container"></div>
            <div>
                <table border="0" style="width: 309px; padding-left:9em">
                    <tr>
                        <td>
                            <h2 class="ms-accentText"><asp:Label ID="lblEmail" runat="server" Text="Your email address*"></asp:Label></h2>
                            <asp:TextBox ID="txtEmail" runat="server" Width="249px"></asp:TextBox><br />
                            <asp:RegularExpressionValidator ID="txtEmailRegExValidator" runat="server" ControlToValidate="txtEmail" ValidationExpression=".*@.*\..*" ErrorMessage="*Invalid Email address." Display="dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="txtEmailRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="ms-accentText"><asp:Label ID="lblBody" runat="server" Text="Your message*"></asp:Label></h2>
                            <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Height="143px" Width="319px"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="txtBodyRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="txtBody"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblDisplay" runat="server" Text="" Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="ms-accentText"><asp:Label ID="lblFileUpload" runat="server" Text="Upload an attachment"></asp:Label></h2>
                            <asp:FileUpload ID="FileUploadControl" runat="server" Width="322px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Button ID="SendEmail" runat="server" OnClick="btnSend_Click" Text="Send" Width="100px" />
                        </td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlEmailSent" runat="server" Visible="false">
            <h1 class="ms-accentText"><asp:Label ID="lblSucceeded" runat="server" Text="Email Sent SucessFully." ForeColor="Green"></asp:Label></h1>
        </asp:Panel>
        <asp:Panel ID="pnlEmailFailed" runat="server" Visible="false">
            <h1 class="ms-accentText"><asp:Label ID="lblFailed" runat="server" Text="Oops... something went wrong - please email directly at max@electromorph.co.uk, or call us on 07900-491626" ForeColor="Green"></asp:Label></h1>
        </asp:Panel>
    </form>
</body>
</html>
