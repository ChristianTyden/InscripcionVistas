<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registrarse.aspx.vb" Inherits="InscripcionOnline.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>Vista Golf</title>
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
        </div><br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="60%" BackColor="#eaeaea" BorderColor="Black" BorderWidth="2px">
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White" Font-Size="Large">
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Ingrese los siguientes datos con el fin de quedar registrado en el sitio para su inscripción por Internet" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell><br />
                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label4" runat="server" Text="Matricula:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtMatricula" runat="server" AutoPostBack="true" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label8" runat="server" Text="Nombres:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtNombre" runat="server" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label3" runat="server" Text="Apellido:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtApellido" runat="server" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label5" runat="server" Text="Mail:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtMail" runat="server" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblCelular" runat="server" Text="*Celular:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtCelular" runat="server" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%">
                        <asp:TableRow ForeColor="White" HorizontalAlign="Center">
                            <asp:TableCell ColumnSpan="4">
                                <asp:Label ID="Label6" runat="server" Text="¡Por favor complete todos los datos, ya que son necesarios para el proceso de inscripción!" />                 
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="4" HorizontalAlign="Center" ForeColor="White">
                                <asp:Label ID="lblopc" runat="server" Text="*Opcional" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Center">
                                <asp:Button ID="btCancelar" runat="server" Text="Cancelar" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" />
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Center">
                                <asp:Button ID="btAceptar" runat="server" Text="Aceptar" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>