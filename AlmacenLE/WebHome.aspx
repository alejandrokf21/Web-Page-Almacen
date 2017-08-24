<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAL.Master" AutoEventWireup="true" CodeBehind="WebHome.aspx.cs" Inherits="AlmacenLE.WebHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="container">
        <div class="container">
            <div class="row">
                <br />
                <br />
               
                <div class="container">

                    <div id="tabs-home" class="row slider" style="background:url(http://legalprom.cl/wp-content/uploads/2014/05/main-bg.jpg) no-repeat center fixed;">
                        <div class="col-sm-3">
                            
                        </div>
                        <!-- tab content -->
                        <div id="wea" class="col-sm-9 tab-content">
        
                            <div class=" active text-style fade in active text-center" id="tab1">
                                <h2>Almacen La Elegancia</h2>
                                <p>El mejor lugar para usted y su familia</p>
                                <p><strong>Abierto las 24 hrs/7 dias a la semana/365 dias</strong></p>
                               
                            </div>
            
                            <div class="tab-pane text-style fade" id="tab2">
                                <h2>Proteja su Marca Online</h2>
                                <p>Evite que otros aprovechen su esfuerzo y buen nombre registrando su marca con LegalProm</p>
                                <p><strong>Desde $129.990</strong></p>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Seleccione Sociedad para comenzar:</h3>
                                    </div>
                                    <div class="panel-body">
                                        <form action="/forms/login" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="ve6XAejZc30dRt9YPpgeHfj7z95M0d8dI9dVZtndr9IhXOt4/mF1WjyPwlScpgyCh4bkLKNzfyt5naNaG837Rw==">
                                            <div class="row form-group">
                                                <div class="col-md-2">
                                                    <img src="http://legalprom.cl/wp-content/uploads/2014/02/establecimiento-comercial.jpg" class="img-responsive img-radio" width="50" data-toggle="tooltip" title="" data-original-title="Marca Establecimiento Comercial">
                                                    <input type="checkbox" name="doc_type[cod][]" class="hidden" value="brand_mec">
                                                    </div>
                                                <div class="col-md-2">
                                                    <img src="http://legalprom.cl/wp-content/uploads/2014/02/servicio.jpg" class="img-responsive img-radio" width="50" data-toggle="tooltip" title="" data-original-title="Marca Servicio">
                                                    <input type="checkbox" name="doc_type[cod][]" class="hidden" value="brand_ms">
                                                </div>
                                                <div class="col-md-2">
                                                    <img src="http://legalprom.cl/wp-content/uploads/2014/02/producto.jpg" class="img-responsive img-radio" width="50" data-toggle="tooltip" title="" data-original-title="Marca Producto">
                                                    <input type="checkbox" name="doc_type[cod][]" class="hidden" value="brand_mp">
                                                </div>
                                                <div class="col-md-2">
                                                    <img src="http://legalprom.cl/wp-content/uploads/2014/02/establecimiento-industrial.jpg" class="img-responsive img-radio" width="50" data-toggle="tooltip" title="" data-original-title="Marca Establecimiento Industrial">
                                                    <input type="checkbox" name="doc_type[cod][]" class="hidden" value="brand_mei">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="Nombre">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Apellido">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="email" id="email" class="form-control input-sm" placeholder="Email">
                                            </div>
                                            <input type="submit" name="commit" value="Crear mi empresa" class="btn btn-info btn-block">
                
                                        </form>                
                                    </div>
                                </div>
                            </div>
            
                            <div class="tab-pane text-style fade" id="tab3">
                                <h2>Modificación y Disolución Sociedades</h2>
                                <p>Concrete oportunidades adaptando sus negocios con velocidad y seguridad LegalProm</p>
                                <p><strong>Desde $44.990 y 24 hrs.</strong></p>
                                <a href="#">Detalle Precio y Plazos</a>
                            </div> 
            
                            <div class="tab-pane text-style fade" id="tab4">
                                <h2>¿Busca un Abogado en Quien Confiar?</h2>
                                <p>Miles de clientes han confiado en LegalProm. Muchos huyendo de malos servicios, perdidas de tiempo y dinero.</p>
                            </div> 
                        </div>
        
                    </div>                     
                    
                    
    
                    <div class="row steps">
                        <h3>3 Sencillos Pasos</h3>
                        <div class="col-md-4">
                            <center><img alt="Paso 1 - formulario online" src="http://legalprom.cl/wp-content/uploads/2013/12/paso1-formulario.jpg"/></center>
                            <h4>Responda un sencillo cuestionario en línea. No mas de 10 min.</h4>
                        </div>
                        <div class="col-md-4">
                            <center><img alt="Paso 2 - generación y revisión de documentos" src="http://legalprom.cl/wp-content/uploads/2013/12/paso2-documentos.jpg"/></center>
                            <h4>Abogados revisarán sus respuestas y crearán sus documentos</h4>
                        </div>
                        <div class="col-md-4">
                            <center><img alt="Paso 3 - Firma en notaria" src="http://legalprom.cl/wp-content/uploads/2013/12/paso3-firma.jpg"/></center>
                            <h4>Se firman y LegalProm se encarga del resto. Ud. ahorrará tiempo</h4>
                        </div>
                    </div>
    
                    <h3 style="font-size: 36px;font-weight: 300;color: #057d9f;text-align: center;margin:50px 0 30px 0;">Lo que Opinan Nuestros Clientes</h3>
    
                    <div class="row" id="opinion-left" style="background:url(http://legalprom.cl/wp-content/uploads/2014/05/engel-volkers.jpg) no-repeat center;">
                        <div class="col-md-6">
                            <h3>Seguro y rápido. Súper conforme</h3>
                            <p>Nelson del Villar</p>
                            <p>Co-Fundador de Antares, Concesionaria Engel & Volkers</p>
                            <p>Empresa creada con LegalProm</p>
                        </div>
                    </div>
    
                    <h3 style="font-size: 36px;font-weight: 300;text-align: center;margin:70px 0;">El Servicio Legal que Necesita a un Precio a su Alcance</h3>
    
                    <div class="row features-home-left">
                        <div class="col-md-7">
                            <h3>Rápido</h3>
                            <h4>Nuestro 1er. envío de documentos es en 24 hrs.</h4>
                            <p>En términos de velocidad nuestra tecnología nos permite volar. LegalProm realiza el primer envío en unas 24 horas hábiles. Con Sociedades 24 Hrs. Ud. puede incluso suscribir de inmediato con firmas electrónicas</p>
                        </div>
                        <div class="col-md-5">
                            <img alt="rapidez de legalprom" src="http://legalprom.cl/wp-content/uploads/2014/05/rapidez.jpg"/>
                        </div>
                    </div>
    
                    <div class="row features-home-right">
                        <div class="col-md-5">
                            <img alt="legalprom es economico" src="http://legalprom.cl/wp-content/uploads/2014/05/economico.jpg"/>
                        </div>
                        <div class="col-md-7">
                            <h3>Económico</h3>
                            <h4>Un servicio del mas elevado estándar al mejor precio</h4>
                            <p>Apoyado por CORFO y Banco BCI nuestro equipo abogados, de la Pontificia Universidad Católica de Chile y Universidad de Concepción, utilizan las soluciones y cláusulas mas eficientes, afinadas durante sus mas de 10 años de experiencia</p>
                        </div>
                    </div>
    
                    <div class="row features-home-left">
                        <div class="col-md-7">
                            <h3>Fácil y Claro</h3>
                            <h4>LegalProm es simple</h4>
                            <p>Queremos dejar atrás el tiempo en que los temas legales eran un asunto opaco en que el cliente quedaba indefenso ante una cortina de tecnicismos. Nuestros clientes agradecen que les hablemos en un idioma claro y sin ambigüedades</p>
                        </div>
                        <div class="col-md-5">
                            <img alt="claridad y facilidad de legalprom" src="http://legalprom.cl/wp-content/uploads/2014/05/claridad.jpg"/>
                        </div>
                    </div>
    
                    <div class="row features-home-right">
                        <div class="col-md-5">
                            <img alt="rapidez de legalprom" src="http://legalprom.cl/wp-content/uploads/2014/05/rapidez.jpg"/>
                        </div>
                        <div class="col-md-7">
                            <h3>Seguro</h3>
                            <h4>Productos legales seguros a su alcance</h4>
                            <p>LegalProm registra una tasa de satisfacción de prácticamente un 100%. Nuestras sociedades han superado todos los controles bancarios y de otras entidades tales como ministerios, ChileCompra, municipalidades, etc.</p>
                        </div>
                        <a href="http://legalprom.com/por-que-legalprom/" class="btn btn-primary btn-lg" style="float:right;margin-top:50px;padding:20px;">Ver más razones para elegirnos</a>
                    </div>
    
                    <div class="line">
                        <hr/>
                    </div>
    
                    <h3 style="font-size: 36px;font-weight: 300;text-align: center;margin:70px 0;">Miles de Clientes Satisfechos desde 2012</h3>
    
                    <center><img alt="" src="http://legalprom.cl/wp-content/uploads/2014/05/clientes.jpg"/></center>
    
                    <div class="line">
                        <hr/>
                    </div>    
    
                    <div class="row">
                        <div class="col-md-12 one-column-text">
                            <h2 style="font-size:36px;">Olvídese de Trámites y Complicaciones</h2>
                            <h3 style="font-size:24px;">Déje sus asuntos en manos de nuestro equipo y ocupe su tiempo su negocio</h3>
                        </div>
                    </div>
    
                    <div class="row buttons-who-we-are">
                        <div clas="col-md-6">
                            <a class="btn btn-primary btn-lg" style="float:left; width:30%;margin:10%; padding:30px;">Registrar su marca</a>
                        </div>
                        <div clas="col-md-6">
                            <a class="btn btn-info btn-lg" style="float:right;width:30%; margin:10%; padding:30px;">Crear su empresa</a>
                        </div>
        
                    </div>

                    <center><p>Miles de clientes felices y satisfechos desde 2012.</p></center>
    
                    <div class="row" id="opinion-right" style="background:url(http://legalprom.cl/wp-content/uploads/2014/05/ingeagro.jpg) no-repeat center;">
                        <div class="col-md-6"></div>
                        <div class="col-md-6">
                            <h3>Sobresaliente servicio !</h3>
                            <p>Rosario Sepúlveda</p>
                            <p>Co-Fundadora de IngeAgro</p>
                            <p>Empresa creada con LegalProm</p>
                        </div>
                    </div>
    
                </div>                  
            </div>
        </div>
    </section>
</asp:Content>
