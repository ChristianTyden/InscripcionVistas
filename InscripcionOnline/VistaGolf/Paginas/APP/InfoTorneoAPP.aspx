<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InfoTorneoAPP.aspx.vb" Inherits="InscripcionOnline.InfoTorneoAPP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>Detalles del torneo</title>
</head>
<body style="font-family:Verdana; font-size:xx-large">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <br />
        <asp:Table ID="tbTorneo" runat="server" Width="90%" HorizontalAlign="Center" BackColor="#e8e8e8" BorderColor="Black" BorderWidth="2px">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="Button1" runat="server" Text="Volver" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" PostBackUrl="HomeAPP.aspx" Font-Size="XX-Large" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell HorizontalAlign="Center"><hr width="80%" /></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" BackColor="#333333" ForeColor="White" Width="30%">
                    <asp:Label ID="Label4" runat="server" Text="TORNEO:" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblNombre" runat="server" Text="" /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell HorizontalAlign="Center"><hr width="80%" /></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                    <asp:Label ID="Label5" runat="server" Text="Fecha de Inicio:" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblIncio" runat="server" Text="" /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell HorizontalAlign="Center"><hr width="80%" /></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                    <asp:Label ID="Label3" runat="server" Text="Fecha de Finalización:" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblFin" runat="server" Text="" /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell HorizontalAlign="Center"><hr width="80%" /></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                    <asp:Label ID="Label2" runat="server" Text="Horario de Largada:" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblLargada" runat="server" Text="" /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell HorizontalAlign="Center"><hr width="80%" /></asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                    <asp:Label ID="Label1" runat="server" Text="Ultima Salida:" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblUltima" runat="server" Text="" /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>