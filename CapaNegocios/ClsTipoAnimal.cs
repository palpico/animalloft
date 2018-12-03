using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaNegocios
{
    public class ClsTipoAnimal
    {
        private int codigoTipoAnimal;

        public int CodigoTipoAnimal
        {
            get { return codigoTipoAnimal; }
            set { codigoTipoAnimal = value; }
        }
        private string nombreTipoAnimal;

        public string NombreTipoAnimal
        {
            get { return nombreTipoAnimal; }
            set { nombreTipoAnimal = value; }
        }
    }
}
