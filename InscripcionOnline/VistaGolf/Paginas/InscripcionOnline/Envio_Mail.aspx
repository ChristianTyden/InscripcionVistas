<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Envio_Mail.aspx.vb" Inherits="InscripcionOnline.Envio_Mail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title></title>
</head>
<body style="font-family:Verdana;">
    <form id="form1" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(setInterval(myfunc, 45000));
            function myfunc() {
                Response.redirect("Tee_Time.aspx")
            };
        </script>
        <div align="center">
            <asp:Label ID="Enviado1" runat="server" Text="Felicitaciones!!!" />
            <asp:Label ID="Enviado2" runat="server" Text="Se ha enviado correctamente la solicitud de reserva." />
            <asp:Label ID="Enviado3" runat="server" Text="Muchisimas gracias!" />
        </div>
        <div align="center">
            <asp:Label ID="NoEnviado" runat="server" Text="El mail no pudo ser enviado correctamente. En caso de requerir una confirmacion consulte con su starter." />
        </div>
        <div align="center">
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Tee Time" NavigateUrl="Tee_Time.aspx" />
        </div>
    </form>
</body>
</html>