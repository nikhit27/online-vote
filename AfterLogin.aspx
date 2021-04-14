<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AfterLogin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css"> 
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
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBody" Runat="Server">
    <asp:Label ID="lblUserName" runat="server"></asp:Label>
&nbsp;<asp:Button ID="btnLogout" runat="server" onclick="Button1_Click" class="button button2"
    Text="Logout" />
</asp:Content>


