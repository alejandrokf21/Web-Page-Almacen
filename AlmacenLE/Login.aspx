<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AlmacenLE.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    
        <div class="container">
    	<div class="row">
		  <div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login">
        <div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="login.php" class="active" id="login-form-link">Iniciar sesión</a>
							</div>
							<div class="col-xs-6 text-right">
								<a href="WebUsuario.aspx" id="register-form-link" >Regístrate ahora</a>
							</div>
						</div>
            <hr />
                        <div class="row welcome-pad">
                            <div class="col-xs-12 text-center">
								<h2>Bienvenido</h2>
							</div>
                        </div>
						<hr>
					</div>
        <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
									<div class="form-group">
									<div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
										<input type="email" name="correo" id="correo" tabindex="1" class="form-control" placeholder="Correo" runat="server" value="" required>
                                         </div>
									</div>
									<div class="form-group">
                                    <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Contraseña" runat="server" required>
                                    </div>
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> Recordarme</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login" id="login" tabindex="4" class="form-control btn btn-login btn-success" value="Iniciar sesión" runat="server"  onServerClick="btnLogin_Click">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="recordar.aspx" tabindex="5" class="forgot-password">¿Has olvidado tu contraseña?</a>
												</div>
											</div>
										</div>
									</div>
                                 </div>
                            </div>
            </div>
                </div>
              </div>
            </div>
        </div>
    
</asp:Content>
