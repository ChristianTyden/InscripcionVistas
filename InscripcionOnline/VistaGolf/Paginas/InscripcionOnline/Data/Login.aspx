<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="InscripcionOnline.Login" %>

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
        <asp:Table runat="server" HorizontalAlign="Center" Width="40%" BorderColor="Black" BorderWidth="2px" BackColor="#eaeaea">
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White" Font-Size="X-Large">
                <asp:TableCell ColumnSpan="2">
                    <asp:Label runat="server" Text="LOG IN" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Table runat="server" HorizontalAlign="Center" Width="80%">
                        <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Width="40%" HorizontalAlign="Center">
                                <asp:Label runat="server" Text="Mi <br/> Matricula:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="txtMatricula" Width="80%" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Width="40%" HorizontalAlign="Center">
                                <asp:Label runat="server" Text="Mi <br/> Contraseña:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="txtPass" Width="80%" TextMode="Password" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Width="40%" HorizontalAlign="Center">
                                <asp:Label runat="server" Text="Recordarme:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:CheckBox ID="ckRecordarme" runat="server" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Button ID="btnIngresar" runat="server" UseSubmitBehavior="true" Text="Ingresar" Width="80%" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Width="80%" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" />                
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333">
                <asp:TableCell ColumnSpan="2">
                    <asp:Table runat="server" HorizontalAlign="Center" Width="100%">
                        <asp:TableRow HorizontalAlign="Center">
                            <asp:TableCell>
                                <asp:HyperLink ID="hlRegistro" NavigateUrl="Registrarse.aspx" runat="server" Text="Registrarse" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:HyperLink ID="hlCambiarDatos" NavigateUrl="Login.aspx?Recarga=2" runat="server" Text="Cambiar Datos" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:HyperLink ID="hlOlvideClave" NavigateUrl="OlvideMiClave.aspx" runat="server" Text="Olvide mi Clave" />
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
                        <asp:Button runat="server" class="close" Text="×" ID="btnSalidaCancela" BackColor="White" BorderColor="White" CssClass="close" />
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" ID="popBody" Text="Tiempo de inactividad alcanzado, desea extender su tiempo?" />
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="popbtn" Text="Extender" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>