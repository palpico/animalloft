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
    public class ClsDatosTipoAnimales
    {
        private string cadena;

        public ClsDatosTipoAnimales()
        {
            cadena = ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
        }

        public List<ClsTipoAnimal> listarTodo()
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("select * from TipoAnimal", con);
            List<ClsTipoAnimal> lista = new List<ClsTipoAnimal>();

            con.Open();
            SqlDataReader lector = cmd.ExecuteReader();

            while (lector.Read())
            {
                ClsTipoAnimal user = new ClsTipoAnimal();
                user.CodigoTipoAnimal = lector.GetInt32(0);
                user.NombreTipoAnimal = lector.GetString(1);
                lista.Add(user);


            }
            con.Close();
            return lista;

        }

        public bool grabarUsuario(ClsTipoAnimal TipoAnimal)
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("insert into TipoAnimal(nombre) values(@nombre)", con);


            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = TipoAnimal.NombreTipoAnimal;

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


        public bool actualizar(ClsTipoAnimal TipoAnimal)
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand("update TipoAnimal set nombre = @nombre where codigo=@codigo", con);

            cmd.Parameters.Add("@codigo", SqlDbType.Char).Value = TipoAnimal.CodigoTipoAnimal;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = TipoAnimal.NombreTipoAnimal;
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


        public DataRow buscaActualiza(char codigo)
        {
            SqlConnection con = new SqlConnection(cadena);
            SqlDataAdapter da;
            DataSet ds = new DataSet();


            try
            {


                string sql = "select codigo as codigo , nombre as nombre from TipoAnimal";
                da = new SqlDataAdapter(sql, con);

                da.Fill(ds, "TipoAnimal");
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
