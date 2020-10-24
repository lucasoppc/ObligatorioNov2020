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
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="#">Bios Classifieds</a>

  <div class="navbar-collapse collapse show" id="navbarsExampleDefault" style="">

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
  </div>
        <div class="navbar-nav mr-2">
            <a class="btn btn-info mt-1" href="#"><i class="fas fa-sign-in-alt"></i>  Ingreso Empleados</a>
        </div>
</nav>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/jquery.slim.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
</body>
</html>
