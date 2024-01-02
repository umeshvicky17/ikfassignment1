<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 459px;
        }
        .auto-style3 {
            width: 570px;
        }
        .auto-style4 {
            width: 459px;
            height: 26px;
        }
        .auto-style5 {
            width: 570px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="EmpId"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td rowspan="6">
                    <asp:GridView ID="GridView1" runat="server" Height="334px" Width="653px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="EmpName"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Designation"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>developer</asp:ListItem>
                        <asp:ListItem>engineer</asp:ListItem>
                        <asp:ListItem>doctor</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="skill"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>java</asp:ListItem>
                        <asp:ListItem>dot net</asp:ListItem>
                        <asp:ListItem>python</asp:ListItem>
                        <asp:ListItem>php</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>

                   <asp:Calendar Id="datepicker" runat="server" visible="False" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="datepicker_SelectionChanged1" ShowGridLines="True" Width="220px">
                       <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                       <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                       <OtherMonthDayStyle ForeColor="#CC9966" />
                       <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                       <SelectorStyle BackColor="#FFCC66" />
                       <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                       <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Select Date" />

            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="SearchbyEmp" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Update" Width="262px" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Delete" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="save" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="showall" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    </form>
    </body>
</html>
