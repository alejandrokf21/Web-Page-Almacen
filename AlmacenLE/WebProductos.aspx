<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAL.Master" AutoEventWireup="true" CodeBehind="WebProductos.aspx.cs" Inherits="AlmacenLE.WebProductos" %>
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
                    <h2>Nuevo Producto</h2>
                </div>
            </div>
        </section>
        <section class="container" id="form-register">
            <hr class="top-line"/>
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="row">
                        <div class="col-sm-12 col-md-4">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i></span> 
                                <input type="date" name="txtdate" id="txtdate" class="form-control input-lg"  tabindex="1" runat="server" value="" required/>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-md-offset-2">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-search" aria-hidden="true"></i></span>       
                                <select class="form-control" id="idBodega" name="idBodega" runat="server">
                                </select>
                     
                                <%--<asp:DropDownList ID="DropDownList1" runat="server"  Width="100%" Height="100%" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnTextChanged="DropDownList1_TextChanged">
                                </asp:DropDownList>--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-barcode" aria-hidden="true"></i></span> 
                                <input type="text" name="txtsku" id="txtsku" class="form-control input-lg" placeholder="SKU" tabindex="2" runat="server" value="" required/>
                            </div>
                        </div>	
                        		    
                    </div>
                    <div class="form-group input-group">
                         <span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span> 
                        <input type="text" name="txtname" id="txtname" class="form-control input-lg" placeholder="Nombre" tabindex="3" runat="server" value="" required/>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-inbox fa-lg" aria-hidden="true"></i></span> 
                                <input type="number" name="txtcantidad" id="txtcantidad" class="form-control input-lg" placeholder="Cantidad" tabindex="4" runat="server" value="" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group input-group">           
                                <span class="input-group-addon"><i class="fa fa-money fa-lg" aria-hidden="true"></i></span>                     
                                <input type="number" name="txtcosto" id="txtcosto" class="form-control input-lg" placeholder="Precio Costo" tabindex="5" runat="server" value="" />                                
                            </div>
                        </div>				    
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-money fa-lg" aria-hidden="true"></i></span>
                                <input type="number" name="txtprecio" id="txtprecio" class="form-control input-lg" placeholder="Precio Venta" tabindex="6  " runat="server" value=""/>
                            </div>
                        </div>				    
                    </div>
                    <div class="row">
                        <div class="form-group ">
                            <div class="col-sm-10 col-sm-offset-1" >
                                <asp:Button ID="btn_save" runat="server" Text="Guardar Producto" CssClass="btn btn-success btn-lg btn-block" OnClick="btn_save_Click" />
                            </div>
                        </div>
                    </div>                 
                </div>
            </div>
            <hr />
        </section>

        <div class="row">      
            <section class="container">
                <div class="row">
                    <div class="col-md-6 ">
                        <br />
                        <h2>Lista de Productos</h2>
                    </div>
                </div>
            </section>
            <section class="container">
                <div class="row">
                    <hr class="top-line"/>
                    <div class="col-md-10 col-md-offset-1">
                        <asp:GridView ID="dgv_datos" class="gridTable" runat="server" Width="100%" CssClass="table table-striped table-hover" AutoGenerateColumns="False" DataKeyNames="sku" OnRowDeleting="dgv_datos_RowDeleting">
                            <Columns>
                                
                                <asp:TemplateField HeaderText="SKU">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("sku") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("sku") %>'></asp:Label>
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
                                <asp:TemplateField HeaderText="Cantidad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("cantidad") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("cantidad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Precio Costo">
                                <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("precioCosto") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("precioCosto") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Precio Venta">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("precioVenta") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("precioVenta") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>                                
                                <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                                                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
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
        </div>
        
    </section>
    

</asp:Content>
