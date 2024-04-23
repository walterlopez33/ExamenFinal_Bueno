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



        <div class='bold-line'></div>

               


<div class='container'>
  <div class='window'>
    <div class='overlay' style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000" title="Iniciar Sesion">&nbsp;&nbsp;</div>
    <div class='content'>
      <div class='welcome'>Beinvenido!</div>
      <div class='subtitle'>Por favor ingresa tus credenciales.</div>
      <div class='input-fields'>

                      
            <label>Usuario:</label>
            <asp:TextBox class='input-line full-width' runat="server"  type="text" id="username" name="username"></asp:TextBox>
        </div>
       
            <label>Contraseña:</label>
            <asp:TextBox  class='input-line full-width' runat="server"  type="password" id="password" name="password"></asp:TextBox>
            </div>
 


            <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button  ID="btnIniciarSesion" runat="server" Text="Presiona Enter para continuar"    OnClick="btnIniciarSesion_Click" BorderStyle="Solid" BorderColor="#660066" Font-Bold="True" Font-Italic="True" Font-Names="Arial" ForeColor="Black" />
            </div>

    

     </form>

</body>
</html>
