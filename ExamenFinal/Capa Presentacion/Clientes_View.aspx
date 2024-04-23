<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Clientes_View.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Clientes_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Gestión de Clientes</h1>

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
    <label for="idBorrar">ID del Cliente:</label>
    <asp:TextBox runat="server" type="number" id="idBorrar" name="idBorrar"></asp:TextBox>
    <br />
    <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" OnClick="btnEliminar_Click" />
</div>
<br /><br />

<div>
    <label for="idModificar">ID del Cliente:</label>
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
    <h1>Reporte Clientes</h1>
  
    <asp:GridView ID="listaDatos" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SQLClientes">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SQLClientes" runat="server" ConnectionString="<%$ ConnectionStrings:WalterDBConnectionStringClient %>" ProviderName="<%$ ConnectionStrings:WalterDBConnectionStringClient.ProviderName %>" SelectCommand="SELECT [ID], [Nombre], [Email], [Telefono] FROM [Clientes]"></asp:SqlDataSource>
</div>
</asp:Content>
