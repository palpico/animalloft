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
    public class ClsDatosAnimal
    {
        private string cadena;

        public ClsDatosAnimal()
        {
            cadena = ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
        }

        public List<ClsAnimal> listarTodo()
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("select * from Animal", con);
            List<ClsAnimal> lista = new List<ClsAnimal>();

            con.Open();
            SqlDataReader lector = cmd.ExecuteReader();

            while (lector.Read())
            {
                ClsAnimal user = new ClsAnimal();
                user.CodigoAnimal = lector.GetInt32(0);
                user.NombreAnimal = lector.GetString(1);
                user.SexoAnimal = lector.GetString(2);
                user.DescripcionAnimal = lector.GetString(3);
                user.CatidadAnimal = lector.GetInt32(4);
                user.CodigoTipoAnimal = lector.GetInt32(5);
               lista.Add(user);


            }
            con.Close();
            return lista;

        }

        public bool grabarUsuario(ClsAnimal Animal)
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("insert into Animal(nombre,sexo,descripcion,cantidad,codigoTipoAnimal) values(@nombre,@sexo,@descripcion,@cantidad,@codigoTipoAnimal)", con);


            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = Animal.NombreAnimal;
            cmd.Parameters.Add("@sexo", SqlDbType.VarChar).Value = Animal.SexoAnimal;
            cmd.Parameters.Add("@descripcion", SqlDbType.VarChar).Value = Animal.DescripcionAnimal;
            cmd.Parameters.Add("@cantidad", SqlDbType.Int).Value = Animal.CatidadAnimal;
            cmd.Parameters.Add("@codigoTipoAnimal", SqlDbType.Int).Value = Animal.CodigoTipoAnimal;




            con.Open();
            //      cmd.ExecuteNonQuery();
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
        public List<ClsAnimal> listarPorCategoria(int TipoAni)
        {

            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("select * from Animal where codigoTipoAnimal = @codigoTipoAnimal", con);
            List<ClsAnimal> lista = new List<ClsAnimal>();

            cmd.Parameters.Add("@codigoTipoAnimal", SqlDbType.Int).Value = TipoAni;

            con.Open();
            SqlDataReader lector = cmd.ExecuteReader();

            while (lector.Read())
            {
                ClsAnimal user = new ClsAnimal();
                user.CodigoAnimal = lector.GetInt32(0);
                user.NombreAnimal = lector.GetString(1);
                user.SexoAnimal = lector.GetString(2);
                user.DescripcionAnimal = lector.GetString(3);
                user.CatidadAnimal = lector.GetInt32(4);
                user.CodigoTipoAnimal = lector.GetInt32(5);
                lista.Add(user);


            }
            con.Close();
            return lista;

        }

        public bool actualizar(ClsAnimal Animal)
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("update Animal set nombre = @nombre, sexo= @sexo, descripcion=@descripcion, cantidad=@cantidad, codigoTipoAnimal=@codigoTipoAnimal where codigo=@codigo", con);

            cmd.Parameters.Add("@codigo", SqlDbType.Int).Value = Animal.CodigoAnimal;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = Animal.NombreAnimal;
            cmd.Parameters.Add("@sexo", SqlDbType.VarChar).Value = Animal.SexoAnimal;
            cmd.Parameters.Add("@descripcion", SqlDbType.VarChar).Value = Animal.DescripcionAnimal;
            cmd.Parameters.Add("@cantidad", SqlDbType.Int).Value = Animal.CatidadAnimal;
            cmd.Parameters.Add("@codigoTipoAnimal", SqlDbType.Int).Value = Animal.CodigoTipoAnimal;
            con.Open();
            //  cmd.ExecuteNonQuery();
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


        public DataRow buscaActualiza(int codigo)
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlDataAdapter da;
            DataSet ds = new DataSet();


            try
            {


                string sql = "select codigo as codigo, nombre as nombre, sexo as sexo,descripcion as descripcion," +
                    " cantidad as cantidad, codigoTipoAnimal as codigoTipoAnimal from Animal";
                da = new SqlDataAdapter(sql, con);

                da.Fill(ds, "Animal");
                da.FillSchema(ds.Tables[0], SchemaType.Mapped);



                DataRow fila = ds.Tables[0].Rows.Find(codigo);

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
