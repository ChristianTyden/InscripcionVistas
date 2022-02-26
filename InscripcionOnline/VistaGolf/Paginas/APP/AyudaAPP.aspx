<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AyudaAPP.aspx.vb" Inherits="InscripcionOnline.AyudaAPP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>Ayuda</title>
</head>
<body style="font-family:Verdana; font-size:xx-large">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script><br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="90%" >
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-secondary" BackColor="Red" BorderColor="Black" ForeColor="White" Font-Size="XX-Large" /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Table runat="server" HorizontalAlign="Center" Width="90%" BackColor="#eaeaea" BorderColor="Black" BorderWidth="2px">
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="¿Como me registro para anotarme?" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <iframe width="960" height="515" src="https://www.youtube.com/embed/hc7T0xML8lA"></iframe>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="¿Como me anoto en una línea?" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <iframe width="960" height="515" src="https://www.youtube.com/embed/MK3LvEdQNNc"></iframe>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="¿Como anotar a otros jugadores y hacer cancelaciones?" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <iframe width="960" height="515" src="https://www.youtube.com/embed/1S03xNKn8bI"></iframe>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="¿Como armar mis equipos y utilizarlos en la anotacion?" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <iframe width="960" height="515" src="https://www.youtube.com/embed/lu6M_eEp3d4"></iframe>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333" ForeColor="White">
                <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="¿Como repito mi ultima linea de anotacion?" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <iframe width="960" height="515" src="https://www.youtube.com/embed/H6leccC64tQ"></iframe>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>