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
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="#">Bios Classifieds</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault">
                <span class="navbar-toggler-icon"></span>
            </button>
  <div class="collapse navbar-collapse" id="navbarsExampleDefault">

    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <p class="text-white">Filtros</p>
        </li>
      <li class="nav-item pr-2 active">
          <label for="ddlCategoria" class="text-white">Categoria</label>
          <asp:DropDownList ID="ddlCategoria" runat="server"></asp:DropDownList>
      </li>
      <li class="nav-item pr-2 active">
          <label for="ControlFechas" class="text-white">Fecha de publicacion</label>
          <uc1:controlfechas runat="server" id="ControlFechas" />
      </li>
        <li class="nav-item pr-2 active">
            <asp:Button ID="btnLimpiarFiltros" class="btn btn-primary" runat="server" Text="Limpiar Filtros" />
        </li>
    </ul>
      <div class="navbar-nav mr-2">
            <a class="btn btn-info mt-1" href="Logueo.aspx"><i class="fas fa-sign-in-alt"></i>  Ingreso Empleados</a>
        </div>
  </div>
        
</nav>
            </div>

        <div class="container mt-5 pt-5">
        <div class="row row-content align-items-center m-auto">

            <asp:GridView ID="gvAvisos" runat="server">
             </asp:GridView>
        </div>
        </div>
        
    </form>
    <script src="Content/scripts/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="Content/scripts/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
