<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Tee_TimeAPP.aspx.vb" Inherits="InscripcionOnline.Tee_TimeAPP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>Horarios para Inscripcion</title>
</head>
<body style="font-family:Verdana; font-size:xx-large">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            <% If Session("EsAdmin") = 1 Then %>
            $(document).ready(setInterval(myfunc, 120000));
            <% Else %>
                $(document).ready(setInterval(myfunc, 45000));
            <% End If %>
            function myfunc() {
                $("#PopTiempo").modal('show');
                $(document).ready(setInterval(Salir, 5000));
            };
            function Salir() {
                $("#btnSalidaCancela").click();
            };
            function Ocup() {
                $("#PopTiempo").modal('show');
                $(document).ready(setInterval(Salir, 8000));
            }
        </script>
        <div id="PopTiempo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="PopTitulo" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <asp:Label Text="Tiempo caducado" ID="PopTitulo" runat="server" />
                        <asp:Button runat="server" class="close" Text="×" ID="btnSalidaCancela" BackColor="White" BorderColor="White" CssClass="close" Font-Size="XX-Large" />
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" ID="ModalCuerpo" Text="Tiempo de inactividad alcanzado, desea extender su tiempo?" />
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="ModalBoton" Text="Extender" CssClass="btn btn-primary" Font-Size="XX-Large" />
                        <asp:Button runat="server" ID="ModalBTN" Text="OK" Visible="false" CssClass="btn btn-primary" Font-Size="XX-Large" />
                    </div>
                </div>
            </div>
        </div>
        <asp:Table runat="server" HorizontalAlign="Center" Width="90%" BackColor="#333333" BorderWidth="2px" BorderColor="Black" >
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell ColumnSpan ="2">
                    <asp:Button ID="btVolver" runat="server" Text="<= VOLVER" Width="80%" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" Font-Size="XX-Large" Height="100px" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center"><asp:TableCell ColumnSpan="2"><hr /></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lbl1" runat="server" Text="¡Click en actualizar para refrescar!" ForeColor="White" />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:Button ID="btnCerrarSess" runat="server" Text="CERRAR SESION" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" Height="100px" />&nbsp;&nbsp;
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center"><asp:TableCell ColumnSpan="2"><hr /></asp:TableCell></asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell ColumnSpan="2">
                    <asp:Table runat="server" HorizontalAlign="Center" Width="100%">
                        <asp:TableRow HorizontalAlign="Center">
                            <asp:TableCell>
                                <asp:Button ID="btnActualizar" runat="server" Text="ACTUALIZAR" Width="60%" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" Font-Size="xx-large" Height="100px" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Button ID="lblCancelarme" runat="server" Text="CANCELARME" Width="60%" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" Font-Size="xx-large" Height="100px" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>   
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center"><asp:TableCell ColumnSpan="2"><hr /></asp:TableCell></asp:TableRow>
            <asp:TableRow HorizontalAlign="center" ForeColor="White" >
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblUsuario" runat="server" Text="" />
                    <asp:Label ID="lblMatricula" runat="server" Text="" />
                    <asp:Label ID="lblIndex" runat="server" Text="" /><br />
                    <asp:Label ID="lblNombreTor" runat="server" Text="" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="center" ForeColor="White" >
                <asp:TableCell ColumnSpan="3">
                    <hr />
                    <asp:Panel ID="pnTipoInsc" runat="server" HorizontalAlign="center">
                        <asp:Label ID="Label1" runat="server" Text="Seleccion el tipo de inscripcion: " />
                        <asp:RadioButton ID="rb1" runat="server" GroupName="Inscripcion" Text="Single" Checked="true" />
                        <asp:RadioButton ID="rb2" runat="server" GroupName="Inscripcion" Text="Equipo" />
                        <hr />
                    </asp:Panel>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell ColumnSpan="3">
                    <asp:DataGrid runat="server" ID="DataGrid" AutoGenerateColumns="False" Width="100%" ForeColor="White">
                        <Columns>
                            <asp:BoundColumn HeaderText="Hora" DataField="tor_Hora" Visible="false" />
                            <asp:BoundColumn HeaderText="Hoyo" DataField="Hora" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-Font-Size="Medium" />
                            <asp:BoundColumn HeaderText="Jugador 1" DataField="Nombre_Jug1" ItemStyle-Font-Size="XX-Large" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" HeaderStyle-Font-Size="XX-Large" />
                            <asp:BoundColumn HeaderText="Jugador 2" DataField="Nombre_Jug2" ItemStyle-Font-Size="XX-Large" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" HeaderStyle-Font-Size="XX-Large" />
                            <asp:BoundColumn HeaderText="Jugador 3" DataField="Nombre_Jug3" ItemStyle-Font-Size="XX-Large" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" HeaderStyle-Font-Size="XX-Large" />
                            <asp:BoundColumn HeaderText="Jugador 4" DataField="Nombre_Jug4" ItemStyle-Font-Size="XX-Large" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" HeaderStyle-Font-Size="XX-Large" />
                            <asp:BoundColumn HeaderText="Estado" DataField="Estado" Visible="false" />
                            <asp:ButtonColumn HeaderText=" " ButtonType="PushButton" DataTextField="Estado" CommandName="Reservas" ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="40px" ItemStyle-Height="150px" />
                            <asp:BoundColumn HeaderText="HoyoNum" DataField="Hoyo" Visible="false" />
                            <asp:BoundColumn HeaderText="SalidaId" DataField="MultipleSalidaId" Visible="false" />
                        </Columns>
                    </asp:DataGrid>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell ColumnSpan="3">
                    <asp:Button ID="ADM" runat="server" Text="ADM" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" Height="100px" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>