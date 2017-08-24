<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAL.Master" AutoEventWireup="true" CodeBehind="WebCliente.aspx.cs" Inherits="AlmacenLE.WebCliente" %>
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


                <h2>Nuevo Cliente</h2>
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
                            <span class="input-group-addon"><i class="fa fa-braille fa-lg" aria-hidden="true"></i></span>
                            <input type="text" name="nit" id="nit" class="form-control input-lg" placeholder="Nit" tabindex="1" runat="server" value="" required/>
					    </div>
				    </div>				    
			    </div>
			    <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-users fa-lg" aria-hidden="true"></i></span>
				    <input type="text" name="name" id="name" class="form-control input-lg" placeholder="Nombre" tabindex="2" runat="server" value="" required/>
			    </div>
			    <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-book fa-lg" aria-hidden="true"></i></span>
				    <input type="text" name="address" id="address" class="form-control input-lg" placeholder="Direccion" tabindex="3" runat="server" value="" />
			    </div>
			    <div class="row">
				    <div class="col-xs-12 col-sm-6 col-md-6">
					    <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-phone fa-lg" aria-hidden="true"></i></span>
						    <input type="text" name="phone" id="phone" class="form-control input-lg" placeholder="Telefono" tabindex="4" runat="server" value=""/>
					    </div>
				    </div>				    
			    </div>
			    <div class="row">
				   <div class="form-group">
                      <div class="col-sm-10 col-sm-offset-1" >
                        <asp:Button ID="btn_save" runat="server" Text="Guardar Cliente" CssClass="btn btn-success btn-lg btn-block" OnClick="btn_save_Click" />
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
                    


                        <h2>Lista de Clientes</h2>
                    </div>
                </div>
            </section>

            <section class="container">
                <div class="row">
                    <hr class="top-line"/>
                    <div class="col-md-10 col-md-offset-1">
                    <asp:GridView ID="dgv_datos" class="gridTable" runat="server" Width="100%" CssClass="table table-striped table-hover" AutoGenerateColumns="False" DataKeyNames="nit" OnRowDeleting="dgv_datos_RowDeleting" OnRowEditing="dgv_datos_RowEditing">
                                <Columns>
                                    <asp:TemplateField HeaderText="Nit">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("nit") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("nit") %>'></asp:Label>
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
                </section> 
            </div>
      </div>
    </section>
</asp:Content>
