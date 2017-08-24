<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAL.Master" AutoEventWireup="true" CodeBehind="WebFacturaNueva.aspx.cs" Inherits="AlmacenLE.WebFacturaNueva" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <section class="container">
        <div class="row">
            <br />
            <br />
            <br />

            <h2>Nueva Factura</h2>
        </div>
    </section>
    <section class="container" id="form-header">
        <hr class="top-line"/>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <div class="row">
                    <div class="col-sm-12 col-md-2">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-check fa-lg" aria-hidden="true"></i></span>
                            <input type="text" name="serie" id="txtserie" class="form-control input-lg" placeholder="Serie" tabindex="1" runat="server" value="" required/>
					    </div>                        
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-list-alt fa-lg" aria-hidden="true"></i></span>
                            <input type="text" name="nit" id="txtnumfactura" class="form-control input-lg" placeholder="Numero de Factura" tabindex="2" runat="server" value="" required/>
					    </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-md-offset-2">
                        
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-calendar fa-lg" aria-hidden="true"></i></span>
                            <input type="date" name="date" id="txtfecha" class="form-control input-lg" placeholder="Fecha" tabindex="3" runat="server" value="" required/>
					    </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-4">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-braille fa-lg" aria-hidden="true"></i></span>
                            <input type="text" name="nit" id="txtnit" class="form-control input-lg" placeholder="Nit" tabindex="4" runat="server" value="" required/>
					    </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-md-offset-2">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                            <input type="text" name="name" id="txtnombre" class="form-control input-lg" placeholder="Nombre" tabindex="5" runat="server" value="" />
					    </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-location-arrow fa-lg" aria-hidden="true"></i></span>
                            <input type="text" name="address" id="txtaddress" class="form-control input-lg" placeholder="Direccion" tabindex="6" runat="server" value="" />
					    </div>
                    </div>
                </div>
            </div>            
        </div>
    </section>
    <section class="container" id="form-products">
        <hr class="top-line"/>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <div class="row">
                    <div class="col-sm-12 col-md-2">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-check fa-lg" aria-hidden="true"></i></span>
                            <input type="text" name="quantity" id="txtcantidad" class="form-control input-lg" placeholder="Cantidad" tabindex="7" runat="server" value="" required/>
					    </div>                        
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-barcode fa-lg" aria-hidden="true"></i></span>
                            <input type="text" name="productid" id="txtsku" class="form-control input-lg" placeholder="SKU" tabindex="8" runat="server" value="" required/>
					    </div>                        
                    </div>
                    <%--<div class="col-sm-12 col-md-4">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-check fa-lg" aria-hidden="true"></i></span>
                            <input type="text" name="description" id="txtdescripcion" class="form-control input-lg" placeholder="Descripcion" tabindex="9" runat="server" value="" />
					    </div>                        
                    </div>--%>
                    <div class="col-sm-12 col-md-4 col-md-offset-2">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-money fa-lg" aria-hidden="true"></i></span>
                            <input type="number" name="total" id="txttotal" class="form-control input-lg" placeholder="total" runat="server" value="" />
					    </div>                        
                    </div>
                </div> 
                <div class="row">
                    <div class="col-sm-12 col-md-10 col-md-offset-3">
                        <div class="col-sm-2 col-md-2">
                            <asp:Button ID="btn_add" runat="server" Text="Agregar" CssClass="btn btn-success btn-lg btn-block" OnClick="btn_add_Click" />
                        </div> 
                        <div class="col-sm-2 col-md-2">
                            <asp:Button ID="btn_save" runat="server" Text="Guardar" CssClass="btn btn-success btn-lg btn-block" OnClick="btn_save_Click" />
                        </div>  
                        <div class="col-sm-2 col-md-2">
                            <asp:Button ID="btn_print" runat="server" Text="Imprimir" CssClass="btn btn-success btn-lg btn-block" OnClick="btn_print_Click" />
                        </div>      
                    </div>
                </div>                                       
            </div>
        </div>
    </section>
    <section class="container" id="form-details">
        <hr class="top-line"/>
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <asp:GridView ID="GridView1" class="gridTable" runat="server" Width="100%" CssClass="table table-striped table-hover" AutoGenerateColumns="False" DataKeyNames="codProducto" OnRowDeleting="dgv_datos_RowDeleting" >
                    <Columns>
                            <asp:TemplateField HeaderText="SKU">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("codProducto") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("codProducto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cantidad">
                            <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("cantidad") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("cantidad") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre">
                            <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("nombre") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("nombre") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Precio Unitario">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("precio") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("precio") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>                                
                       
                            <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                            </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>                
                </asp:GridView>                            
            </div>
         </div>
    </section>
</asp:Content>
