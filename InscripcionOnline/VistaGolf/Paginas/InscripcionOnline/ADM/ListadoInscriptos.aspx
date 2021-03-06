<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListadoInscriptos.aspx.vb" Inherits="InscripcionOnline.ListadoInscriptos" %>

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
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="60%">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <asp:Button runat="server" ID="Volver" Text="Volver" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="80%">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <asp:GridView ID="GV" runat="server" AutoGenerateColumns="False" Width="80%" ForeColor="White" BackColor="#333333">
                        <Columns>
				            <asp:BoundField HeaderText="HORARIO" DataField="Horario" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
				            <asp:BoundField HeaderText="POSICION" DataField="Posicion" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="HOYO" DataField="Hoyo" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="MATRICULA" DataField="Matricula" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="APELLIDO" DataField="Apellido" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="NOMBRE" DataField="Nombre" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                        </Columns>
                    </asp:GridView>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>