<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="OcultarTorneo.aspx.vb" Inherits="InscripcionOnline.OcultarTorneo" %>

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
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" BackColor="#eaeaea" BorderColor="Black" Width="70%" BorderWidth="2px">
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                <asp:TableCell>
                    <asp:Label runat="server" ID="lbl1" Text="Seleccione el Torneo" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" >
                <asp:TableCell><br />
                    <asp:DropDownList ID="ddlTorneo" runat="server" AutoPostBack="true" Width="95%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" >
                <asp:TableCell><br />
                    <asp:Table runat="server" HorizontalAlign="Center" Width="30%">
                        <asp:TableRow HorizontalAlign="Center">
                            <asp:TableCell>
                                <asp:RadioButton ID="rbVisualizar" runat="server" Text="Visualizar" GroupName="Visibilidad"/>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:RadioButton ID="rbOcultar" runat="server" Text="Ocultar" GroupName="Visibilidad" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" >
                <asp:TableCell><br />
                    <asp:Table runat="server" HorizontalAlign="Center" Width="100%" BackColor="#333333">
                        <asp:TableRow HorizontalAlign="Center">
                            <asp:TableCell Width="14%">
                                <asp:Button ID="Button1" runat="server" Text="Volver" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" Width="80%" />
                            </asp:TableCell>
                            <asp:TableCell Width="35%">
                                <asp:Button ID="btnRecarga" runat="server" Text="Recargar Torneo" BackColor="Red" ForeColor="White" CssClass="btn btn-secondary" BorderColor="Black" Width="80%" />
                            </asp:TableCell>
                            <asp:TableCell Width="35%">
                                <asp:Button ID="btnVerTeeTime" runat="server" Text="Ver Tee Time" CssClass="btn btn-secondary" BorderColor="Black" Width="80%" />
                            </asp:TableCell>
                            <asp:TableCell Width="16%">
                                <asp:Button ID="Button2" runat="server" Text="Aceptar" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" Width="80%" />
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
                        <asp:Label runat="server" Text="Tiempo de inactividad alcanzado, desea extender su tiempo?" />
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" Text="Extender" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
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
</html>