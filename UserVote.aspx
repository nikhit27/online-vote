<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserVote.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .textbox 
    { 
        background: white; 
        border: 1px solid #DDD; 
        border-radius: 5px; 
        box-shadow: 0 0 5px #DDD inset; 
        color: #666; 
        outline: none; 
        height:25px; 
        width: 275px; 
    } 
    .button 
    {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 6px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        margin: 4px 2px 40px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
    }
    .button2:hover 
    {
        box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24),0 8px 25px 0 rgba(0,0,0,0.19);
    }
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 257px;
        }
        .style2
        {
            height: 23px;
            width: 225px;
        }
        .style4
        {
            height: 23px;
            width: 257px;
        }
        .style5
        {
            width: 225px;
        }
        .style6
        {
            width: 290px;
        }
        .style7
        {
            width: 290px;
            height: 40px;
        }
        .style8
        {
            width: 225px;
            height: 40px;
        }
        .style9
        {
            width: 257px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHead" Runat="Server">
    <asp:Label ID="lblUserName" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnLogout" runat="server" Height="37px" class="button button2"
        onclick="btnLogout_Click" Text="Logout" Width="82px" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBody" Runat="Server">
    <table class="style1">
        <tr>
            <td align="right" class="style7">
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </td>
            <td class="style8">
                    <asp:TextBox ID="txtName" runat="server" placeholder="Name" style="margin-left: 0px" class="textbox" 
                        Width="216px"></asp:TextBox>
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                    <asp:Label ID="lblOccupation" runat="server" Text="Occupation"></asp:Label>
                </td>
            <td class="style8">
                    <asp:TextBox ID="txtOccupation" runat="server" placeholder="Occupation" style="margin-left: 0px" class="textbox"
                        Width="216px" ></asp:TextBox>
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td align="right" class="style6">
                    <asp:Label ID="lblAadharNo" runat="server" Text="Aadhar No"></asp:Label>
                </td>
            <td class="style5">
                    <asp:TextBox ID="txtAadharNo" runat="server" placeholder="Aadhar No" style="margin-left: 0px" class="textbox"
                        Width="216px" ></asp:TextBox>
                </td>
            <td class="style3">
                <asp:Button ID="btnFind" runat="server" onclick="btnFind_Click" Text="Find" class="button button2"
                    Width="81px" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style6" height="35px">
                    <asp:Label ID="lblDistrict" runat="server" Text="District"></asp:Label>
                </td>
            <td class="style2" height="35px">
                    <asp:DropDownList ID="ddlDistrict" runat="server" Height="28px" class="textbox"
                        style="margin-left: 0px" Width="218px" 
                    >
                        <asp:ListItem>Prakasam</asp:ListItem>
                        <asp:ListItem>Guntur</asp:ListItem>
                        <asp:ListItem>Krishna</asp:ListItem>
                        <asp:ListItem>Nellore</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td class="style4" height="35px">
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                    <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No"></asp:Label>
                </td>
            <td class="style8">
                    <asp:TextBox ID="txtPhoneNo" runat="server" style="margin-left: 0px" placeholder="Phone No"  class="textbox"
                        Width="216px"></asp:TextBox>
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                </td>
            <td class="style8">
                    <asp:TextBox ID="txtAge" runat="server" placeholder="Age" Width="41px" class="textbox"
                    style="margin-left: 0px" ></asp:TextBox>
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
            <td class="style8">
                    <asp:RadioButton ID="rbtnMale" runat="server" GroupName="g" Text="Male" 
                        ValidationGroup="g" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbtnFemale" runat="server" GroupName="g" Text="Female" 
                        ValidationGroup="g" />
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </td>
            <td class="style8">
                    <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 0px" placeholder="E-mail" class="textbox"
                        Width="216px"></asp:TextBox>
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td align="right" class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="btnVote" runat="server" onclick="btnVote_Click" Text="Vote" class="button button2"
                    Width="81px" />
                <br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHFoot" Runat="Server">
</asp:Content>

