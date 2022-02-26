<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EnvioLiqMailAPP.aspx.vb" Inherits="InscripcionOnline.EnvioLiqMailAPP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title></title>
</head>
<body style="font-family:Verdana; font-size:xx-large">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            function myfunc() {
                $("#PopTiempo").modal('show');
            };
        </script>
        <div id="PopTiempo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="PopTitulo" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <asp:Label Text=" " ID="PopTitulo" runat="server" />
                        <asp:Button runat="server" class="close" Text="×" BackColor="White" BorderColor="White" CssClass="close" Font-Size="XX-Large" />
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" ID="ERRORTEXTO" Text=" " />
                    </div>
                    <div class="modal-footer">
                        <asp:Button runat="server" Text="ACEPTAR" CssClass="btn btn-primary" Font-Size="XX-Large" />
                    </div>
                </div>
            </div>
        </div>
        <div align="Center">
            <asp:Button ID="Volver" Text="<= Volver" runat="server" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" Font-Size="XX-Large" Width="80%"/><br /><br />
        </div>
        <asp:Table ID="Table1" runat="server" Width="85%" BackColor="#eaeaea" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50px">
                    <asp:Label ID="lblMailAsunto" runat="server" Text="Asunto: " />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Left">
                    <asp:TextBox ID="txtAsunto" runat="server" Font-Size="XX-Large" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50px">
                    <asp:Label ID="lblMensaje" runat="server" Text="Mensaje: "/>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Left">
                    <asp:TextBox ID="txtMensaje" runat="server" TextMode="MultiLine" Height="196px" Width="100%" Font-Size="XX-Large" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333">
                <asp:TableCell ColumnSpan="2">
                    <asp:Table runat="server" HorizontalAlign="Center" Width="50%">
                        <asp:TableRow HorizontalAlign="Center">
                            <asp:TableCell>
                                <asp:Button ID="btnEnviar" Font-Size="XX-Large" Text="Enviar Mail" runat="server" CssClass="btn btn-secondary" BorderColor="Black" Width="70%" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Button ID="btnTildar" Font-Size="XX-Large" Text="Tildar / Destildar" runat="server" CssClass="btn btn-secondary" BorderColor="Black" Width="70%" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" BorderColor="Black" BorderWidth="2px" Width="90%">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <asp:GridView ID="GV" runat="server" AutoGenerateColumns="False" Width="100%" ForeColor="White" BackColor="#333333">
                        <Columns>
                            <asp:BoundField HeaderText="MATRICULA" DataField="Nombreusuario" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="JUGADOR" DataField="socio" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="MAIL" DataField="mail" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black">
                                <HeaderTemplate>ENVIAR</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSelect" runat="server" Text=""/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>