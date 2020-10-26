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
                        <legend class="text-center header">Ingresar articulo</legend>

                        <div class="form-group">
                           <div class="col-md-8 m-auto">
                                   <span class="col-12"><i class="fa fa-fingerprint "></i></span>
                                   <asp:TextBox ID="txtCodigo" CssClass="form-control" placeholder="Codigo" runat="server" ToolTip="Codigo Articulo"></asp:TextBox>
                                   <asp:LinkButton ID="btnBuscarArticulo" OnClick="btnBuscarArticulo_Click" CssClass="btn btn-primary" runat="server"><i class="fa fa-search"></i>&nbsp Buscar Articulo</asp:LinkButton>
                    
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
                                <asp:LinkButton ID="btnAltaArticulo" CssClass="btn btn-primary btn-sm btn-lg" runat="server"><i class="fa fa-check"></i>&nbsp Dar de alta</asp:LinkButton>
                                <asp:LinkButton ID="btnModificarArticulo" CssClass="btn btn-warning btn-sm" runat="server"><i class="fa fa-save"></i>&nbsp Modificar</asp:LinkButton>
                                <asp:LinkButton ID="btnEliminarArticulo" CssClass="btn btn-danger btn-sm" runat="server"><i class="fa fa-trash"></i>&nbsp Eliminar</asp:LinkButton>
                                <asp:LinkButton ID="btnLimpiar" CssClass="btn btn-info btn-sm" runat="server"><i class="fa fa-eraser"></i>&nbsp Limpiar Formulario</asp:LinkButton>
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

