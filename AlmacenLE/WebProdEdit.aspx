<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAL.Master" AutoEventWireup="true" CodeBehind="WebProdEdit.aspx.cs" Inherits="AlmacenLE.WebProdEdit" %>
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
                    <h2>Actualizar Producto</h2>
                </div>
            </div>
        </section>
        <section class="container" id="form-register">
            <hr class="top-line"/>
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-barcode" aria-hidden="true"></i></span> 
                                <input type="text" name="txtsku" id="txtsku" class="form-control input-lg" placeholder="SKU" tabindex="1" runat="server" value="" required disabled="disabled"/>
                            </div>
                        </div>	
                        			    
                    </div>
                    <div class="form-group input-group">
                         <span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span> 
                        <input type="text" name="txtname" id="txtname" class="form-control input-lg" placeholder="Nombre" tabindex="2" runat="server" value="" required/>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-inbox fa-lg" aria-hidden="true"></i></span> 
                                <input type="number" name="txtcantidad" id="txtcantidad" class="form-control input-lg" placeholder="Cantidad" tabindex="3" runat="server" value="" />
                            </div>
                        </div>
                    </div>
                   
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-money fa-lg" aria-hidden="true"></i></span>
                                <input type="number" name="txtprecio" id="txtprecio" class="form-control input-lg" placeholder="Precio Venta" tabindex="5   " runat="server" value=""/>
                            </div>
                        </div>				    
                    </div>
                    <div class="row">
                        <div class="form-group ">
                            <div class="col-sm-10 col-sm-offset-1" >
                                <asp:Button ID="btn_update" runat="server" Text="Actualizar Producto" CssClass="btn btn-success btn-lg btn-block" OnClick="btn_update_Click" />
                            </div>
                        </div>
                    </div>                 
                </div>
            </div>
            <hr />
        </section>
</asp:Content>
