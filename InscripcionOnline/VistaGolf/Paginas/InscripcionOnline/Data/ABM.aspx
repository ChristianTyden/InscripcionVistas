<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ABM.aspx.vb" Inherits="InscripcionOnline.ABM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title></title>
</head>
<body style="font-family:Verdana; font-size:large">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="90%" BackColor="#eaeaea" BorderColor="Black" BorderWidth="2px">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <asp:Label ID="lblrta" runat="server" Text="" /><br /><br />
                    <asp:Button ID="btnRecupero" runat="server" Text="Recuperar Clave" Visible="false" /><br /><br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center" BackColor="#333333">
                <asp:TableCell>
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>