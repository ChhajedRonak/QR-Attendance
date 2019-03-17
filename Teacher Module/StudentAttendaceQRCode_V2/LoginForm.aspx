<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="StudentAttendaceQRCode_V2.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="App_Themes/LoginForm.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
</head>
<body align="center" >
    <div id="bg"></div>
    <br />
    <br />
    <br />
    <form id="form1" runat="server" class="auto-style6"  align="center" method="post">
        <asp:Label ID="Label1" runat="server" Text="Login" ForeColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <div class="imgcontainer">
            <span class="glyphicon glyphicon-user fa-4x"></span> 
        </div>
        <br />
        <br />

        <div class="container">
            <table align="center">  
                <tr>  
                    <td  style="font-size: x-large; font-weight: 200; font-style: normal; font-family: 'Georgia'"> Username: &nbsp; &nbsp; &nbsp;</td>  
                    <td class="auto-style10">  
                        <asp:TextBox class="tb1" ID="txt_username" runat="server" TextMode="Email" Width="231px" BackColor="#CCCCCC" ForeColor="black" />  
                        <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage=" * Please enter Username" ControlToValidate="txt_username" runat="server" ForeColor="Red" /> </td>  
                </tr>  
                <tr>
                    <td></td>
                    <td></td>
                      
                </tr>
                <tr>  
                    <td style="font-size: x-large; font-style: normal; font-family: 'Georgia'"> Password: &nbsp; &nbsp;</td>  
                    <td class="auto-style8">  
                        <asp:TextBox class="tb1" ID="txt_password" runat="server" TextMode="Password" Width="232px" BackColor="#CCCCCC" ForeColor="Black" />  
                        <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txt_password" ErrorMessage=" * Please enter Password" ForeColor="Red" /> </td>  
                </tr>  
                   <tr>
                    <td></td>
                    <td></td>                    
                </tr>
                <tr>  
                    
                    <td colspan="2" class="auto-style5" align="center">  
                        <asp:Button Class="button button1" ID="btnSubmit" runat="server" Text="Log in"  OnClick="btnSubmit_Click" /> </td>  
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
    </script>
</body>
</html>
