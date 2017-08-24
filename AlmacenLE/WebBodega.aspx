<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAL.Master" AutoEventWireup="true" CodeBehind="WebBodega.aspx.cs" Inherits="AlmacenLE.WebBodega" %>
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
                    <h2>Nuevo Bodega</h2>
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
                                <input type="text" name="txtsku" id="txtnombre" class="form-control input-lg" placeholder="Nombre de Bodega" tabindex="2" runat="server" value="" required/>
                            </div>
                        </div>	
                        		    
                    </div>
                    <div class="form-group input-group">
                         <span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span> 
                        <input type="text" name="txtname" id="txtdireccion" class="form-control input-lg" placeholder="Direccion" tabindex="3" runat="server" value="" required/>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-money fa-lg" aria-hidden="true"></i></span>
                                <input type="text" name="txtmunicipio" id="txtmunicipio" class="form-control input-lg" placeholder="Municipio" tabindex="6  " runat="server" value=""/>
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
                        <h2>Lista de Bodegas</h2>
                    </div>
                </div>
            </section>
            <section class="container">
                <div class="row">
                    <hr class="top-line"/>
                    <div class="col-md-10 col-md-offset-1">
                        <asp:GridView ID="dgv_datos" class="gridTable" runat="server" Width="100%" CssClass="table table-striped table-hover" AutoGenerateColumns="False" DataKeyNames="idBodega" >
                            <Columns>
                                
                                <asp:TemplateField HeaderText="Codigo Bodega">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("idBodega") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("idBodega") %>'></asp:Label>
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
                                <asp:TemplateField HeaderText="Direccion">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("direccion") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("direccion") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Municipio">
                                <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("municipio") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("municipio") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                                            
                               <%-- <asp:TemplateField ShowHeader="False">
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
                                </asp:TemplateField>--%>
                            </Columns>                
                        </asp:GridView>
                    </div>
                </div>
            </section> 
        </div>


        <div class="row">      
            <section class="container">
                <div class="row">
                    <div class="col-md-6 ">
                        <br />
                        <h2>Lista de Registros</h2>
                        <p>Tipo: <br />
                            1: Entrada <br />
                            2: Salida
                        </p>
                    </div>
                </div>
            </section>
            <section class="container">
                <div class="row">
                    <hr class="top-line"/>
                    <div class="col-md-10 col-md-offset-1">
                        <asp:GridView ID="GridView1" class="gridTable" runat="server" Width="100%" CssClass="table table-striped table-hover" AutoGenerateColumns="False" DataKeyNames="idDetalleReg" >
                            <Columns>
                                
                                <asp:TemplateField HeaderText="Codigo Registeo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("idDetalleReg") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("idDetalleReg") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha">
                                <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("fecha") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("fecha") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Tipo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("tipo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("tipo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cod Producto">
                                <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("codProducto") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("codProducto") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Cantidad">
                                <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("cantidad") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("cantidad") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                                            
                               <%-- <asp:TemplateField ShowHeader="False">
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
                                </asp:TemplateField>--%>
                            </Columns>                
                        </asp:GridView>
                    </div>
                </div>
            </section> 
        </div>
        
    </section>
    

</asp:Content>
