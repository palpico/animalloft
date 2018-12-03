using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Data;
using CapaNegocios;

namespace CapaDatos
{
   public class ClsDatosCliente
    {
        private string cadena;

        public ClsDatosCliente()
        {
            cadena = ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
        }

        public List<ClsCliente> listarTodo()
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("select * from Cliente", con);
            List<ClsCliente> lista = new List<ClsCliente>();

            con.Open();
            SqlDataReader lector = cmd.ExecuteReader();

            while (lector.Read())
            {
                ClsCliente user = new ClsCliente();
                user.Cedula = lector.GetString(0);
                user.Nombre = lector.GetString(1);
                user.Apellido = lector.GetString(2);
                user.Direccion = lector.GetString(3);
                user.Telefono = lector.GetString(4);
               lista.Add(user);


            }
            con.Close();
            return lista;

        }

        public bool grabarUsuario(ClsCliente Cliente)
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("insert into Cliente(cedula,nombre,apellido,direccion,telefono) values(@cedula,@nombre,@apellido,@direccion,@telefono)", con);


            cmd.Parameters.Add("@cedula", SqlDbType.VarChar).Value = Cliente.Cedula;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = Cliente.Nombre;
            cmd.Parameters.Add("@apellido", SqlDbType.VarChar).Value = Cliente.Apellido;
            cmd.Parameters.Add("@direccion", SqlDbType.VarChar).Value = Cliente.Direccion;
            cmd.Parameters.Add("@telefono", SqlDbType.VarChar).Value = Cliente.Telefono;
            con.Open();
            
            int exito = cmd.ExecuteNonQuery();


            if (exito == 1)
            {
                return true;
            }
            else
            {
                return false;
            }

            ;
        }


        public bool actualizar(ClsCliente Cliente)
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("update Cliente set cedula=@cedula,nombre = @nombre, apellido= @apellido, direccion=@direccion, telefono=@telefono where cedula=@cedula", con);

            
            cmd.Parameters.Add("@cedula", SqlDbType.VarChar).Value = Cliente.Cedula;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = Cliente.Nombre;
            cmd.Parameters.Add("@apellido", SqlDbType.VarChar).Value = Cliente.Apellido;
            cmd.Parameters.Add("@direccion", SqlDbType.VarChar).Value = Cliente.Direccion;
            cmd.Parameters.Add("@telefono", SqlDbType.VarChar).Value = Cliente.Telefono;
            con.Open();
           
            int exito = cmd.ExecuteNonQuery();


            if (exito == 1)
            {
                return true;
            }
            else
            {
                return false;
            }


        }


        public DataRow buscaActualiza(string cedula)
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlDataAdapter da;
            DataSet ds = new DataSet();


            try
            {


                string sql = "select cedula as cedula, nombre as nombre, apellido as apellido," +
                    "direccion as direccion, telefono as telefono from Cliente";
                da = new SqlDataAdapter(sql, con);

                da.Fill(ds, "Cliente");
                da.FillSchema(ds.Tables[0], SchemaType.Mapped);



                DataRow fila = ds.Tables[0].Rows.Find(cedula);

                return fila;




            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();

            }
        }


    }
}

