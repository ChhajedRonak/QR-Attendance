<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewSession.aspx.cs" Inherits="StudentAttendaceQRCode_V2.NewSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 242px;
            width: 915px;
            position: absolute;
            top: 20px;
            left: 0px;
        }
        .auto-style2 {
            width: 47%;
            position: relative;
            left: -7px;
            top: 55px;
            margin-top: 0px;
        }
        .auto-style3 {
            text-align: right;
            width: 314px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 915px;
            height: 347px;
            position: absolute;
            left: -4px;
            top: 11px;
            z-index: 1;
        }
        .auto-style6 {
            position: relative;
            left: -7px;
            top: 14px;
        }
        .auto-style7 {
            text-align: right;
            width: 314px;
            height: 31px;
        }
        .auto-style8 {
            height: 31px;
        }
        .auto-style9 {
            position: absolute;
            top: -2px;
            left: 1px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 359px; width: 891px;">
    <form id="form1" runat="server" class="auto-style5" align="center">
        <div class="auto-style1" style="z-index: 1">
            <asp:Button ID="btn_newsession" runat="server" Text="+ New Session" OnClick="Button1_Click" Height="36px" Width="160px" CssClass="auto-style6" EnableTheming="True" Font-Bold="True" Font-Size="Large" Font-Underline="True" />
 
        <asp:PlaceHolder ID="PHQRCode" runat="server"></asp:PlaceHolder>
            <table id="table_subject_time" class="auto-style2">
                <tr>
                    <td class="auto-style7"><asp:Label ID="lbl_subject" runat="server" Text="Subject : " Font-Overline="False" Font-Size="X-Large" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style8">
            <asp:DropDownList ID="drop_subject" runat="server" Font-Size="Large" Height="28px" Width="168px" Visible="False">
                <asp:ListItem Value="CPP">C++</asp:ListItem>
                <asp:ListItem>JAVA</asp:ListItem>
                <asp:ListItem>PYTHON</asp:ListItem>
                <asp:ListItem>AI</asp:ListItem>
            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Label ID="lbl_time" runat="server" Text="Time : " Font-Size="X-Large" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_timeslot" runat="server" Enabled="False" Font-Size="Medium" Width="157px" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2" align="center">
                        <asp:Button ID="btn_generateqr" runat="server" Text="Generate QR" Height="37px" Width="170px" OnClick="btn_generateqr_Click" Visible="False" />
                    </td>
                    
                </tr>
            </table>
        </div>
        <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="5000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:Label ID="lbl_date" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ValidateRequestMode="Disabled" ViewStateMode="Disabled" CssClass="auto-style9"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>


</body>
</html>
