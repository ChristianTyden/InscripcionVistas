<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomeAPP.aspx.vb" Inherits="InscripcionOnline.HomeAPP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>FIXTURE para Inscripcion</title>
</head>
<body style="background-image:url(../../Images/ImagenGolf.jpg); background-repeat: repeat; font-family:Verdana; font-size:xx-large;">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="100%">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <asp:Button runat="server" Text="VOLVER" ID="btnVolverMenu" Width="80%" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table> 
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="95%" BackColor="#e8e8e8" BorderWidth="1px" BorderColor="Black" >
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell >
                    <asp:Label ID="lblTitulo" text-align="Center" runat="server" ForeColor="#606060" Text="TORNEOS HABILITADOS PARA INSCRIPCION ONLINE" />
                    <br />
                    <asp:Label ID="lblCGU" runat="server" ForeColor="#606060" Text="(Solo socios)" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell HorizontalAlign="Center"><hr width="90%" /></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right" >
                    <asp:Label ID="lblUsuario" runat="server" Text="" ForeColor="#606060" Font-Bold="true" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" >
                    <asp:Button ID="btnSess" runat="server" Text="CERRAR SESION" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" /> 
                    <asp:Button ID="btnRegistrarse" runat="server" Text="REGISTRARSE" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" />&nbsp
                    <asp:Button ID="btnCambiarDatos" runat="server"  Text="CAMBIAR DATOS" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" />&nbsp
                    <asp:Button ID="btnAyuda" runat="server" Text="AYUDA" Width="20%" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" HorizontalAlign="Center" Width="100%" BackColor="#e8e8e8" BorderWidth="1px" BorderColor="Black" >
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:DataGrid ValidateRequestMode="Enabled" ID="DataGrid" runat="server" DataKeyField="fecha" AllowSorting="True" AutoGenerateColumns="False" Width="100%" BorderWidth="0px">
                                    <Columns>
				                        <asp:BoundColumn HeaderText="idtorneolynx" DataField="idtorneolynx" Visible="false" />
				                        <asp:BoundColumn HeaderText="MES" DataField="MES" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="5%" HeaderStyle-BackColor="#c0c0c0" ItemStyle-Font-Size="XX-Large" HeaderStyle-Font-Size="XX-Large" Visible="false" />
                                        <asp:BoundColumn HeaderText="FECHA" DataField="FECHA" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="5%" HeaderStyle-BackColor="#c0c0c0" ItemStyle-Font-Size="XX-Large" HeaderStyle-Font-Size="XX-Large" />
                                        <asp:BoundColumn HeaderText="CLUB" DataField="CLUB" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="15%" HeaderStyle-BackColor="#c0c0c0" ItemStyle-Font-Size="XX-Large" HeaderStyle-Font-Size="XX-Large" Visible="false" />
                                        <asp:BoundColumn HeaderText="NOMBRE DEL TORNEO" DataField="NOMBRETOR" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="45%" HeaderStyle-BackColor="#c0c0c0" ItemStyle-Font-Size="XX-Large" HeaderStyle-Font-Size="XX-Large" />
                                        <asp:BoundColumn HeaderText="TIPO DE INSC." DataField="TipoInscripcion" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20%" HeaderStyle-BackColor="#c0c0c0" ItemStyle-Font-Size="XX-Large" HeaderStyle-Font-Size="XX-Large" />
                                        <asp:ButtonColumn HeaderText="INFO" CommandName="Info" Text="VER" ButtonType="PushButton" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="5%" HeaderStyle-BackColor="#c0c0c0" ItemStyle-Font-Size="40px" ItemStyle-Height="150px" HeaderStyle-Font-Size="XX-Large" />
                                        <asp:ButtonColumn HeaderText="HORARIOS" CommandName="VerTeeTime" ButtonType="PushButton" Text="VER TEE TIME" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="5%" HeaderStyle-BackColor="#c0c0c0" ItemStyle-Font-Size="40px" ItemStyle-Height="150px" HeaderStyle-Font-Size="XX-Large" />
                                        <asp:BoundColumn HeaderText="TipoTorneoDondeJugamos" DataField="TipoTorneoDondeJugamos" Visible="false" />
                                    </Columns>
                                </asp:DataGrid>
                                <%If DataGrid.Items.Count() = 0 Then %>
                                    <div align="center">
                                        <asp:Label ID="lblSinTorneos" runat="server" ForeColor="#606060" Text="EN ESTOS MOMENTOS NO HAY TORNEOS DISPONIBLES" />
                                    </div>
                                <% End If %>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <br />
        <%If Session("Club") = "cgu" Or Session("Club") = "CGU" Then %>
            <div align="center">
                <asp:Label Text="IMPORTANTE: CGU GOLF-WEB: PARA SALIDAS SIMULTANEAS SOBRE EL MISMO TEE TIME (EN LA NOMENCLATURA DE HOYO), LA LETRA(M) DECLARA TURNO
                    MAÑANA Y LA (T) TARDE. EL HOYO DE SALIDA SE INDICARA AL PRESENTARSE EN EL CLUB EL DIADEL TORNEO INDEPENDIENTEMENTE DEL ELEGIDO AL ANOTARSE
                    POR INTERNET." runat="server" />
            </div>
        <%End If %>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="center">
            <asp:Button ID="Button1" runat="server" Text="ADM" PostBackUrl="Data/IngresoADMAPP.aspx" CssClass="btn btn-secondary" BorderColor="Black" Font-Size="XX-Large" />
        </asp:Panel>
    </form>
</body>
</html>