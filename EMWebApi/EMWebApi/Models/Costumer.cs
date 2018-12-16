using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMWebApi.Models
{
    public class Costumer
    {
        public long Id { get; set; }
        public string Nombre { get; set; }
        public string Nombre2 { get; set; }
        public string ApellidoP { get; set; }
        public string ApellidoM { get; set; }
        public int Telefono1 { get; set; }
        public int Telefono2 { get; set; }
        public int CodigoPostal { get; set; }
        public string Calle { get; set; }
        public string Colonia { get; set; }
        public string DelegacionMunicipio { get; set; }
        public string Estado { get; set; }
        public string Pais { get; set; }
        public int TipoPerfil { get; set; }
        public string CodigoPromo { get; set; }
        public DateTime FechaIngreso { get; set; }
        public DateTime FechaBaja { get; set; }
        public DateTime FechaActualizacion { get; set; }
        public string Usuarioctualiza { get; set; }
        public int Status { get; set; }
    }
}