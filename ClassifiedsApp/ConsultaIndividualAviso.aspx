<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConsultaIndividualAviso.aspx.cs" Inherits="ConsultaIndividualAviso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consulta de avisos</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="Content/fontawesome/css/all.css"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
</head>
<body>
    <form id="form1" runat="server">

      <div class="row">
       <div class="container col-md-5 col-sm-6 col-12">
        <div class="card">
                    <h3 class="card-header bg-primary text-white">Aviso #34</h3>
                    <div class="card-body">
                        <dl class="row">
                            <dt class="col-6">Categoria</dt>
                            <dd class="col-6"><asp:Label ID="lblCategoria" runat="server" Text="Label"></asp:Label></dd>
                            <dt class="col-6">Publicado</dt>
                            <dd class="col-6"><asp:Label ID="lblFechaInicio" runat="server" Text="Label"></asp:Label></dd>
                            <dt class="col-6">Finaliza</dt>
                            <dd class="col-6"><asp:Label ID="lblFechaFin" runat="server" Text="Label"></asp:Label></dd>
                        </dl>
                    </div>
                </div>
         </div>

           <div class="container col-md-5 col-sm-6 col-12">
        <div class="card">
                    <h3 class="card-header bg-primary text-white">Publicado por</h3>
                    <div class="card-body">
                        <dl class="row">
                            <dt class="col-6">Cedula</dt>
                            <dd class="col-6"><asp:Label ID="lblCedula" runat="server" Text="Label"></asp:Label></dd>
                            <dt class="col-6">Nombre</dt>
                            <dd class="col-6"><asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label></dd>
                            <dt class="col-6">Direccion</dt>
                            <dd class="col-6"><asp:Label ID="lblDireccion" runat="server" Text="Label"></asp:Label></dd>
                            <dt class="col-6">Telefono</dt>
                            <dd class="col-6"><asp:Label ID="lblTelefono" runat="server" Text="Label"></asp:Label></dd>
                        </dl>
                    </div>
                </div>
         </div>

           <div class="container col-12">
        <div class="card">
                    <h3 class="card-header bg-primary text-white">Articulos publicados</h3>
                    <div class="card-body">
                        <asp:GridView ID="gvArticulos" runat="server" Width="100%"></asp:GridView>
                    </div>
                </div>
         </div>

          <div class="m-auto">
              <a class="btn btn-success" href="Default.aspx">Volver</a>
          </div>

       </div>

    </form>

    <script src="Content/scripts/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="Content/scripts/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</body>
</html>
