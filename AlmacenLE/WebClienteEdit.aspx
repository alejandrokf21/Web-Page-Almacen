<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAL.Master" AutoEventWireup="true" CodeBehind="WebClienteEdit.aspx.cs" Inherits="AlmacenLE.WebClienteEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <section class="container">
        <section class="container">
        <div class="row">
            <div class="col-md-6 ">
                <br />
                <br />
                <br />
                <br />


                <h2>Actualizar Cliente</h2>
            </div>
        </div>
    </section>
    <section class="container" id="form-register">
        <hr class="top-line"/>
          <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="row">
				    <div class="col-xs-12 col-sm-6 col-md-6">
					    <div class="form-group">
                            <input type="text" name="nit" id="nit" class="form-control input-lg" placeholder="Nit" tabindex="1" runat="server" value="" disabled="disabled"/>
					    </div>
				    </div>				    
			    </div>
			    <div class="form-group">
				    <input type="text" name="name" id="name" class="form-control input-lg" placeholder="Nombre" tabindex="2" runat="server" value=""/>
			    </div>
			    <div class="form-group">
				    <input type="text" name="address" id="address" class="form-control input-lg" placeholder="Direccion" tabindex="3" runat="server" value=""/>
			    </div>
			    <div class="row">
				    <div class="col-xs-12 col-sm-6 col-md-6">
					    <div class="form-group">
						    <input type="text" name="phone" id="phone" class="form-control input-lg" placeholder="Telefono" tabindex="4" runat="server" value=""/>
					    </div>
				    </div>				    
			    </div>
			    <div class="row">
				   <div class="form-group">
                      <div class="col-sm-10 col-sm-offset-1" >
                        <asp:Button ID="btn_update" runat="server" Text="Actualizar Cliente" CssClass="btn btn-success btn-lg btn-block" OnClick="btn_update_Click" />
                      </div>
                    </div>
			    </div>                 
            </div>
          </div>
        <hr />
    </section>
</asp:Content>
