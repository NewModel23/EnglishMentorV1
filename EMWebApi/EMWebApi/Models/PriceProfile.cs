using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EMWebApi.Models
{
    public class PriceProfile
    {
        [Key]
        public int IdPerfil { get; set; }
        public string Perioricidad { get; set; }
        public double PrecioNormal { get; set; }
        public int Iva { get; set; }
        public double PrecioFinal { get; set; }
        public int DescuentoMaximoReferenciaPCT { get; set; }
        public double DescuentoMaximoReferencia { get; set; }
        public int DescuentoReferencia1PCT { get; set; }
        public int DescuentoReferencia2PCT { get; set; }
        public int DescuentoReferencia3PCT { get; set; }
        public int DescuentoReferencia4PCT { get; set; }
        public double DescuentoReferencia1 { get; set; }
        public double DescuentoReferencia2 { get; set; }
        public double DescuentoReferencia3 { get; set; }
        public double DescuentoReferencia4 { get; set; }
        public int ComisionSistemasPCT { get; set; }
        public double ComisionSistemas { get; set; }
        public int ImpuestoSistemas { get; set; }
        public double ComisionDespImpuestoSistemas { get; set; }
        public int ComisionInstructorPCT { get; set; }
        public double ComisionInstructor { get; set; }
        public int ImpuestoInstructor { get; set; }
        public double ComisionDespImpuestoInstructor { get; set; }
        public int ComisionVendedorPCT { get; set; }
        public double ComisionVendedor { get; set; }
        public int ImpuestoVendedor { get; set; }
        public double ComisionDespImpuestoVendedor { get; set; }
        public double GananciaNeta { get; set; }
        public DateTime FechaActualizacion { get; set; }
        public string UsuarioActualiza { get; set; }
        public int Status { get; set; }
    }
}