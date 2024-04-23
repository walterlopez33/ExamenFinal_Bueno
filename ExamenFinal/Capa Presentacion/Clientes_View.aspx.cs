using ExamenFinal.CapaLogica;
using System;

namespace ExamenFinal.Capa_Presentacion
{
    public partial class Clientes_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void datos()
        {
            try
            {
                Cliente_OP cli = new Cliente_OP();
                listaDatos.DataSource = cli.ObtenerClientes();
                listaDatos.DataBind();

            }
            catch (Exception ex)
            {

            }
        }

        protected void btnIncluir_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente_OP cli = new Cliente_OP();
                cli.AgregarCliente(nombre.Text, email.Text, telefono.Text);
                datos();
            }
            catch (Exception ex)
            {

            }
        }
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente_OP cli = new Cliente_OP();
                cli.BorrarCliente(Int32.Parse(idBorrar.Text));
                datos();
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente_OP cli = new Cliente_OP();
                cli.ModificarCliente(Int32.Parse(idModificar.Text), nombreModificar.Text, emailModificar.Text, telefonoModificar.Text);
                datos();
            }
            catch (Exception ex)
            {

            }
        }
    }
}