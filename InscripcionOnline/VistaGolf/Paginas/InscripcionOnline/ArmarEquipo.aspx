<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ArmarEquipo.aspx.vb" Inherits="InscripcionOnline.ArmarEquipo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>Armar Equipos</title>
</head>
<body style="font-family:Verdana; font-size:medium;">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="85%" BackColor="#e8e8e8" BorderColor="Black" BorderWidth="2px">
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333">
                <asp:TableCell ColumnSpan="2" ForeColor="White">
                    <asp:Label runat="server" ID="lblTitulo" Text="Personalizar mis equipos" Font-Size="X-Large" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell ColumnSpan="2"><br />
                    <asp:Table HorizontalAlign="Center" runat="server" Width="95%">
                        <asp:TableRow>
                            <asp:TableCell Width="5%">
                                <asp:Label runat="server" ID="POS1" Text="POS.1" />
                            </asp:TableCell>
                            <asp:TableCell Width="10%">
                                <asp:Label runat="server" ID="Mat1" Text="Mi<br /> Matricula:" />
                            </asp:TableCell>
                            <asp:TableCell Width="20%">
                                <asp:TextBox ID="txtMat1" runat="server" ReadOnly="true" Width="90%" />
                            </asp:TableCell>
                            <asp:TableCell Width="50%">
                                <asp:Label runat="server" ID="lblDatos" Text="Elija sus compañeros sobre las listas de esta columna, para conformar el equipo." />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="4" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label runat="server" ID="POS2" Text="POS.2" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label runat="server" ID="Mat2" Text="Matricula 1er<br /> compañero:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtMat2" runat="server" ReadOnly="true" Width="90%" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList ID="ddlMat2" runat="server" Width="90%" AutoPostBack="true" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="4" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label runat="server" ID="POS3" Text="POS.3" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label runat="server" ID="Mat3" Text="Matricula 2do<br /> compañero:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtMat3" runat="server" ReadOnly="true" Width="90%" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList runat="server" ID="ddlMat3" Width="90%" AutoPostBack="true" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell ColumnSpan="4" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label runat="server" ID="POS4" Text="POS.4" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label runat="server" ID="Mat4" Text="Matricula 3er<br /> compañero:" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtMat4" runat="server" ReadOnly="true" Width="90%" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList runat="server" ID="ddlMat4" Width="90%" AutoPostBack="true" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><hr width="80%"/></asp:TableCell></asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333">
                <asp:TableCell HorizontalAlign="Center" Width="50%"><br />
                    <asp:Button ID="btnGuardar" Text="Guardar Mi Equipo" runat="server" Width="70%" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" /><br /><br />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Width="50%"><br />
                    <asp:Button ID="btnSalir" Text="Volver" runat="server" Width="70%" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="85%" BackColor="#e8e8e8" BorderColor="Black" BorderWidth="2px">
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblTitulo2" Text="Mis Equipos Guardados" Font-Size="X-Large" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:GridView runat="server" ID="GV" AutoGenerateColumns="False" Width="100%" ForeColor="White" BackColor="#333333">
                        <Columns>
                            <asp:BoundField HeaderText="Mi Posición" DataField="matcabecera" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="15%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="Posición 2" DataField="mat1" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="25%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="Posición 3" DataField="mat2" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="25%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:BoundField HeaderText="Posición 4" DataField="mat3" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="25%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                            <asp:ButtonField ButtonType="Button" Text="Borrar Equipo" ShowHeader="false" ItemStyle-Width="10%" ItemStyle-BackColor="#eaeaea" ItemStyle-ForeColor="Black" />
                        </Columns>
                    </asp:GridView>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>