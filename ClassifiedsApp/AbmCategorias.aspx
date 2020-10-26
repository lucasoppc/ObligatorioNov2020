﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Empleados.master" AutoEventWireup="true" CodeFile="AbmCategorias.aspx.cs" Inherits="AbmCategorias" %>

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
                        <legend class="text-center header">Ingresar categoria</legend>

                        <div class="form-group">
                           <div class="col-md-8 m-auto">
                                   <span class="col-12"><i class="fa fa-fingerprint "></i></span>
                                   <asp:TextBox ID="txtCodigo" CssClass="form-control" placeholder="Codigo" runat="server" ToolTip="Codigo categoria"></asp:TextBox>
                                   <asp:LinkButton ID="btnBuscarCategoria" OnClick="btnBuscarCategoria_Click" CssClass="btn btn-primary" runat="server"><i class="fa fa-search"></i>&nbsp Buscar Categoria</asp:LinkButton>
                    
                          </div>

                        </div>
                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-pen "></i></span>
                                <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Nombre de categoria" runat="server" ToolTip="Descripcion"></asp:TextBox>
                            </div>
                        </div>

                       

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <asp:LinkButton ID="btnAltaCategoria" CssClass="btn btn-primary btn-sm btn-lg" runat="server"><i class="fa fa-check"></i>&nbsp Dar de alta</asp:LinkButton>
                                <asp:LinkButton ID="btnModificarCategoria" CssClass="btn btn-warning btn-sm" runat="server"><i class="fa fa-save"></i>&nbsp Modificar</asp:LinkButton>
                                <asp:LinkButton ID="btnEliminarCategoria" CssClass="btn btn-danger btn-sm" runat="server"><i class="fa fa-trash"></i>&nbsp Eliminar</asp:LinkButton>
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

