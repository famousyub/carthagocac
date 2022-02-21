<%@ Page Title="" Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Search Result -
                <asp:Label ID="lblsearch" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:DataList ID="DlistUser" runat="server" Width="100%" 
                        onitemcommand="DlistUser_ItemCommand">
                        <ItemStyle CssClass="grid1" />
                        <ItemTemplate>
                            <table style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #808080;" 
                                width="100%">
                                <tr>
                                    <td class="style9" rowspan="2">
                                        <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("profilepic") %>' 
                                            Height="73px" Width="63px" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblname" Text='<%# Eval("fname") %>' runat="server" 
                                            Font-Bold="True" ForeColor="#6600CC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right">
                                        <asp:Button ID="btadfnd0" runat="server" CommandArgument='<%#Eval("email") %>'  
                                            Text="View Profile" CssClass="btnpost" CommandName="pro" Width="100px"/>
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btadfnd" runat="server" CommandArgument='<%#Eval("email") %>' 
                                            CssClass="btnpost" Text="Add Friend" CommandName="frd" Width="100px" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

