<%@ Page Title="Details" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="single.aspx.cs" Inherits="Product_Sales.single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active">Products</li>
    <li class="active">Details</li>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-single-->
    <div class="single contact">
        <div class="container">
            <div class="single-main">
                <div class="col-md-9 single-main-left">
                    <div class="sngl-top">
                        <div class="col-md-5 single-top-left">
                            <div class="flexslider">
                                <ul class="slides">
                                    <li data-thumb="images/<%=picture.Split(',')[0]+".jpg" %>">
                                        <div class="thumb-image">
                                            <img src="images/<%=picture.Split(',')[0]+".jpg" %>" data-imagezoom="true" class="img-responsive" alt="" />
                                        </div>
                                    </li>
                                    <li data-thumb="images/<%=picture.Split(',')[1]+".jpg" %>">
                                        <div class="thumb-image">
                                            <img src="images/<%=picture.Split(',')[1]+".jpg" %>" data-imagezoom="true" class="img-responsive" alt="" />
                                        </div>
                                    </li>
                                    <li data-thumb="images/<%=picture.Split(',')[2]+".jpg" %>">
                                        <div class="thumb-image">
                                            <img src="images/<%=picture.Split(',')[2]+".jpg" %>" data-imagezoom="true" class="img-responsive" alt="" />
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- FlexSlider -->
                            <script src="js/imagezoom.js"></script>
                            <script defer src="js/jquery.flexslider.js"></script>
                            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                            <script>
                                // Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
                            </script>
                        </div>
                        <div class="col-md-7 single-top-right">
                            <div class="single-para simpleCart_shelfItem">
                                <h2><%=name %></h2>
                                <div class="star-on">
                                    <ul class="star-footer">
                                        <li><a href="#"><i></i></a></li>
                                        <li><a href="#"><i></i></a></li>
                                        <li><a href="#"><i></i></a></li>
                                        <li><a href="#"><i></i></a></li>
                                        <li><a href="#"><i></i></a></li>
                                    </ul>
                                    <div class="review">
                                        <a href="#">1 customer review </a>

                                    </div>
                                    <div class="clearfix"></div>
                                </div>

                                <h5 class="item_price">$ <%=price %>.00</h5>
                                <p><%=description %></p>
                                <div class="available">
                                    <ul>
                                        <li>Color
										<select>
                                            <%=color %>
                                        </select></li>
                                        <li class="size-in">Size<select>
                                            <%=size %>
                                        </select></li>
                                        <div class="clearfix"></div>
                                    </ul>
                                </div>
                                <ul class="tag-men">
                                    <li><span>TAG</span>
                                        <span class="women1">: <%=tag %></span></li>
                                    <li><span>SKU</span>
                                        <span class="women1">: <%=sku %></span></li>
                                </ul>
                                <form runat="server">
                                    <asp:LinkButton class="add-cart item_add" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ADD TO CART</asp:LinkButton>
                                </form>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="tabs">
                        <ul class="menu_drop">
                            <li class="item1"><a href="#">
                                <img src="images/arrow.png" alt="">Description</a>
                                <ul>
                                    <li class="subitem1"><a href="#"><%=description %></a></li>
                                </ul>
                            </li>
                            <li class="item2"><a href="#">
                                <img src="images/arrow.png" alt="">Additional information</a>
                                <ul>
                                    <li class="subitem2"><a href="#"><%=information %></a></li>
                                </ul>
                            </li>
                            <li class="item3"><a href="#">
                                <img src="images/arrow.png" alt="">Reviews (1)</a>
                                <ul>
                                    <li class="subitem1"><a href="#"><%=reviews %></a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 single-right">
                    <div class="w_sidebar">
                        <section class="sky-form">
                            <h4>Hot Watches</h4>
                            <div class="">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <div class="rank">
                                            <a href="single.aspx?id=<%#Eval("id") %>">
                                                <img id="picture" src="images/<%#Eval("picture").ToString().Split(',')[0]+".jpg" %>" alt="" /></a>
                                            <div class="content">
                                                <p id="name">
                                                    <%#Eval("name") %></p>
                                                <p id="brand">
                                                    <%#Eval("brand") %></p>
                                                <p>
                                                    <a id="price"
                                                        href="#"><i></i></a><span style="color: darkred">$ <%#Eval("price") %></span></p>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </section>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--end-single-->
</asp:Content>
