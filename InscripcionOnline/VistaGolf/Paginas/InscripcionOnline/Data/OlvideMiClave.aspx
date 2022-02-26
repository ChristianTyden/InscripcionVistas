<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="OlvideMiClave.aspx.vb" Inherits="InscripcionOnline.OlvideMiClave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>Recuperar mi clave</title>
</head>
<body style="font-family:Verdana;">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            function myfunc() {
                $("#PopTiempo").modal('show');
            };
            function myfunc2() {
                $("#PopEnvio").modal('show');
            };
            function Salir() {
                $("#btnSalidaCancela").click();
            };
        </script><br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="60%" BorderColor="Black" BorderWidth="2px" BackColor="#eaeaea">
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White" Font-Size="X-Large">
                <asp:TableCell ColumnSpan="2">
                    <asp:Label ID="lblMat" runat="server" Text="Ingrese su Usuario / Matricula" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell ColumnSpan="2"><br />
                    <asp:TextBox ID="txtMatricula" runat="server" Width="30%" Font-Size="Large" /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333">
                <asp:TableCell>
                    <asp:Button ID="btnSig" runat="server" Text="Siguiente" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" Width="40%" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" Width="40%" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <div id="PopTiempo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="PopTitulo" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <asp:Label Text="" ID="PopTitulo" runat="server" />
                        <asp:Button runat="server" class="close" Text="×" ID="btnSalidaCancela" BackColor="White" BorderColor="White" CssClass="close" />
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" ID="popBody" Text="" />
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="popbtn" Text="" CssClass="btn btn-primary" OnClick="EnviaClave" />
                    </div>
                </div>
            </div>
        </div><div id="PopEnvio" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="PopTitulo2" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <asp:Label Text="" ID="PopTitulo2" runat="server" />
                        <asp:Button runat="server" class="close" Text="×" ID="btnSalidaCancela2" BackColor="White" BorderColor="White" CssClass="close" />
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" ID="popBody2" Text="" />
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="popbtn2" Text="" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>