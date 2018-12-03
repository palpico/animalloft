using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaNegocios
{
    public class ClsAnimal
    {
        private int codigoAnimal;

        public int CodigoAnimal
        {
            get { return codigoAnimal; }
            set { codigoAnimal = value; }
        }
        private string nombreAnimal;

        public string NombreAnimal
        {
            get { return nombreAnimal; }
            set { nombreAnimal = value; }
        }
        private string sexoAnimal;

        public string SexoAnimal
        {
            get { return sexoAnimal; }
            set { sexoAnimal = value; }
        }
        private string descripcionAnimal;

        public string DescripcionAnimal
        {
            get { return descripcionAnimal; }
            set { descripcionAnimal = value; }
        }
        private int catidadAnimal;

        public int CatidadAnimal
        {
            get { return catidadAnimal; }
            set { catidadAnimal = value; }
        }
        
        private int codigoTipoAnimal;

        public int CodigoTipoAnimal
        {
            get { return codigoTipoAnimal; }
            set { codigoTipoAnimal = value; }
        }
    }
}
