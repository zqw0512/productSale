<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="Product_Sales.addUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminPagesPlaceHolder" runat="server">
    <div class="account">
        <form id="formEditProduct" runat="server">
            <div class="container">
                <div class="account-top heading">
                    <h2>New User</h2>
                </div>
                <div class="account-main">
                    <div class="col-md-6 account-left">
                        <asp:SqlDataSource ID="SqlDataSourceInsertUser" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>" InsertCommand="INSERT INTO [userlogin] ([username], [password], [lastName], [firstName], [sex], [mobile], [email], [address], [isAdmin]) VALUES (@username, @password, @lastName, @firstName, @sex, @mobile, @email, @address, @isadmin)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [userlogin]">
                            <InsertParameters>
                                <asp:ControlParameter Name="username" ControlID="ins_Username" Type="String" />
                                <asp:ControlParameter Name="password" ControlID="ins_Password" Type="String" />
                                <asp:ControlParameter Name="lastName" ControlID="ins_LastName" Type="String" />
                                <asp:ControlParameter Name="firstName" ControlID="ins_FirstName" Type="String" />
                                <asp:ControlParameter Name="sex" ControlID="ins_sex" Type="String" />
                                <asp:ControlParameter Name="mobile" ControlID="ins_Mobile" Type="Int32" />
                                <asp:ControlParameter Name="email" ControlID="ins_Email" Type="String" />
                                <asp:ControlParameter Name="address" ControlID="ins_Address" Type="String" />
                                <asp:ControlParameter Name="isadmin" ControlID="ins_admin" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>

                        <asp:TextBox ID="ins_Username" placeholder="Username" TabIndex="1" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="ins_Password" placeholder="Password" type="password" TabIndex="2" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="passwdVerify" placeholder="Re-type Password" type="password" TabIndex="3" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="ins_Email" placeholder="Email" type="email" TabIndex="4" runat="server" required></asp:TextBox>
                        <asp:DropDownList ID="ins_sex" TabIndex="5" runat="server">
                            <asp:ListItem Text="Male" Value="1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ins_admin" TabIndex="6" runat="server">
                            <asp:ListItem Text="Admin" Value="Y"></asp:ListItem>
                            <asp:ListItem Text="User" Value="N" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6 account-left">
                        <asp:TextBox ID="ins_FirstName" placeholder="First name" TabIndex="7" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="ins_LastName" placeholder="Last name" TabIndex="8" runat="server"></asp:TextBox>
                        <asp:TextBox ID="ins_Mobile" placeholder="Mobile" TabIndex="9" runat="server"></asp:TextBox>
                        <asp:TextBox ID="ins_Address" placeholder="Address" TabIndex="10" runat="server"></asp:TextBox>
                    </div>
                    <div class="address submit">
                        <asp:Button ID="BinsertProduct" runat="server" OnClick="Binsert_Click" Text="Add User" />
                    </div>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
