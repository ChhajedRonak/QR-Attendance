<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewSession.aspx.cs" Inherits="StudentAttendaceQRCode_V2.NewSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="App_Themes/NewSession.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server" class="auto-style5" align="center">
        <div>
            <br /> <br />
            <asp:Label Class="timee" ID="lbl_date" runat="server" ValidateRequestMode="Disabled" ViewStateMode="Disabled"></asp:Label>
            <br /><br />
            <center>
                <asp:Button Class="button button1" ID="btn_newsession" runat="server" Text="+ New Session" OnClick="Button1_Click" />
            
            
 
        <asp:PlaceHolder ID="PHQRCode" runat="server"></asp:PlaceHolder>
            <table id="table_subject_time" class="auto-style2">
                <tr>
                    <td><asp:Label Class="lab" ID="lbl_subject" runat="server" Text="Subject : " Visible="False"></asp:Label>
                    </td>
                    <td>
            <asp:DropDownList Class="dropp" ID="drop_subject" runat="server" Visible="False">
                <asp:ListItem Value="CPP">C++</asp:ListItem>
                <asp:ListItem>JAVA</asp:ListItem>
                <asp:ListItem>PYTHON</asp:ListItem>
                <asp:ListItem>AI</asp:ListItem>
            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Label Class="lab" ID="lbl_time" runat="server" Text="Time : " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_timeslot" runat="server" Enabled="False" Font-Size="Medium" Width="157px" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2" align="center">
                        <asp:Button Class="button button1" ID="btn_generateqr" runat="server" Text="Generate QR" Height="37px" Width="170px" OnClick="btn_generateqr_Click" Visible="False" />
                    </td>
                    
                </tr>
            </table>
        </div>
        <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="5000" OnTick="Timer1_Tick">
        </asp:Timer>
        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>

    </center>
</body>
</html>
