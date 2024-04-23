using ExamenFinal.CapaLogica;
using System;

namespace ExamenFinal.Capa_Presentacion
{
    public partial class Agente_Vista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            datos();
        }

        private void datos()
        {
            try
            {
                Agente_OP ag = new Agente_OP();
                listaDatos.DataSource = ag.ObtenerAgentes();
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
                Agente_OP agente_OP = new Agente_OP();
                agente_OP.AgregarAgente(nombre.Text, email.Text, telefono.Text);
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
                Agente_OP agente_OP = new Agente_OP();
                agente_OP.BorrarAgente(Int32.Parse(idBorrar.Text));
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
                Agente_OP agente_OP = new Agente_OP();
                agente_OP.ModificarAgente(Int32.Parse(idModificar.Text), nombreModificar.Text, emailModificar.Text, telefonoModificar.Text);
                datos();
            }
            catch (Exception ex)
            {

            }
        }
    }
}