<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .textbox 
    { 
        background: white; 
        border: 1px solid #DDD; 
        border-radius: 5px; 
        box-shadow: 0 0 5px #DDD inset; 
        color: #666; 
        outline: none; 
        } 
    .button 
    {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 6px 15px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;
    }
    .button2:hover 
    {
        box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24),0 8px 25px 0 rgba(0,0,0,0.19);
    }
        .style2
        {
            width: 290px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBody" Runat="Server">
    <table class="style1">
    <tr>
        <td align="right" class="style2">
                    <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
                    <asp:TextBox ID="txtUserName" runat="server" placeholder="UserName" 
                        Width="216px" class="textbox" Height="25px"></asp:TextBox>
                </td>
    </tr>
    <tr>
        <td align="right" class="style2">
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" 
                        Width="216px" class="textbox" TextMode="Password" Height="25px" ></asp:TextBox>
                </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="90px" class="button button2"
                onclick="btnLogin_Click" />
                </td>
    </tr>
</table>
</asp:Content>


<asp:Content ID="Content4" runat="server" contentplaceholderid="CPHHead">
</asp:Content>



