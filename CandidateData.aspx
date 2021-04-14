<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CandidateData.aspx.cs" Inherits="_Default" %>

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
        .style6
        {
            height: 26px;
            width: 173px;
        }
        .style7
        {
            width: 173px;
        }
        .style5
        {
            height: 26px;
        }
        .style14
        {
            height: 26px;
            width: 290px;
        }
        .style15
        {
            width: 290px;
        }
        .style17
        {
            height: 40px;
            width: 290px;
        }
        .style18
        {
            height: 40px;
            width: 173px;
        }
        .style19
        {
            height: 40px;
        }
        .style20
        {
            height: 35px;
            width: 290px;
        }
        .style21
        {
            height: 35px;
            width: 173px;
        }
        .style22
        {
            height: 35px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHBody" Runat="Server">
    <table class="style1">
    <tr>
                <td align="right" class="style17">
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="style18" align="left">
                    <asp:TextBox ID="txtName" runat="server" placeholder="Name" style="margin-left: 0px" class="textbox"
                        Width="216px"></asp:TextBox>
                </td>
                <td class="style19" width="200">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Enter Name" ToolTip="Enter Name">*</asp:RequiredFieldValidator>
                </td>
            </tr>
    <tr>
                <td align="right" class="style20">
                    <asp:Label ID="lblOccupation" runat="server" Text="Occupation"></asp:Label>
                </td>
                <td align="left" class="style21">
                    <asp:TextBox ID="txtOccupation" runat="server" placeholder="Occupation" style="margin-left: 0px" class="textbox"
                        Width="216px"></asp:TextBox>
                </td>
                <td class="style22" width="200">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtOccupation" ErrorMessage="Enter Occupation" 
                        ToolTip="Enter Occupation">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" class="button button2"
                        Width="90px" />
                </td>
            </tr>
    <tr>
                <td align="right" class="style15" >
                    <asp:Label ID="lblAadharNo" runat="server" Text="Aadhar No"></asp:Label>
                </td>
                <td align="left" class="style7">
                    <asp:TextBox ID="txtAadharNo" runat="server" style="margin-left: 0px" class="textbox" placeholder="AadharNo" 
                        Width="216px"></asp:TextBox>
                </td>
                <td width="200">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtAadharNo" ErrorMessage="Enter Aadhar No" 
                        ToolTip="Enter Aadhar No">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnFind" runat="server" onclick="btnFind_Click" Text="Find" class="button button2"
                        Width="90px" CausesValidation="False" />
                </td>
            </tr>
    <tr>
                <td align="right" class="style15">
                    <asp:Label ID="lblDistrict" runat="server" Text="District"></asp:Label>
                </td>
                <td align="left" class="style7">
                    <asp:DropDownList ID="ddlDistrict" runat="server" Height="28px" class="textbox"
                        style="margin-left: 0px" Width="218px">
                        <asp:ListItem>Prakasam</asp:ListItem>
                        <asp:ListItem>Guntur</asp:ListItem>
                        <asp:ListItem>Krishna</asp:ListItem>
                        <asp:ListItem>Nellore</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td width="200">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="90px" class="button button2"
                        onclick="btnUpdate_Click" />
                    &nbsp;</td>
            </tr>
    <tr>
                <td align="right" class="style14">
                    <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No"></asp:Label>
                </td>
                <td align="left" class="style6">
                    <asp:TextBox ID="txtPhoneNo" runat="server" placeholder="Phone No" style="margin-left: 0px" class="textbox"
                        Width="216px"></asp:TextBox>
                </td>
                <td width="200" class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtPhoneNo" ErrorMessage="Enter Phone No" 
                        ToolTip="Enter Phone No">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" Text="Clear" class="button button2"
                        Width="90px" />
                </td>
            </tr>
    <tr>
                <td align="right" class="style15">
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                </td>
                <td align="left" class="style7">
                    <asp:TextBox ID="txtAge" runat="server" placeholder="Age" Width="41px" style="margin-left: 0px" class="textbox"></asp:TextBox>
                </td>
                <td width="200">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtAge" ErrorMessage="Enter Age" ToolTip="Enter Age">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtAge" ErrorMessage="Please enter a valid age" 
                        MaximumValue="100" MinimumValue="18" ToolTip="Enter a valid age" 
                        Type="Integer">*</asp:RangeValidator>
                &nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="90px" class="button button2"
                        onclick="btnDelete_Click" />
                </td>
            </tr>
    <tr>
                <td align="right" class="style17">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td align="left" class="style18">
                    <asp:RadioButton ID="rbtnMale" runat="server" GroupName="Gender" Text="Male" 
                        ValidationGroup="Gender" ViewStateMode="Disabled" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton 
                        ID="rbtnFemale" runat="server" GroupName="Gender" Text="Female" 
                        ValidationGroup="Gender" />
&nbsp;</td>
                <td width="150" class="style19">
                </td>
            </tr>
    <tr>
                <td align="right" class="style17">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="E-mail"  style="margin-left: 0px" class="textbox"
                        Width="216px"></asp:TextBox>
                </td>
                <td width="200" class="style19">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Enter a valid Email address" 
                        ToolTip="Enter a valid Email address" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
    <tr>
                <td align="right" class="style17">
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" class="textbox"
                        Width="216px" TextMode="Password"></asp:TextBox>
                </td>
                <td width="200" class="style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Enter your Password" 
                        ToolTip="Enter your Password">*</asp:RequiredFieldValidator>
                </td>
            </tr>
    <tr>
                <td align="right" class="style17">
                    <asp:Label ID="lblPassword1" runat="server" Text="Re-Enter Password"></asp:Label>
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="txtPassword1" runat="server" placeholder="Password" Width="216px" class="textbox" TextMode="Password"></asp:TextBox>
                </td>
                <td width="200" class="style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtPassword1" ErrorMessage="Re-Enter your Password" 
                        ToolTip="Re-Enter your Password">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtPassword1" 
                        ErrorMessage="Please enter the same password" 
                        ToolTip="Please enter the same password">*</asp:CompareValidator>
                </td>
            </tr>
    <tr>
                <td align="center" class="style2" colspan="2">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td align="justify" class="style2" width="200">
                    <br />
                </td>
            </tr>
</table>
</asp:Content>


