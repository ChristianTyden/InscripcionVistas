<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InscripcionAPP.aspx.vb" Inherits="InscripcionOnline.InscripcionAPP" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>Inscripcion de Linea</title>
</head>
<body style="font-family:Verdana; font-size:xx-large">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(setInterval(myfunc, 45000));
            function myfunc() {
                $("#PopTiempo").modal('show');
                $(document).ready(setInterval(Salir, 5000));
            };
            function Salir() {
                $("#btnCancelar").click();
            };
        </script>
        <br />
        <asp:Table runat="server" Width="90%" HorizontalAlign="Center" BackColor="#e8e8e8" BorderWidth="2px" BorderColor="black">
            <asp:TableRow HorizontalAlign="center" BackColor="#333333">
                <asp:TableCell ColumnSpan="3">
                    <asp:Label ID="lbl1" runat="server" Text="Inscripción de Linea" ForeColor="White" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" ID="trUltimaLinea">
                <asp:TableCell ColumnSpan="3">
                    <asp:Label ID="lbl2" runat="server" Text="Seleccionar ultima linea utilizada" Width="100%" BackColor="#333333" ForeColor="White" /><br />
                    <asp:Button ID="btnRepetir" runat="server" Text="Repetir mi ultima linea" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" Height="100px" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" ID="trEquipo">
                <asp:TableCell ColumnSpan="3">
                    <asp:Label ID="lbl3" runat="server" Text="Seleccionar un Equipo Predeterminado:" Width="100%" BackColor="#333333" ForeColor="White" /><br />
                    <asp:DropDownList ID="ddlEquipo" runat="server" AutoPostBack="true" Width="80%" /><br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow Width="100%" BackColor="#333333" ForeColor="White" >
                <asp:TableCell HorizontalAlign="Center" Width="10%">
                    <asp:Label ID="lblPos" runat="server" Text="POS:" />
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:Label ID="lblMat" runat="server" Text="Matricula:" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center"><br />
                    <asp:Label ID="lblPos1" runat="server" Text="1." />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="center" ColumnSpan="2"><br />
                    <asp:TextBox ID="txtMat1" runat="server" ReadOnly="true" /><br />
                    <asp:Panel ID="tcUser" runat="server">
                        <asp:Button ID="btnJugFav" runat="server" Text="Jugadores Favoritos" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" Height="100px" /><br />
                    </asp:Panel>
                    <asp:Panel ID="tcADM" runat="server">
                        <asp:Label ID="txtFilt1" runat="server" Text="Filtrar Jugadores" /><br />
                        <asp:DropDownList ID="ddlJugador1" runat="server" AutoPostBack="true" Width="80%" />
                    </asp:Panel>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell ColumnSpan="3"><hr width="80%"/></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center"><br />
                    <asp:Label ID="lblPos2" runat="server" Text="2." />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="center" ColumnSpan="2">
                    <asp:TextBox ID="txtMat2" runat="server" ReadOnly="true" /><br />
                    <asp:Label ID="txtFilt2" runat="server" Text="Filtrar Jugadores" /><br />
                    <asp:DropDownList ID="ddlJugador2" runat="server" AutoPostBack="true" Width="80%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell ColumnSpan="3"><hr width="80%"/></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center"><br />
                    <asp:Label ID="lblPos3" runat="server" Text="3." />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="center" ColumnSpan="2">
                    <asp:TextBox ID="txtMat3" runat="server" ReadOnly="true"></asp:TextBox><br />
                    <asp:Label ID="txtFilt3" runat="server" Text="Filtrar Jugadores" /><br />
                    <asp:DropDownList ID="ddlJugador3" runat="server" AutoPostBack="true" Width="80%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell ColumnSpan="3"><hr width="80%"/></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center"><br />
                    <asp:Label ID="lblPos4" runat="server" Text="4." />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="center" ColumnSpan="2">
                    <asp:TextBox ID="txtMat4" runat="server" ReadOnly="true" /><br />
                    <asp:Label ID="txtFilt4" runat="server" Text="Filtrar Jugadores" /><br />
                    <asp:DropDownList ID="ddlJugador4" runat="server" AutoPostBack="true" Width="80%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell ColumnSpan="3"><hr width="80%"/></asp:TableCell></asp:TableRow>
            <asp:TableRow BackColor="#333333" HorizontalAlign="Center">
                <asp:TableCell ColumnSpan="3">
                    <asp:Table runat="server" HorizontalAlign="Center" Width="100%">
                        <asp:TableRow HorizontalAlign="Center">
                            <asp:TableCell HorizontalAlign="Center">
                                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" Font-Size="XX-Large" Width="80%" Height="100px" />
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Center">
                                <asp:Button ID="btnAnotar" runat="server" Text="Anotar Mi Linea" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" Font-Size="XX-Large" Width="80%" Height="100px" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <div id="PopTiempo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="PopTitulo" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <asp:Label Text="Tiempo caducado" ID="PopTitulo" runat="server" />
                        <asp:Button runat="server" Text="×" BackColor="White" BorderColor="White" CssClass="close" Font-Size="XX-Large" />
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" Text="Tiempo de anotacion agotado, desea extender su tiempo?" />
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" Text="Volver" CssClass="btn btn-secondary" Font-Size="XX-Large" />
                        <asp:Button runat="server" Text="Extender" CssClass="btn btn-primary" Font-Size="XX-Large" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>