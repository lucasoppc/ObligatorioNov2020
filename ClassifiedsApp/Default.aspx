<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/Controls/ControlFechas.ascx" TagPrefix="uc1" TagName="ControlFechas" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Avisos Publicados</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="Content/fontawesome/css/all.css"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <style>
        #fecha{
            display:inline;
            float:left;
            width:250px;
        }
        #x{
            margin-top:80px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <nav class="navbar  navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="#">Bios Classifieds</a>
           
  <div class="" id="navbarsExampleDefault">

    
      <div class="navbar-item active pr-2">
            <a class="btn btn-info btn-sm mt-1" href="Logueo.aspx"><i class="fas fa-sign-in-alt"></i>  Ingreso Empleados</a>
        </div>
  </div>
        
</nav>
            <div id="x" class="container">
            <table class="table col-lg-6 col-md-10 col-sm-12 m-auto">
  <thead>
    <tr>
      <th scope="col">Filtros</th>
      <th scope="col"></th>
      <th scope="col"><asp:Button ID="btnLimpiarFiltros" class="btn btn-primary btn-sm float-none" runat="server" Text="Limpiar Filtros" /></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Categoria</td>
      <td><asp:DropDownList ID="ddlCategoria" CssClass="form-control form-control-sm" runat="server" ></asp:DropDownList></td>
      <td></td>
    </tr>
    <tr>
      <td>Fecha de publicacion</td>
      <td>
          <uc1:controlfechas runat="server" id="ControlFechas" />
          </td>
      <td><asp:Button ID="btnFiltrarPorFecha" class="btn btn-primary btn-sm" runat="server" Text="Aplicar" /></td>
    </tr>
      <tr>
          <td></td>
          <td></td>
          <td></td>
      </tr>
  </tbody>
</table>
                </div>
               

        <div class="container">
        <div class="row row-content align-items-center m-auto">

            <asp:GridView ID="gvAvisos" CssClass="table table-responsive" runat="server">
             </asp:GridView>
        </div>
        </div>
        
    </form>
    <script src="Content/scripts/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="Content/scripts/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
