<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="addProduct.aspx.cs" Inherits="Product_Sales.addProduct" %>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminPagesPlaceHolder" runat="server">
    <div class="account">
        <form id="formEditProduct" runat="server">
            <div class="container">
                <div class="account-top heading">
                    <h2>New Products</h2>
                </div>
                <div class="account-main">
                    <div class="col-md-6 account-left">
                        <asp:SqlDataSource ID="SqlDataSourceInsertProduct" runat="server" ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>"
                            InsertCommand="INSERT INTO products(name, price, color, size, catogory, brand, description, rate, tag, sku, discount, infomation, picture) VALUES (@name, @price, @color, @size, @catogory, @brand, @description, @rate, @tag, @sku, @discount, @information , @picture)"
                            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT products.* FROM products">
                            <InsertParameters>
                                <asp:ControlParameter Name="name" ControlID="Insertname" Type="String" />
                                <asp:ControlParameter Name="price" ControlID="Insertprice" Type="Int32" />
                                <asp:ControlParameter Name="color" ControlID="Insertcolor" Type="String" />
                                <asp:ControlParameter Name="size" ControlID="Insertsize" Type="String" />
                                <asp:ControlParameter Name="catogory" ControlID="Insertcatogory" Type="String" />
                                <asp:ControlParameter Name="brand" ControlID="Insertbrand" Type="String" />
                                <asp:ControlParameter Name="description" ControlID="Insertdescription" Type="String" />
                                <asp:ControlParameter Name="rate" ControlID="Insertrate" Type="Int32" />
                                <asp:ControlParameter Name="tag" ControlID="Inserttag" Type="String" />
                                <asp:ControlParameter Name="sku" ControlID="Insertsku" Type="String" />
                                <asp:ControlParameter Name="discount" ControlID="Insertdiscount" Type="Int32" />
                                <asp:ControlParameter Name="information" ControlID="insertinformation" Type="String" />
                                <asp:ControlParameter Name="picture" ControlID="uploadPicture" Type="String" />

                            </InsertParameters>
                        </asp:SqlDataSource>

                        <asp:TextBox ID="Insertname" required placeholder="Product Name" TabIndex="1" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertprice"  required placeholder="Price" TabIndex="2" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertcolor" required placeholder="color" TabIndex="3" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertsize" required placeholder="Size" TabIndex="4" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertcatogory" required placeholder="Category" TabIndex="5" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertbrand" required placeholder="Brand" TabIndex="6" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-md-6 account-left">
                        <asp:TextBox ID="Insertdescription" required placeholder="Description" TabIndex="7" runat="server"></asp:TextBox>
                        <asp:TextBox ID="insertinformation" placeholder="Information" TabIndex="8" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertdiscount" placeholder="Discount" TabIndex="9" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertrate" required placeholder="Rate" TabIndex="10" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Inserttag" required placeholder="Tag" TabIndex="11" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertsku" placeholder="SKU" TabIndex="12" runat="server"  ></asp:TextBox>
                        <asp:Label   ID="uploadPicture" placeholder="uploadPicture"  text="" TabIndex="13" runat="server"  >Upload Product Images </asp:Label>
                        <asp:FileUpload ID="FileUpload0" runat="server"/>
                        <asp:FileUpload ID="FileUpload1" runat="server"/>
                        <asp:FileUpload ID="FileUpload2" runat="server"/>
                        
                    </div>

                    <div class="address submit">
                        <asp:Button ID="BinsertProduct" runat="server" OnClick="Binsert_Click" Text="Insert" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
