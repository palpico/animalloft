using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocios;
using System.Data;
namespace ProyectoMascotas
{
    public partial class Registro : System.Web.UI.Page
    {
        
        ClsDatosCliente user = new ClsDatosCliente();
        ClsCliente entidadUser = new ClsCliente();
        public DataRow fila;

        protected void BtnIngreso_Click(object sender, EventArgs e)
        {
           
            TxtCedula.Visible = true;
            entidadUser.Cedula = TxtCedula.Text;
            entidadUser.Nombre = TxtNombre.Text;
            entidadUser.Apellido = TxtApellido.Text;
            entidadUser.Telefono = TxtTelefono.Text;
            entidadUser.Direccion = TxtDireccion.Text;
            bool exito = user.grabarUsuario(entidadUser);
            if (exito)
                LblMensaje.Text = "Datos Ingresados";
                GridView1.DataBind();
            TxtCedula.Text = "";
            TxtNombre.Text = "";
            TxtApellido.Text = "";
            TxtTelefono.Text = "";
            TxtDireccion.Text = "";
           
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            user.buscaActualiza(TxtCedula.Text);
            LblMensaje.Text = "";
            
            BtnIngreso.Visible = false;
        }
        
        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            TxtCedula.Text = "";
            TxtNombre.Text = "";
            TxtApellido.Text = "";
            TxtTelefono.Text = "";
            TxtDireccion.Text = "";
            BtnIngreso.Visible = true;
        }
    }
}