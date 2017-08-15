<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Product_Sales.products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<li class="active">Products</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="prdt">
            <div class="container">
                <div class="prdt-top">
                    <div class="col-md-9 prdt-left">
                        <div class="product-one">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-4 product-left p-left">
                                        <div class="product-main simpleCart_shelfItem">
                                            <a href="single.aspx?id=<%#Eval("id") %>" class="mask">
                                                <img class="img-responsive zoom-img" src="images/<%#Eval("picture").ToString().Split(',')[0]+".jpg" %>" alt="" /></a>
                                            <div class="product-bottom">
                                                <h3><%#Eval("name") %></h3>
                                                <p>Explore Now</p>
                                                <h4><a class="item_add" href="#"><i></i></a><span class=" item_price">$ <%#Eval("price") %></span></h4>
                                            </div>
                                            <div class="srch srch1">
                                                <span>-<%#Eval("discount") %>%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <%#Container.ItemIndex==2 ? "<div class=\"clearfix\"></div></div><div class=\"product-one\">" :String.Empty%>
                                </ItemTemplate>
                            </asp:Repeater>
                            <div class="clearfix"></div>
                            <nav class="col-md-6 col-md-offset-4" style="padding:20px 0 0 0">
                                <ul class="pagination pagination-lg">
                                    <%--<li><a href="products.aspx?page=1"><i class="fa fa-angle-left">«</i></a></li>--%>
                                    <li><asp:LinkButton ID="FirstPage" runat="server" OnClick="FirstPage_Click"><i class="fa fa-angle-left">«</i></asp:LinkButton></li>
                                    <asp:Repeater ID="Repeater2" runat="server">
                                        <ItemTemplate>
                                            <li <%#Container.ItemIndex == Convert.ToInt32(Session["pageIndex"].ToString()) ? "class=\"active\"" :String.Empty%>>
                                                <asp:LinkButton ID="LinkButton1" Text=<%#Eval("num") %> runat="server" OnClick="PageClick"><%#Eval("num") %></asp:LinkButton>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <li><asp:LinkButton ID="LastPage" runat="server" OnClick="LastPage_Click"><i class="fa fa-angle-right">»</i></asp:LinkButton></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-3 prdt-right">
                        <div class="w_sidebar">
                            <section class="sky-form">
                                <h4>Catogories</h4>
                                <div class="row1 scroll-pane">
                                    <div class="col col-4">
                                        <label class="checkbox">
                                            <asp:CheckBox ID="All" runat="server" Checked="true" OnCheckedChanged="CategoryChanged" AutoPostBack="True"/><i></i>All Accessories</label>
                                        <label class="checkbox">
                                            <asp:CheckBox ID="Women" runat="server" AutoPostBack="True" OnCheckedChanged="CategoryChanged"/><i></i>Women Watches</label>
                                        <label class="checkbox">
                                            <asp:CheckBox ID="Men" runat="server" AutoPostBack="True" OnCheckedChanged="CategoryChanged"/><i></i>Men Watches</label>
                                        <label class="checkbox">
                                            <asp:CheckBox ID="Kids" runat="server" AutoPostBack="True" OnCheckedChanged="CategoryChanged"/><i></i>Kids Watches</label>
                                    </div>
                                </div>
                            </section>
                            <section class="sky-form">
                                <h4>Brand</h4>
                                <div class="row1 row2 scroll-pane">
                                    <div class="col col-4">
                                        <label class="checkbox">
                                            <asp:CheckBox ID="Fossil" runat="server" AutoPostBack="True" OnCheckedChanged="BrandChanged"/><i></i>Fossil</label>
                                        <label class="checkbox">
                                            <asp:CheckBox ID="AnneKlein" runat="server" AutoPostBack="True" OnCheckedChanged="BrandChanged"/><i></i>Anne Klein</label>
                                        <label class="checkbox">
                                            <asp:CheckBox ID="Tissot" runat="server" AutoPostBack="True" OnCheckedChanged="BrandChanged"/><i></i>Tissot</label>
                                        <label class="checkbox">
                                            <asp:CheckBox ID="Omega" runat="server" AutoPostBack="True" OnCheckedChanged="BrandChanged"/><i></i>Omega</label>
                                        <label class="checkbox">
                                            <asp:CheckBox ID="Bulova" runat="server" AutoPostBack="True" OnCheckedChanged="BrandChanged"/><i></i>Bulova</label>
                                        <label class="checkbox">
                                            <asp:CheckBox ID="Guess" runat="server" AutoPostBack="True" OnCheckedChanged="BrandChanged"/><i></i>Guess</label>
                                        <label class="checkbox">
                                            <asp:CheckBox ID="Disney" runat="server" AutoPostBack="True" OnCheckedChanged="BrandChanged"/><i></i>Disney</label>
                                        <%--<label class="checkbox">
                                            <input type="checkbox" name="checkbox"><i></i>Sports</label>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox"><i></i>Fossil</label>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox"><i></i>Maxima</label>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox"><i></i>Yepme</label>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox"><i></i>Citizen</label>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox"><i></i>Diesel</label>--%>
                                    </div>
                                </div>
                            </section>
                            <section class="sky-form">
                                <h4>Colour</h4>
                                <ul class="w_nav2">
                                    <li><asp:LinkButton Class="color1" ID="Pink" runat="server" OnClick="ColorClick"></asp:LinkButton></li>
                                    <li><asp:LinkButton Class="color2" ID="Gold" runat="server" OnClick="ColorClick"></asp:LinkButton></li>
                                    <li><asp:LinkButton Class="color3" ID="Brown" runat="server" OnClick="ColorClick"></asp:LinkButton></li>
                                    <li><asp:LinkButton Class="color4" ID="Blue" runat="server" OnClick="ColorClick"></asp:LinkButton></li>
                                    <li><asp:LinkButton Class="color5" ID="Red" runat="server" OnClick="ColorClick"></asp:LinkButton></li>
                                    <li><asp:LinkButton Class="color6" ID="Black" runat="server" OnClick="ColorClick"></asp:LinkButton></li>
                                    <li><asp:LinkButton Class="color7" ID="Silver" runat="server" OnClick="ColorClick"></asp:LinkButton></li>
                                    <%--<li><a class="color2" href="#"></a></li>
                                    <li><a class="color3" href="#"></a></li>
                                    <li><a class="color4" href="#"></a></li>
                                    <li><a class="color5" href="#"></a></li>
                                    <li><a class="color6" href="#"></a></li>
                                    <li><a class="color7" href="#"></a></li>
                                    <li><a class="color8" href="#"></a></li>
                                    <li><a class="color9" href="#"></a></li>
                                    <li><a class="color10" href="#"></a></li>
                                    <li><a class="color12" href="#"></a></li>
                                    <li><a class="color13" href="#"></a></li>
                                    <li><a class="color14" href="#"></a></li>
                                    <li><a class="color15" href="#"></a></li>
                                    <li><a class="color5" href="#"></a></li>
                                    <li><a class="color6" href="#"></a></li>
                                    <li><a class="color7" href="#"></a></li>
                                    <li><a class="color8" href="#"></a></li>
                                    <li><a class="color9" href="#"></a></li>
                                    <li><a class="color10" href="#"></a></li>--%>
                                </ul>
                            </section>
                            <section class="sky-form">
                                <h4>discount</h4>
                                <div class="row1 row2 scroll-pane">
                                    <div class="col col-4">
                                        <label class="radio">
                                            <asp:RadioButton GroupName="Discount" ID="Discount0" runat="server" AutoPostBack="True" OnCheckedChanged="DiscountChanged" Checked="true"/><i></i>All</label>
                                        <label class="radio">
                                            <asp:RadioButton GroupName="Discount" ID="Discount20" runat="server" AutoPostBack="True" OnCheckedChanged="DiscountChanged"/><i></i>20 % and above</label>
                                        <label class="radio">
                                            <asp:RadioButton GroupName="Discount" ID="Discount40" runat="server" AutoPostBack="True" OnCheckedChanged="DiscountChanged"/><i></i>40 % and above</label>
                                        <label class="radio">
                                            <asp:RadioButton GroupName="Discount" ID="Discount60" runat="server" AutoPostBack="True" OnCheckedChanged="DiscountChanged"/><i></i>60 % and above</label>
                                        <label class="radio">
                                            <asp:RadioButton GroupName="Discount" ID="Discount80" runat="server" AutoPostBack="True" OnCheckedChanged="DiscountChanged"/><i></i>80 % and above</label>
                                        <%--<label class="radio">
                                            <input type="radio" name="radio"><i></i>20 % and above</label>
                                        <label class="radio">
                                            <input type="radio" name="radio"><i></i>10 % and above</label>--%>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        </form>
</asp:Content>