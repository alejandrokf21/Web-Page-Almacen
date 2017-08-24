<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AlmacenLE.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="container">
             <div class="col-md-6 col-md-offset-3">
            
              <div class="col-md-12 col-sm-12">                  
                  <div class="panel panel-login">
                      <div class="panel-heading">						
                        <hr />
                        <div class="row welcome-pad">
                            <div class="col-xs-12 text-center">
								<h2>Registrese Ahora</h2>
							</div>
                        </div>
						<hr>
					  </div>
                      <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
									<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Nombre</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user " aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="txtname"  placeholder="Ingrese su Nombre" runat="server" required/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Correo</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="txtemail"  placeholder="Ingrese su Correo" runat="server" required/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Usuario</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-eye-close" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="user" id="txtuser"  placeholder="Ingrese su Usuario" runat="server" required/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Constraseña</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock " aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="txtpassword"  placeholder="Ingrese su Contraseña" runat="server" required/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirme Contraseña</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock " aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="txtconfirm"  placeholder="Confirme su Contraseña" runat="server" required/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							
                            <asp:Button ID="btn_save" runat="server" Text="Registrarse" CssClass="btn btn-success btn-lg btn-block" OnClick="btn_save_Click" />
                           
						</div>
					
                            </div>
                        </div>
                      </div>
                </div>
              </div>
         
              </div>
            </div>	
            	
</asp:Content>
