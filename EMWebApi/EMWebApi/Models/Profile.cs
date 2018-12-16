using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMWebApi.Models
{
    public class Profile
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Perioricidad { get; set; }
        public DateTime FechaActualizacion { get; set; }
        public string UsuarioActualiza { get; set; }
        public int Status { get; set; }
    }
}