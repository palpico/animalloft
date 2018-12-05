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
    public partial class BuesquedaClientes : System.Web.UI.Page
    {
        ClsDatosCliente user = new ClsDatosCliente();
        ClsCliente entidadUser = new ClsCliente();
        public DataRow fila;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            //if (TxtBuesqueda.Text != "" )
            //{
            //   fila = user.buscaActualiza(TxtCedula.Text);
            //         = fila["cedula"].ToString();
            //        TxtNombre.Text = fila["nombre"].ToString();
            //        TxtApellido.Text = fila["apellido"].ToString();
            //        TxtTelefono.Text = fila["telefono"].ToString();
            //        TxtDireccion.Text = fila["direccion"].ToString();
            //        LblMensaje.Text = "Datos Encontrados";
            //        GridView1.Visible = false;
            //        LblCedula.Visible = true;
            //        LblNombre.Visible = true;
            //        LblApellido.Visible = true;
            //        LblTelefono.Visible = true;
            //        LblDireccion.Visible = true;
            //        TxtCedula.Visible = true;
            //        TxtNombre.Visible = true;
            //        TxtApellido.Visible = true;
            //        TxtTelefono.Visible = true;
            //        TxtDireccion.Visible = true;
            //        TxtBuesqueda.Text = "";
            //    }
            //else 
            //{
            //    GridView1.Visible = true;
            //    LblCedula.Visible = false;
            //    LblNombre.Visible = false;
            //    LblApellido.Visible = false;
            //    LblTelefono.Visible = false;
            //    LblDireccion.Visible = false;
            //    TxtCedula.Visible = false;
            //    TxtNombre.Visible = false;
            //    TxtApellido.Visible = false;
            //    TxtTelefono.Visible = false;
            //    TxtDireccion.Visible = false;
            
            //}
            
            }
    }
}