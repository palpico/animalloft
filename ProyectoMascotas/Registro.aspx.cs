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
            BtnActualizar.Visible = false;
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            fila = user.buscaActualiza(TxtCedula.Text);
            TxtCedula.Text = fila["cedula"].ToString();
            TxtNombre.Text = fila["nombre"].ToString();
            TxtApellido.Text = fila["apellido"].ToString();
            TxtTelefono.Text = fila["telefono"].ToString();
            TxtDireccion.Text = fila["direccion"].ToString();
            TxtCedula.Visible = true;
            LblMensaje.Text = "";
            BtnActualizar.Visible = true;
            BtnIngreso.Visible = false;
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            Boolean exito;

            entidadUser.Cedula = TxtCedula.Text;
            entidadUser.Nombre = TxtNombre.Text;
            entidadUser.Apellido = TxtApellido.Text;
            entidadUser.Telefono = TxtTelefono.Text;
            entidadUser.Direccion = TxtDireccion.Text;




            exito = user.actualizar(entidadUser);

            if (exito)
            {
                LblMensaje.Text = "Datos Actualizados";
                GridView1.DataBind();
                TxtCedula.Text = "";
                TxtNombre.Text = "";
                TxtApellido.Text = "";
                TxtTelefono.Text = "";
                TxtDireccion.Text = "";
                BtnIngreso.Visible = true;
            }

            else
                LblMensaje.Text = "Datos NO Actualizados";
            BtnIngreso.Visible = true;
        }

         }
}