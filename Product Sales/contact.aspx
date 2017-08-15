<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Product_Sales.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<li class="active">Contact</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--contact-start-->
	<div class="contact">
		<div class="container">
			<div class="contact-top heading">
				<h2>CONTACT</h2>
			</div>
				<div class="contact-text">
				<div class="col-md-3 contact-left">
						<div class="address">
							<h5>Address</h5>
							<p>Luuuxrious Watches, 
							<span>Group 3,</span>
							California Lutheran University.</p>
						</div>
						<div class="address">
							<h5>Infromation</h5>
							<p>Tel:805 123 4567, 
							<span>Fax:805-123-4567</span>
							Email: <a href="mailto:unknown@email.com">unknown@example.com</a></p>
						</div>
					</div>
					<div class="col-md-9 contact-right">
						<form>
							<input type="text" placeholder="Name">
							<input type="text" placeholder="Phone">
							<input type="text"  placeholder="Email">
							<textarea placeholder="Message" required=""></textarea>
							<div class="submit-btn">
								<input type="submit" value="SUBMIT">
							</div>
						</form>
					</div>	
					<div class="clearfix"></div>
				</div>
		</div>
	</div>
	<!--contact-end-->
	<!--map-start-->
	<div class="map">
		<iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJicFmBTcw6IAR9GKnnJ9saRg&key=AIzaSyBnVpCirVFJvS1iPqRGE2OkM-_8W6eJCYU" style="border:0"></iframe>
	</div>
	<!--map-end-->
</asp:Content>
