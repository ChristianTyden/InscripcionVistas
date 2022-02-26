<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ADM.aspx.vb" Inherits="InscripcionOnline.ADM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title></title>
</head>
<body style="font-family:Verdana;">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(setInterval(myfunc, 120000));
            function mypp() {
                $("#Pp").modal('show');
            }
            function myfunc() {
                $("#PopTiempo").modal('show');
                $(document).ready(setInterval(Salir, 5000));
            };
            function Salir() {
                $("#btnSalidaCancela").click();
            };
        </script>
        <div id="PopTiempo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="PopTitulo" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <asp:Label Text="Tiempo caducado" ID="PopTitulo" runat="server" />
                        <asp:Button runat="server" class="close" Text="×" ID="btnSalidaCancela" BackColor="White" BorderColor="White" CssClass="close" />
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" Text="Tiempo de inactividad alcanzado, desea extender su tiempo?" />
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" Text="Extender" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
        <asp:Panel ID="pnNoAdmin" runat="server" HorizontalAlign="Center" BackColor="#333333" ForeColor="White" Width="100%" Font-Size="Large" >
            <asp:Label ID="lblNo1" runat="server" Text="Usuario o Contraseña invalida" /><br />
            <asp:Label ID="lblNo2" runat="server" Text="O usted no posee derechos de Administrador" /><br />
        </asp:Panel>
        <asp:Table ID="tbAdmin" runat="server" HorizontalAlign="Center" BorderColor="Black" BorderWidth="2px" BackColor="#eaeaea">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Label ID="lbl1" runat="server" Text="Seleccione al Inscripto Temporal" BackColor="#333333" ForeColor="White" Width="100%" Font-Size="Large" /><br /><br />
                    <asp:DropDownList ID="ddlInscriptos" runat="server" Width="95%" AutoPostBack="true" /><br /><br />
                    <asp:Button ID="btnBorrar" runat="server" Text="Borrar" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Button ID="btnListarUsuarios" runat="server" Text="Listar Usuarios" Width="400px" PostBackUrl="ListadoUsuarios.aspx" CssClass="btn btn-secondary" BorderColor="Black" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Button ID="btnListarCancelados" runat="server" Text="Listar Cancelados" Width="400px" PostBackUrl="ListadoCancelados.aspx" CssClass="btn btn-secondary" BorderColor="Black" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Button ID="btnEnvioCorreos" runat="server" Text="Envio de Correos" Width="400px" PostBackUrl="EnvioLiqMail.aspx" CssClass="btn btn-secondary" BorderColor="Black" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>    
        <asp:Table ID="tbAdmin2" runat="server" HorizontalAlign="Center" BorderColor="Black" BorderWidth="2px" BackColor="#eaeaea" >
            <asp:TableRow HorizontalAlign="Center" >
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Label ID="lblTorneo" runat="server" Text="Seleccione el Torneo" BackColor="#333333" ForeColor="White" Width="100%" Font-Size="Large" /><br /><br />
                    <asp:DropDownList ID="ddlTorneo" runat="server" AutoPostBack="true" Width="95%" /><br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Button ID="btnListarHorarios" runat="server" Text="Listar Horarios / Inscriptos Online" Width="400px" PostBackUrl="ListadoInscriptos.aspx" CssClass="btn btn-secondary" BorderColor="Black" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Button ID="btnMembHabilitar" runat="server" Text="Membresicos Habilitar Torneo" Width="400px" CssClass="btn btn-secondary" BorderColor="Black" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Button ID="btnBloquearHorario" runat="server" Text="Bloquear / Desbloquear Posiciones del Horario" Width="400px" CssClass="btn btn-secondary" BorderColor="Black" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Button ID="btnOcultarHabilitar" runat="server" Text="Ocultar / Habilitar Torneo" Width="400px" PostBackUrl="OcultarTorneo.aspx" CssClass="btn btn-secondary" BorderColor="Black" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Button ID="btnBloquear" runat="server" Text="Bloquear Torneo" Width="400px" CssClass="btn btn-secondary" BorderColor="Black" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell style="padding: 5px 0px 5px 0px">
                    <asp:Button ID="btnTerminar" runat="server" Text="Terminar Torneo" Width="400px" CssClass="btn btn-secondary" BorderColor="Black" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Panel ID="pnVolver" runat="server" HorizontalAlign="Center">
            <br /><br />    
            <asp:Button ID="btnVolver" runat="server" Text="Volver" Width="400px" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" />
        </asp:Panel>
        <br /><br /><br /><br /><br /><br />    
        <asp:Panel runat="server" HorizontalAlign="Center">
            <asp:Label Text="" ID="lblCantidad" runat="server" />
        </asp:Panel>
        <div id="Pp" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="PpTit" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <asp:Label Text="" ID="lblppTit" runat="server" />
                        <asp:Button runat="server" class="close" Text="×" ID="btnCancela" BackColor="White" BorderColor="White" CssClass="close" />
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="lblppCuerpo" runat="server" Text="" />
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnppAceptar" runat="server" Text="Aceptar" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>