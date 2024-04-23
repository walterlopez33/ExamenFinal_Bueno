<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Agente_Vista.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Agente_Vista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Gestión de Agentes</h1>

    <div>
        <label for="nombre">Nombre:</label>
        <asp:TextBox runat="server" type="text" id="nombre" name="nombre"></asp:TextBox>
        <br />
        <label for="email">Email:</label>
        <asp:TextBox runat="server" type="email" id="email" name="email"></asp:TextBox>
        <br />
        <label for="telefono">Teléfono:</label>
        <asp:TextBox runat="server" type="tel" id="telefono" name="telefono"></asp:TextBox>
        <br />
        <asp:Button ID="btnIncluir" runat="server" Text="INCLUIR" OnClick="btnIncluir_Click" />
    </div>
    <br /><br />

    <div>
        <label for="idBorrar">ID del Agente:</label>
        <asp:TextBox runat="server" id="idBorrar" name="idBorrar"></asp:TextBox>
        <br />
        <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" OnClick="btnEliminar_Click" />
    </div>
    <br /><br />

    <div>
        <label for="idModificar">ID del Agente:</label>
        <asp:TextBox runat="server" type="number" id="idModificar" name="idModificar"></asp:TextBox>
        <br />
        <label for="nombreModificar">Nuevo Nombre:</label>
        <asp:TextBox runat="server" type="text" id="nombreModificar" name="nombreModificar"></asp:TextBox>
        <br />
        <label for="emailModificar">Nuevo Email:</label>
        <asp:TextBox runat="server" type="email" id="emailModificar" name="emailModificar"></asp:TextBox>
        <br />
        <label for="telefonoModificar">Nuevo Teléfono:</label>
        <asp:TextBox runat="server" type="tel" id="telefonoModificar" name="telefonoModificar"></asp:TextBox>
        <br />
        <asp:Button ID="btnActualizar" runat="server" Text="ACTUALIZAR" OnClick="btnActualizar_Click" />
    </div>
    <br /><br />

    <div class="container d-flex align-items-center flex-column">
        <h1>Reporte de Agentes</h1>
  
        <asp:GridView ID="listaDatos" runat="server"></asp:GridView>
    </div>
</body>
</asp:Content>
