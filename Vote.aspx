<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Vote.aspx.cs" Inherits="_Default" %>

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
        .style3
        {
            width: 257px;
        }
        .style5
        {
            width: 290px;
        }
        .style6
        {
            width: 250px;
        }
        .style10
        {
            width: 290px;
            height: 40px;
        }
        .style11
        {
            width: 250px;
            height: 40px;
        }
        .style12
        {
            width: 257px;
            height: 40px;
        }
        .style13
        {
            width: 290px;
            height: 39px;
        }
        .style14
        {
            width: 250px;
            height: 39px;
        }
        .style15
        {
            width: 257px;
            height: 39px;
        }
        .style16
        {
            width: 290px;
            height: 54px;
        }
        .style17
        {
            width: 250px;
            height: 54px;
        }
        .style18
        {
            width: 257px;
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBody" Runat="Server">
    <table class="style1">
        <tr>
            <td align="right" class="style10">
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </td>
            <td class="style11">
                    <asp:TextBox ID="txtName" runat="server" placeholder="Name" style="margin-left: 0px" class="textbox"
                        Width="216px"></asp:TextBox>
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                    <asp:Label ID="lblOccupation" runat="server" Text="Occupation"></asp:Label>
                </td>
            <td class="style11">
                    <asp:TextBox ID="txtOccupation" runat="server" placeholder="Occupation" style="margin-left: 0px" class="textbox"
                        Width="216px" ></asp:TextBox>
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td align="right" class="style16">
                    <asp:Label ID="lblAadharNo" runat="server" Text="Aadhar No"></asp:Label>
                </td>
            <td class="style17">
                    <asp:TextBox ID="txtAadharNo" runat="server" style="margin-left: 0px" 
                        placeholder="Aadhar No" class="textbox"
                        Width="216px"></asp:TextBox>
                </td>
            <td class="style18">
                <asp:Button ID="btnFind" runat="server" onclick="btnFind_Click" 
                    class="button button2" Text="Find" Width="81px" Height="31px" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                    <asp:Label ID="lblDistrict" runat="server" Text="District"></asp:Label>
                </td>
            <td class="style11">
                    <asp:DropDownList ID="ddlDistrict" runat="server" Height="28px" class="textbox"
                        style="margin-left: 0px" Width="218px" 
                    >
                        <asp:ListItem>Prakasam</asp:ListItem>
                        <asp:ListItem>Guntur</asp:ListItem>
                        <asp:ListItem>Krishna</asp:ListItem>
                        <asp:ListItem>Nellore</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                    <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No"></asp:Label>
                </td>
            <td class="style14">
                    <asp:TextBox ID="txtPhoneNo" runat="server" style="margin-left: 0px" class="textbox" placeholder="Phone No" 
                        Width="216px"></asp:TextBox>
                </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                </td>
            <td class="style11">
                    <asp:TextBox ID="txtAge" runat="server" Width="41px" class="textbox"
                    placeholder="Age" style="margin-left: 0px" ></asp:TextBox>
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
            <td class="style11">
                    <asp:RadioButton ID="rbtnMale" runat="server" GroupName="g" Text="Male" 
                        ValidationGroup="g" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbtnFemale" runat="server" GroupName="g" Text="Female" 
                        ValidationGroup="g" />
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </td>
            <td class="style11">
                    <asp:TextBox ID="txtEmail" placeholder="E-mail" runat="server" style="margin-left: 0px" class="textbox"
                        Width="216px"></asp:TextBox>
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td align="right" class="style5">
                &nbsp;</td>
            <td class="style6">
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


