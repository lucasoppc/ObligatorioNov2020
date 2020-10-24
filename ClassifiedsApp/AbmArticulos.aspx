<%@ Page Title="" Language="C#" MasterPageFile="~/Empleados.master" AutoEventWireup="true" CodeFile="AbmArticulos.aspx.cs" Inherits="AbmArticulos" %>

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
                        <legend class="text-center header">Ingresar articulo</legend>

                        <div class="form-group">
                           <div class="col-md-8 m-auto">
                                   <span class="col-12"><i class="fa fa-fingerprint "></i></span>
                                   <asp:TextBox ID="txtCodigo" CssClass="form-control" placeholder="Codigo" runat="server" ToolTip="Codigo Articulo"></asp:TextBox>
                                   <asp:Button ID="btnBuscarArticulo" CssClass="btn btn-primary btn-md" runat="server" Text="Buscar Articulo" />
                    
                          </div>

                        </div>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1 text-center"><i class="fa fa-pen"></i></span>
                                <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server" placeholder="Descripcion" TextMode="MultiLine" Rows="7"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-money-bill "></i></span>
                                <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Precio" runat="server" ToolTip="Descripcion"></asp:TextBox>
                            </div>
                        </div>

                       

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <asp:Button ID="btnAltaArticulo" CssClass="btn btn-primary btn-lg" runat="server" Text="Dar de alta" />
                                <asp:Button ID="btnModificarArticulo" CssClass="btn btn-warning btn-lg" runat="server" Text="Modificar" />
                                <asp:Button ID="btnEliminarArticulo" CssClass="btn btn-danger btn-lg" runat="server" Text="Eliminar" />
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

