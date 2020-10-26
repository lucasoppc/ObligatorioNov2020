<%@ Page Title="" Language="C#" MasterPageFile="~/Empleados.master" AutoEventWireup="true" CodeFile="AltaEmpleados.aspx.cs" Inherits="AltaEmpleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .header {
    color: #36A0FF;
    font-size: 27px;
    padding: 10px;
}

.bigicon {
    font-size: 35px;
    color: #36A0FF;
}
.container{
    margin-top:70px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <div class="form-horizontal">
                    <fieldset>
                        <legend class="text-center header">Ingresar nuevo empleado</legend>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-user bigicon"></i></span>
                                <asp:TextBox ID="txtNom_Usuario" placeholder="Nombre de usuario" CssClass="form-control" runat="server" ToolTip="Nombre de usuario"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-key"></i></span>
                                <asp:TextBox ID="txtContrasena" placeholder="Contraseña" CssClass="form-control" runat="server" TextMode="Password" ToolTip="Contraseña"></asp:TextBox>
                            </div>
                        </div>

                       

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <asp:Button ID="btnAltaEmpleado" CssClass="btn btn-primary btn-lg" runat="server" Text="Dar de alta" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <asp:Label ID="lblError" CssClass="text-danger" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</div>



</asp:Content>

