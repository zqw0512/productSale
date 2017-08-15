<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Product_Sales.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active">Register</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="register">
        <form class="container" runat="server">
            <div class="register-top heading">
                <h2>REGISTER</h2>
            </div>
            <div class="register-main">
                <div class="col-md-6 account-left">
                    <asp:TextBox ID="Username" placeholder="Username" TabIndex="1" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="Password" placeholder="Password" type="password" TabIndex="2" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="RePassword" placeholder="Retype password" type="password" TabIndex="3" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="Email" placeholder="Email" type="email" TabIndex="4" runat="server" required></asp:TextBox>
                    <ul>
                        <li>
                            <label class="radio left">
                                <asp:RadioButton ID="RadioMale" GroupName="sex" runat="server"/><i>Male</i></label></li>
                        <li>
                            <label class="radio">
                                <asp:RadioButton ID="RadioFemale" GroupName="sex" runat="server"/><i>Female</i></label></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
                <div class="col-md-6 account-left">
                    <asp:TextBox ID="FirstName" placeholder="First name" TabIndex="5" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="LastName" placeholder="Last name" TabIndex="6" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="Address" placeholder="Address" TabIndex="7" runat="server" required></asp:TextBox>
                    <asp:TextBox ID="Mobile" placeholder="Mobile" TabIndex="8" runat="server" required></asp:TextBox>
                </div>
                <div class="clearfix"></div>
                <div class="box">
                </div>
                <div class="address submit">
                    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
                </div>
            </div>
        </form>
    </div>
</asp:Content>