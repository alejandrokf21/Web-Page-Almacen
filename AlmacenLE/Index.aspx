<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AlmacenLE.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="container">
      <div class="row">  
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
              <div class="item active">
                <img src="css/images/compras1.jpg" alt="Los Angeles">
                  <div class="carousel-caption">
                    <h3>Almacen La Elegancia</h3>
                    <p>...</p>
                  </div>
              </div>

              <div class="item">
                <img src="css/images/Nature-HD-Photo-For-Mac.jpg" alt="Chicago" >
                  <div class="carousel-caption">
                    <h3>Almacen La Elegancia</h3>
                    <p>El lugar donde eres Feliz!</p>
                  </div>
              </div>
    
              <div class="item">
                <img src="css/images/compras2.jpg" alt="New york" >
                  <div class="carousel-caption">
                    <h3>Almacen La Elegancia</h3>
                    <p>Donde encontraras todo lo que necesitas!</p>
                  </div>
              </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
    </div>
</asp:Content>
