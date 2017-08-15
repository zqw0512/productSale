<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Product_Sales.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active">Checkout</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-ckeckout-->
    <div class="ckeckout">
        <div class="container">
            <div class="ckeck-top heading">
                <h2>CHECKOUT</h2>
            </div>
            <div class="ckeckout-top">
                <div class="cart-items">
                    <h3>My Shopping Bag</h3>
                    <div class="in-check">
                        <ul class="unit">
                            <li><span>Item</span></li>
                            <li><span>Product Name</span></li>
                            <li><span>Unit Price</span></li>
                            <li><span>Delivery Details</span></li>
                            <li></li>
                            <div class="clearfix"></div>
                        </ul>
                        <asp:Repeater ID="Repeater1" runat="server" >
                            <ItemTemplate>
                                <ul class="cart-header" id="header<%#Eval("id") %>">
                                    <div class="close" id="close<%#Eval("id") %>"></div>
                                    <li class="ring-in"><a href="single.aspx?id=<%#Eval("id") %>">
                                        <img src="images/<%#Eval("picture").ToString().Split(',')[0]+".jpg" %>" class="img-responsive" alt="" style="max-height: 9em"></a>
                                    </li>
                                    <li><span class="name"><%#Eval("name") %></span></li>
                                    <li><span class="cost">$ <%#Eval("price") %></span></li>
                                    <li><span>Free</span>
                                        <p>Delivered in 2-3 business days</p>
                                    </li>
                                    <div class="clearfix"></div>
                                </ul>
                                <script>$(document).ready(function (c) {
                                    $('#close<%#Eval("id") %>').on('click', function (c) {
                                        $.post('checkout.aspx', {id: <%#Eval("id") %>});
                                        $('#header<%#Eval("id") %>').fadeOut('slow', function (c) {
                                            $('#header<%#Eval("id") %>').remove();
                                        });
                                    });
                                });
                                </script>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end-ckeckout-->
</asp:Content>

