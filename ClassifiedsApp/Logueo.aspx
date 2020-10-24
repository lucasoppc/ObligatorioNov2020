<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logueo.aspx.cs" Inherits="Logueo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ingreso empleados</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="Content/fontawesome/css/all.css"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
</head>
<body>
    <form id="form1" runat="server">
        

    <!-- Container containing all contents -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                <!-- White Container -->
                <div class="container bg-dark rounded mt-2 mb-2 px-0">
                    <!-- Main Heading -->
                    <div class="row justify-content-center align-items-center pt-3">
                        <h1 class="text-white"><strong>Logueo</strong></h1>
                    </div>
                    <div class="pt-3 pb-3">
                        <div class="form-horizontal">
                            <!-- User Name Input -->
                            <div class="form-group row justify-content-center px-3">
                                <div class="col-9 px-0"> <i class="fas fa-user-circle"><label for="txtNom_Empleado" class="text-white ml-2">Nombre de empleado:</label></i><asp:TextBox ID="txtNom_Empleado" CssClass="form-control border-info placeicon" runat="server"></asp:TextBox> </div>
                            </div> <!-- Password Input -->
                            <div class="form-group row justify-content-center px-3">
                                <div class="col-9 px-0"> <i class="fas fa-key">  <label for="txtNom_Empleado" class="text-white ml-1">Contraseña:</label></i><asp:TextBox ID="txtContrasena" CssClass="form-control border-info placeicon" runat="server" TextMode="Password"></asp:TextBox>  </div>
                            </div> 
                        <!-- Log in Button -->
                            <div class="form-group row justify-content-center">
                                <div class="col-3 px-3"> <asp:Button ID="btnLogueo" runat="server" CssClass="btn btn-block btn-info" Text="Ingresar" /> </div>
                            </div>
                        </div>
                    </div> 
                    </div>
                </div>
            
        </div>
    </div>


    </form>


    <script src="Content/scripts/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="Content/scripts/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</body>
</html>
