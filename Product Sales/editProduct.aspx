<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="editProduct.aspx.cs" Inherits="Product_Sales.editProduct" %>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminPagesPlaceHolder" runat="server">
    <form id="formEditProduct" runat="server">
        <div class="account">
            <div class="container">
                <div class="account-top heading">
                    <h2>Edit Products</h2>
                </div>
                <div class="account-main" style="overflow-x:scroll" >
                    <div class="col-md-6 account-left" >
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EditProductTable">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                                <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                                <asp:BoundField DataField="size" HeaderText="Size" SortExpression="size" />
                                <asp:BoundField DataField="catogory" HeaderText="Catogory" SortExpression="catogory" />
                                <asp:BoundField DataField="brand" HeaderText="Brand" SortExpression="brand" />
                                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                <asp:BoundField DataField="rate" HeaderText="Rating" SortExpression="rate" />
                                <asp:BoundField DataField="tag" HeaderText="Tag" SortExpression="tag" />
                                <asp:BoundField DataField="sku" HeaderText="SKU" SortExpression="sku" />
                                <asp:BoundField DataField="discount" HeaderText="Discount" SortExpression="discount" />
                                <asp:BoundField DataField="infomation" HeaderText="Infomation" SortExpression="infomation" />
                                <asp:BoundField DataField="numOfRate" HeaderText="Rating Count" SortExpression="numOfRate" />
                                <asp:BoundField DataField="reviews" HeaderText="Reviews" SortExpression="reviews" />
                                <asp:BoundField DataField="picture" HeaderText="Picture Path" SortExpression="picture" />
                            </Columns>
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" Wrap="False" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="EditProductTable" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>" DeleteCommand="DELETE FROM [products] WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND [color] = @original_color AND [size] = @original_size AND [catogory] = @original_catogory AND [brand] = @original_brand AND [description] = @original_description AND [rate] = @original_rate AND [tag] = @original_tag AND [sku] = @original_sku AND (([discount] = @original_discount) OR ([discount] IS NULL AND @original_discount IS NULL)) AND (([infomation] = @original_infomation) OR ([infomation] IS NULL AND @original_infomation IS NULL)) AND (([numOfRate] = @original_numOfRate) OR ([numOfRate] IS NULL AND @original_numOfRate IS NULL)) AND (([reviews] = @original_reviews) OR ([reviews] IS NULL AND @original_reviews IS NULL)) AND (([picture] = @original_picture) OR ([picture] IS NULL AND @original_picture IS NULL))" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [name] = @name, [price] = @price, [color] = @color, [size] = @size, [catogory] = @catogory, [brand] = @brand, [description] = @description, [rate] = @rate, [tag] = @tag, [sku] = @sku, [discount] = @discount, [infomation] = @infomation, [numOfRate] = @numOfRate, [reviews] = @reviews, [picture] = @picture WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND [color] = @original_color AND [size] = @original_size AND [catogory] = @original_catogory AND [brand] = @original_brand AND [description] = @original_description AND [rate] = @original_rate AND [tag] = @original_tag AND [sku] = @original_sku AND (([discount] = @original_discount) OR ([discount] IS NULL AND @original_discount IS NULL)) AND (([infomation] = @original_infomation) OR ([infomation] IS NULL AND @original_infomation IS NULL)) AND (([numOfRate] = @original_numOfRate) OR ([numOfRate] IS NULL AND @original_numOfRate IS NULL)) AND (([reviews] = @original_reviews) OR ([reviews] IS NULL AND @original_reviews IS NULL)) AND (([picture] = @original_picture) OR ([picture] IS NULL AND @original_picture IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_price" Type="Int32" />
                                <asp:Parameter Name="original_color" Type="String" />
                                <asp:Parameter Name="original_size" Type="String" />
                                <asp:Parameter Name="original_catogory" Type="String" />
                                <asp:Parameter Name="original_brand" Type="String" />
                                <asp:Parameter Name="original_description" Type="String" />
                                <asp:Parameter Name="original_rate" Type="Int32" />
                                <asp:Parameter Name="original_tag" Type="String" />
                                <asp:Parameter Name="original_sku" Type="String" />
                                <asp:Parameter Name="original_discount" Type="Int32" />
                                <asp:Parameter Name="original_infomation" Type="String" />
                                <asp:Parameter Name="original_numOfRate" Type="Int32" />
                                <asp:Parameter Name="original_reviews" Type="String" />
                                <asp:Parameter Name="original_picture" Type="String" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="color" Type="String" />
                                <asp:Parameter Name="size" Type="String" />
                                <asp:Parameter Name="catogory" Type="String" />
                                <asp:Parameter Name="brand" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="rate" Type="Int32" />
                                <asp:Parameter Name="tag" Type="String" />
                                <asp:Parameter Name="sku" Type="String" />
                                <asp:Parameter Name="discount" Type="Int32" />
                                <asp:Parameter Name="infomation" Type="String" />
                                <asp:Parameter Name="numOfRate" Type="Int32" />
                                <asp:Parameter Name="reviews" Type="String" />
                                <asp:Parameter Name="picture" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_price" Type="Int32" />
                                <asp:Parameter Name="original_color" Type="String" />
                                <asp:Parameter Name="original_size" Type="String" />
                                <asp:Parameter Name="original_catogory" Type="String" />
                                <asp:Parameter Name="original_brand" Type="String" />
                                <asp:Parameter Name="original_description" Type="String" />
                                <asp:Parameter Name="original_rate" Type="Int32" />
                                <asp:Parameter Name="original_tag" Type="String" />
                                <asp:Parameter Name="original_sku" Type="String" />
                                <asp:Parameter Name="original_discount" Type="Int32" />
                                <asp:Parameter Name="original_infomation" Type="String" />
                                <asp:Parameter Name="original_numOfRate" Type="Int32" />
                                <asp:Parameter Name="original_reviews" Type="String" />
                                <asp:Parameter Name="original_picture" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
