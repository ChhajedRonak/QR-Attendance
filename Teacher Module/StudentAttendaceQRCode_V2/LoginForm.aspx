<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="StudentAttendaceQRCode_V2.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LoginFormCSS.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 76px;
        }
        .auto-style5 {
            width: 476px;
            height: 76px;
        }
        .auto-style6 {
            left: 1px;
            top: -1px;
            height: 322px;
            width: 421px;
        }
        .auto-style7 {
            height: 54px;
            text-align: justify;
        }
        .auto-style8 {
            height: 54px;
            text-align: left;
            width: 476px;
        }
        .auto-style9 {
            height: 35px;
            text-align: justify;
        }
        .auto-style10 {
            height: 35px;
            text-align: left;
            width: 476px;
        }
    </style>
</head>
<body align="center" >
    <div id="bg"></div>
    <form id="form1" runat="server" class="auto-style6"  align="center" method="post">
        <asp:Label ID="Label1" runat="server" Text="LOGIN" ForeColor="White" Font-Bold="True" Font-Names="Franklin Gothic Heavy" Font-Size="XX-Large"></asp:Label>
        <div class="imgcontainer">
            <img src="Images/ABC.png" alt="Avatar" class="avatar"/>
        </div>
        <div class="container">
            <table>  
                <tr>  
                    <td class="auto-style9" style="font-size: x-large; font-weight: 200; font-style: normal; font-family: 'Arial Black'"> Username: </td>  
                    <td class="auto-style10">  
                        <asp:TextBox ID="txt_username" runat="server" TextMode="Email" Width="231px" BackColor="#CCCCCC" ForeColor="White" />  
                        <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage=" * Please enter Username" ControlToValidate="txt_username" runat="server" ForeColor="Red" /> </td>  
                </tr>  
                <tr>  
                    <td class="auto-style7" style="font-size: x-large; font-weight: 200; font-style: normal; font-family: 'Arial Black'"> Password: </td>  
                    <td class="auto-style8">  
                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="232px" BackColor="#CCCCCC" ForeColor="Black" />  
                        <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txt_password" ErrorMessage=" * Please enter Password" ForeColor="Red" /> </td>  
                </tr>  
                <tr>  
                    <td class="auto-style1"> </td>  
                    <td class="auto-style5" align="center">  
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"  OnClick="btnSubmit_Click" Width="225px" BackColor="Lime" BorderColor="#0066FF" BorderStyle="Solid" ForeColor="Black" Height="43px" /> </td>  
                </tr>  
            </table>  
        </div>
    </form>
    <script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
    </script
</body>
</html>
