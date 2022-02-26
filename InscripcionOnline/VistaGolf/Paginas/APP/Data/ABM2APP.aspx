<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ABM2APP.aspx.vb" Inherits="InscripcionOnline.ABM2APP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../../Images/favicon.ico" rel="shortcut icon" type="image/png"/>
    <title>VistaGolf</title>
</head>
<body style="font-family:Verdana; font-size:xx-large">
    <form id="form1" runat="server">
        <div align="center">
            <asp:Label ID="lbl1" runat="server" Text="¡Usuario o contraseña invalido!" />
        </div>
        <asp:Panel ID="PanelContra" runat="server" HorizontalAlign="Center">
            <asp:Label ID="Label1" runat="server" Text="SU CLAVE NUEVA ES:" /><br />
            <asp:Label ID="lblContra" runat="server" Text=" " /><br />
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <asp:Label ID="Label3" runat="server" Text="No se pudo enviar en este momento su contraseña nueva al mail ingresado." /><br />
            <asp:Label ID="Label4" runat="server" Text="Agende la misma, que se presenta en pantalla." /><br />
            <asp:Label ID="Label6" runat="server" Text="Muchisimas gracias!" /><br /><br /><br />
            <asp:Label ID="Label7" runat="server" Text="Puede consultar a su starter la clave en caso de olvidarla." /><br />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
            <asp:Label ID="Label8" runat="server" Text="Se ha enviado correctamente su contraseña nueva al mail ingresado." /><br />
            <asp:Label ID="Label9" runat="server" Text="Con la misma podrá inscribirse a los torneos." /><br />
            <asp:Label ID="Label10" runat="server" Text="Muchisimas gracias!" /><br /><br />
            <asp:Label ID="Label11" runat="server" Text="Si no recibe su clave en el transcurso del día solicitela a su starter." /><br />
        </asp:Panel>
        <asp:Panel ID="Panel3" HorizontalAlign="Center" runat="server">        
            <asp:Button ID="Button1" runat="server" Text="Volver" CssClass="btn btn-secondary" BackColor="Green" BorderColor="Black" ForeColor="White" Font-Size="XX-Large" Width="70%"  />
        </asp:Panel>
    </form>
</body>
</html>