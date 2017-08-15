<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="editUser.aspx.cs" Inherits="Product_Sales.editUser" %>


<asp:Content ID="Content2" ContentPlaceHolderID="AdminPagesPlaceHolder" runat="server" >
    <form id="formEditUser" runat="server">
        <div class="account">
            <div class="container">
                <div class="account-top heading">
                    <h2>Edit Users</h2>
                </div>
                <div class="account-main" style="overflow-x:scroll" >
                    <div class="col-md-6 account-left">
                        <asp:GridView ID="GridView1" CssClass="mydatagrid" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="userTableEdit" AllowPaging="True" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="id" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="id" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
                                <asp:BoundField DataField="username" HeaderText="UserName" SortExpression="username" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
                                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
                                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
                                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
                                <asp:BoundField DataField="sex" HeaderText="Sex" SortExpression="sex" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
                                <asp:BoundField DataField="mobile" HeaderText="Mobile Number" SortExpression="mobile" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
                                <asp:BoundField DataField="address" HeaderText="Billing Address" SortExpression="address" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
                                <asp:BoundField DataField="isAdmin" HeaderText="Administrator" SortExpression="isAdmin" HeaderStyle-Wrap="False" ItemStyle-Wrap="False" FooterStyle-VerticalAlign="Top" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Top" FooterStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" />
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
                        <asp:SqlDataSource ID="userTableEdit"
                            runat="server"
                            ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>"
                            DeleteCommand="DELETE FROM [userlogin] WHERE [id] = @original_id AND [username] = @original_username AND [password] = @original_password AND (([lastName] = @original_lastName) OR ([lastName] IS NULL AND @original_lastName IS NULL)) AND [firstName] = @original_firstName AND (([sex] = @original_sex) OR ([sex] IS NULL AND @original_sex IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND [email] = @original_email AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([isAdmin] = @original_isAdmin) OR ([isAdmin] IS NULL AND @original_isAdmin IS NULL))"
                            OldValuesParameterFormatString="original_{0}"
                            SelectCommand="SELECT * FROM [userlogin]"
                            UpdateCommand="UPDATE [userlogin] SET [username] = @username, [password] = @password, [lastName] = @lastName, [firstName] = @firstName, [sex] = @sex, [mobile] = @mobile, [email] = @email, [address] = @address, [isAdmin] = @isAdmin WHERE [id] = @original_id AND [username] = @original_username AND [password] = @original_password AND (([lastName] = @original_lastName) OR ([lastName] IS NULL AND @original_lastName IS NULL)) AND [firstName] = @original_firstName AND (([sex] = @original_sex) OR ([sex] IS NULL AND @original_sex IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND [email] = @original_email AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([isAdmin] = @original_isAdmin) OR ([isAdmin] IS NULL AND @original_isAdmin IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_lastName" Type="String" />
                                <asp:Parameter Name="original_firstName" Type="String" />
                                <asp:Parameter Name="original_sex" Type="String" />
                                <asp:Parameter Name="original_mobile" Type="Int64" />
                                <asp:Parameter Name="original_email" Type="String" />
                                <asp:Parameter Name="original_address" Type="String" />
                                <asp:Parameter Name="original_isAdmin" Type="String" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="lastName" Type="String" />
                                <asp:Parameter Name="firstName" Type="String" />
                                <asp:Parameter Name="sex" Type="String" />
                                <asp:Parameter Name="mobile" Type="Int64" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="isAdmin" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_lastName" Type="String" />
                                <asp:Parameter Name="original_firstName" Type="String" />
                                <asp:Parameter Name="original_sex" Type="String" />
                                <asp:Parameter Name="original_mobile" Type="Int64" />
                                <asp:Parameter Name="original_email" Type="String" />
                                <asp:Parameter Name="original_address" Type="String" />
                                <asp:Parameter Name="original_isAdmin" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
