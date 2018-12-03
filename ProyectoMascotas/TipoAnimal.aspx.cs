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
    public partial class TipoAnimal : System.Web.UI.Page
    {
        ClsDatosTipoAnimales user = new ClsDatosTipoAnimales();
        ClsTipoAnimal entidadUser = new ClsTipoAnimal();
        public DataRow fila;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnIngreso_Click(object sender, EventArgs e)
        {
            if (TxtNombre.Text != "")
            {
                entidadUser.NombreTipoAnimal = TxtNombre.Text;
                bool exito = user.grabarUsuario(entidadUser);
                if (exito)
                    GridView1.DataBind();
                TxtNombre.Text = "";
                LblMensaje.Text = "";
            }
            else
            {
                LblMensaje.Text = "Por favor ingrese tipo de mascota";
            }
        }
    }
}