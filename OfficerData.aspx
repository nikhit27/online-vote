<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OfficerData.aspx.cs" Inherits="_Default" %>

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

        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 290px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
            width: 77px;
        }
        .style5
        {
            height: 26px;
        }
        .style3
        {
            width: 290px;
        }
        .style7
        {
            width: 77px;
        }
        .style14
        {
            width: 290px;
            height: 34px;
        }
        .style15
        {
            width: 77px;
            height: 34px;
        }
        .style16
        {
            height: 34px;
        }
        .style8
        {
            width: 290px;
            height: 2px;
        }
        .style13
        {
            width: 77px;
            height: 2px;
        }
        .style10
        {
            height: 2px;
        }
        .style17
        {
            width: 290px;
            height: 40px;
        }
        .style18
        {
            width: 77px;
            height: 40px;
        }
        .style19
        {
            height: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBody" Runat="Server">
    <table align="center" class="style1">
    <tr>
        <td align="right" class="style17">
            <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
        </td>
        <td class="style18" align="left">
            <asp:TextBox ID="txtstate" runat="server" placeholder="State" 
                style="margin-left: 0px" class="textbox"
                        Width="216px" Height="25px"></asp:TextBox>
        </td>
        <td class="style19" width="200">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtState" ErrorMessage="Enter State" 
                        ToolTip="Enter State">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style17">
            <asp:Label ID="lblDistrict" runat="server" Text="District"></asp:Label>
        </td>
        <td align="left" class="style18">
            <asp:DropDownList ID="ddlDistrict" runat="server" Height="28px" class="textbox"
                        style="margin-left: 0px" Width="218px">
                <asp:ListItem>Prakasam</asp:ListItem>
                <asp:ListItem>Guntur</asp:ListItem>
                <asp:ListItem>Krishna</asp:ListItem>
                <asp:ListItem>Nellore</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style19" width="200">
                    &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" class="button button2"
                        Width="90px" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style17" >
            <asp:Label ID="lblMandal" runat="server" Text="Mandal"></asp:Label>
        </td>
        <td align="left" class="style18">
            <asp:TextBox ID="txtMandal" runat="server" style="margin-left: 0px" 
                placeholder="Mandal" class="textbox"
                        Width="216px" Height="25px"></asp:TextBox>
        </td>
        <td width="200" class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtMandal" ErrorMessage="Enter Aadhar No" 
                        ToolTip="Enter Mandal">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnFind" runat="server" onclick="btnFind_Click" Text="Find" class="button button2"
                        Width="90px" CausesValidation="False" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style3">
            <asp:Label ID="lblVillage" runat="server" Text="Village"></asp:Label>
        </td>
        <td align="left" class="style7">
            <asp:TextBox ID="txtVillage" runat="server" style="margin-left: 0px" 
                class="textbox" placeholder="Village" 
                        Width="216px" Height="25px"></asp:TextBox>
        </td>
        <td width="200">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtVillage" ErrorMessage="Enter Village" 
                        ToolTip="Enter Village">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="90px" class="button button2"
                        onclick="btnUpdate_Click" />
                    &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style4">
            <asp:Label ID="lblBoothNo" runat="server" Text="Booth No"></asp:Label>
        </td>
        <td align="left" class="style6">
            <asp:TextBox ID="txtBoothNo" placeholder="Booth No" runat="server" 
                style="margin-left: 0px" class="textbox"
                        Width="216px" Height="25px"></asp:TextBox>
        </td>
        <td width="200" class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtBoothNo" ErrorMessage="Enter Booth No" 
                        ToolTip="Enter Booth No">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" Text="Clear" class="button button2"
                        Width="90px" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style14">
            <asp:Label ID="Label1" runat="server" Text="OfficerCode"></asp:Label>
        </td>
        <td align="left" class="style15">
            <asp:TextBox ID="txtOfficerCode" runat="server" placeholder="Officer Code" 
                Width="216px" class="textbox"
                        style="margin-left: 0px" Height="25px"></asp:TextBox>
        </td>
        <td width="200" class="style16">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtOfficerCode" ErrorMessage="Enter Officer Code" 
                        ToolTip="Enter Officer Code">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="90px" class="button button2"
                        onclick="btnDelete_Click" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style8">
            <asp:Label ID="lblOfficerName" runat="server" Text="Officer Name"></asp:Label>
        </td>
        <td align="left" class="style13">
            <asp:TextBox ID="txtOfficerName" placeholder="Officer Name" runat="server" 
                style="margin-left: 0px" class="textbox"
                        Width="216px" Height="25px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td width="150" class="style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtOfficerName" ErrorMessage="Enter Officer Name" 
                        ToolTip="Enter Officer Name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style17">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        </td>
        <td align="left" class="style18">
            <asp:TextBox ID="txtPassword" runat="server" class="textbox" placeholder="Password" 
                        Width="216px" TextMode="Password" Height="25px"></asp:TextBox>
        </td>
        <td width="200" class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Enter your Password" 
                        ToolTip="Enter your Password">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style17">
            <asp:Label ID="lblRole" runat="server" Text="Role"></asp:Label>
        </td>
        <td align="left" class="style18">
            <asp:DropDownList ID="ddlRole" runat="server" class="textbox" Height="28px" 
                Width="218px" >
                <asp:ListItem Selected="True">Admin</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td width="200" class="style19">
                    </td>
    </tr>
    <tr>
        <td align="center" class="style2" colspan="2">
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
        <td align="justify" class="style2" width="200">
            <br />
        </td>
    </tr>
</table>
</asp:Content>


