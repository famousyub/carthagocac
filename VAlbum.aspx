<%@ Page Title="" Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="VAlbum.aspx.cs" Inherits="VAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Gallary Album</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="gvalbum" runat="server" onitemcommand="gvalbum_ItemCommand" 
                    RepeatColumns="3" RepeatDirection="Horizontal" Width="100%">
                    <AlternatingItemStyle CssClass="grid1" />
                    <ItemStyle CssClass="grid1" />
                    <ItemTemplate>
                        <table align="center">
                            <tr>
                                <td 
                                    width="112">
                                    <asp:LinkButton ID="lnkalbumn" runat="server" 
                                        CommandArgument='<%#Eval("AID") %>' CommandName="View" Font-Bold="True" 
                                        Font-Size="Medium" Font-Underline="False" ForeColor="#0066FF" 
                                        Text='<%#Eval("Aname") %>' ToolTip="View Album"></asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td height="100" 
                                    style="background-image: url('img/gbg.png'); vertical-align: top; padding: 10px;" 
                                    width="112">
                                    <asp:ImageButton ID="img" runat="server" CommandArgument='<%#Eval("AID") %>' 
                                        CommandName="View" Height="85px" ImageUrl='<%#Eval("Image") %>' 
                                        Width="105px" />
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

