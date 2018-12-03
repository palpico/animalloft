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
    public partial class Animal : System.Web.UI.Page
    {
        ClsDatosAnimal user = new ClsDatosAnimal();
        ClsAnimal entidadUser = new ClsAnimal();
        public DataRow fila;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnIngreso_Click(object sender, EventArgs e)
        {

            LblCodigo.Visible = false;
            TxtCodigo.Visible = false;
                entidadUser.NombreAnimal = TxtNombre.Text;
                entidadUser.SexoAnimal = TxtSexo.Text;
                entidadUser.DescripcionAnimal = TxtDescripcion.Text;
                entidadUser.CatidadAnimal = Int32.Parse(TxtCantidad.Text);
                entidadUser.CodigoTipoAnimal = Int32.Parse(DdlTipo.Text);
                bool exito = user.grabarUsuario(entidadUser);
                if (exito)
                    GridView1.DataBind();
                LblMensaje.Text = "Datos Ingresados";
                TxtNombre.Text = "";
                TxtDescripcion.Text = "";
                TxtCantidad.Text = "";
               
            
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            fila = user.buscaActualiza(Int32.Parse(TxtCodigo.Text));
            TxtNombre.Text = fila["nombre"].ToString();
            TxtSexo.Text = fila["sexo"].ToString();
            TxtDescripcion.Text = fila["descripcion"].ToString();
            TxtCantidad.Text = fila["cantidad"].ToString();
            DdlTipo.Text = fila["codigoTipoAnimal"].ToString();
            LblMensaje.Text = "";
            BtnActualizar.Visible = true;
            BtnIngreso.Visible = false;
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            Boolean exito;

            LblCodigo.Visible = false;
            TxtCodigo.Visible = false;
            entidadUser.NombreAnimal = TxtNombre.Text;
            entidadUser.SexoAnimal = TxtSexo.Text;
            entidadUser.DescripcionAnimal = TxtDescripcion.Text;
            entidadUser.CatidadAnimal = Int32.Parse(TxtCantidad.Text);
            entidadUser.CodigoTipoAnimal = Int32.Parse(DdlTipo.Text);



            exito = user.actualizar(entidadUser);

            if (exito)
            {
                LblMensaje.Text = "Datos Actualizados";
                GridView1.DataBind();
                TxtCodigo.Text = "";
                TxtNombre.Text = "";
                TxtSexo.Text = "";
                TxtCantidad.Text = "";
                TxtDescripcion.Text = "";
                                BtnIngreso.Visible = true;
            }

            else
                LblMensaje.Text = "Datos NO Actualizados";
            BtnIngreso.Visible = true;
        }

        protected void BtnActivar_Click(object sender, EventArgs e)
        {
        TxtCodigo.Visible= true;
        LblCodigo.Visible=true;
        BtnIngreso.Visible = false;
           
        }

        protected void BtnBorrar_Click(object sender, EventArgs e)
        {
            TxtCodigo.Visible = false;
            LblCodigo.Visible = false;
            BtnActualizar.Visible = false;
            BtnIngreso.Visible = true;
            TxtCodigo.Text = "";
            TxtNombre.Text = "";
            TxtSexo.Text = "";
            TxtCantidad.Text = "";
            TxtDescripcion.Text = "";

        }

      
        }

                    

           }
