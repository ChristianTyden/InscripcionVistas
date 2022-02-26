<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IngresoADM.aspx.vb" Inherits="InscripcionOnline.IngresoADM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>LOG IN</title>
</head>
<body style="font-family:Verdana;">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(setInterval(myfunc, 40000));
            function myfunc() {
                $("#PopTiempo").modal('show');
                $(document).ready(setInterval(Salir, 5000));
            };
            function Salir() {
                $("#btnSalidaCancela").click();
            };
        </script><br />
        <asp:Table runat="server" HorizontalAlign="Center" BackColor="#eaeaea" BorderColor="Black" BorderWidth="2px">
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                <asp:TableCell ColumnSpan="2">
                    <asp:Label ID="lbl1" runat="server" Text="Ingreso a Administracion" Font-Size="Large" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell style="padding: 40px 50px 20px 50px">
                        <asp:Label ID="lblUser" runat="server" Text="Usuario:" />
                </asp:TableCell>
                <asp:TableCell style="padding: 40px 50px 20px 50px">
                        <asp:TextBox ID="txtUser" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell style="padding: 40px 50px 40px 50px">
                        <asp:Label ID="lblPass" runat="server" Text="Contraseña:" />
                </asp:TableCell>
                <asp:TableCell style="padding: 40px 50px 40px 50px">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333">
                <asp:TableCell>
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnCerrar" runat="server" Text="Cerrar" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
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
    </form>
</body>
</html>