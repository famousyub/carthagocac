<%@ Page Title="" Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="SendMsg.aspx.cs" Inherits="SendMsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style21
        {
            width: 486px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                SEND MESSAGE</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style21">
                    <tr>
                        <td class="lbl">
                            Message To :</td>
                        <td>
                            <asp:Label ID="lblto" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Subject :
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="197px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Message ::</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="50px" TextMode="MultiLine" 
                                Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" CssClass="btnpost" Text="SEND" />
                            <asp:Label ID="lbsend" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

