<%@ Page Title="" Language="C#" MasterPageFile="~/Empleados.master" AutoEventWireup="true" CodeFile="AltaAvisos.aspx.cs" Inherits="AltaAvisos" %>

<%@ Register Src="~/Controls/ControlFechas.ascx" TagPrefix="uc1" TagName="ControlFechas" %>


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
                        <legend class="text-center header">Crear Aviso</legend>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-list-ol"></i></span>
                                <asp:TextBox ID="txtNumeroAviso" placeholder="Numero de aviso" CssClass="form-control" runat="server" ToolTip="Numero de aviso"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-fingerprint"></i></span>
                                <asp:TextBox ID="txtCedulaCliente" placeholder="Cedula del cliente" CssClass="form-control" runat="server" ToolTip="Numero de aviso"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-phone"></i></span>
                                <asp:TextBox ID="txtNumeroTelefono" placeholder="Numero de telefono" CssClass="form-control" runat="server" ToolTip="Numero de aviso"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-shapes"></i></span>
                                <asp:TextBox ID="txtCategoriaCodigo" placeholder="Codigo de categoria" CssClass="form-control" runat="server" ToolTip="Numero de aviso"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-calendar-alt"></i>&nbsp<label for="cfAvisoFechaInicio" class="text-secondary">Inicio de publicacion</label></span>
                                <uc1:ControlFechas runat="server" ID="cfAvisoFechaInicio" />
                            </div>
                        </div>

                        <div class="form-group">
                            
                            <div class="col-md-8 m-auto">
                                <span class="col-md-1  text-center"><i class="fa fa-calendar-alt"></i>&nbsp<label for="cfAvisoFechaFin" class="text-secondary">Fin de publicacion</label></span>
                                <uc1:ControlFechas runat="server" ID="cfAvisoFechaFin" />
                            </div>
                        </div>
                        

                       

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <asp:Button ID="btnAltaAviso" CssClass="btn btn-primary btn-lg" runat="server" Text="Dar de alta" />
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

