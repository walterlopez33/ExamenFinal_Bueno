<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExamenFinal.Presentacion.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="../CSS/CSS_login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <label>Usuario:</label>
            <asp:TextBox runat="server"  type="text" id="username" name="username"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Contraseña:</label>
            <asp:TextBox runat="server"  type="password" id="password" name="password"></asp:TextBox>
        </div>
        <asp:Button ID="btnIniciarSesion" runat="server" Text="IniciarSesion" OnClick="btnIniciarSesion_Click" />
     </form>
</body>
</html>
