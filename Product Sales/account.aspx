<%@ Page Title="Account" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="Product_Sales.account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active">Account</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="account">
        <div class="container">
            <div class="account-top heading">
                <h2>ACCOUNT</h2>
            </div>
            <div class="account-main">
                <div class="col-md-6 account-left">
                    <h3>Existing User</h3>
                    <form runat="server" class="account-bottom">
                        <asp:TextBox ID="UserName" placeholder="Username" TabIndex="3" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="Password" placeholder="Password" TabIndex="4" runat="server" TextMode="Password" required></asp:TextBox>
                        &nbsp;<div class="address">
                            <a class="forgot" href="#">Forgot Your Password?</a>
                            <asp:Button ID="Login" runat="server" Text="Login" OnClick="Button1_Click" />
                        </div>
                    </form>
                </div>
                <div class="col-md-6 account-right account-left">
                    <h3>New User? Create an Account</h3>
                    <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
                    <a href="register.aspx">Create an Account</a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</asp:Content>
