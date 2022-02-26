<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cancelacion.aspx.vb" Inherits="InscripcionOnline.Cancelacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>Cancelarme</title>
</head>
<body style="font-family:Verdana;">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            <% If Session("EsAdmin") = 1 Then %>
            $(document).ready(setInterval(myfunc, 120000));
            <% Else %>
                $(document).ready(setInterval(myfunc, 50000));
            <% End If %>
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
                        <asp:Label Text="Tiempo caducado" ID="Label1" runat="server" />
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
        <div align="center">
            <asp:Button ID="btnVolver" runat="server" Text=" <= Volver a la grilla horaria" OnClick="TeeTime" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" />
        </div>
        <br />
        <asp:Table runat="server" Width="90%" HorizontalAlign="Center">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <asp:GridView runat="server" ID="GV" AutoGenerateColumns="False" Width="80%" ForeColor="White" BackColor="#333333">
                        <Columns>
                            <asp:BoundField HeaderText="MATRICULA" DataField="Matricula" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="APELLIDO/NOMBRE" DataField="NombreComp" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="60%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="HORA" DataField="horario" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="POSICION" DataField="posicion" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="8%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:ButtonField ButtonType="Button" ShowHeader="false" Text="Cancelar Inscripcion" ItemStyle-Width="8%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                        </Columns>
                    </asp:GridView>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>