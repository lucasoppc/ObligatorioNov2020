<%@ Page Title="" Language="C#" MasterPageFile="~/Empleados.master" AutoEventWireup="true" CodeFile="AbmClientes.aspx.cs" Inherits="AbmClientes" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <div class="form-horizontal">
                    <fieldset>
                        <legend class="text-center header">Gestion de Clientes</legend>

                        <div class="form-group">
                           <div class="col-md-8 m-auto">
                                   <span class="col-12"><i class="fa fa-fingerprint "></i></span>
                                   <asp:TextBox ID="txtCedula" CssClass="form-control" placeholder="Cedula" runat="server" ToolTip="Cedula"></asp:TextBox>
                                   <asp:Button ID="btnBuscarCedula" CssClass="btn btn-primary btn-md" runat="server" Text="Buscar Cliente" />
                    
                          </div>

                        </div>
                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-pen "></i></span>
                                <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Nombre completo" runat="server" ToolTip="Nom completo"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-pen "></i></span>
                                <asp:TextBox ID="txtDireccion" CssClass="form-control" placeholder="Direccion" runat="server" ToolTip="Direccion"></asp:TextBox>
                            </div>
                        </div>

                       

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <asp:Button ID="btnAltaCliente" CssClass="btn btn-primary btn-sm" runat="server" Text="Dar de alta" />
                                 <asp:Button ID="btnModificarCliente" CssClass="btn btn-warning btn-sm" runat="server" Text="Modificar" />
                                <asp:Button ID="btnEliminarCliente" CssClass="btn btn-danger btn-sm" runat="server" Text="Eliminar" />
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

