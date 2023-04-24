using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Lab5.Models
{
    public class Friend
    {
        [Key]
        [Required]
        [Range(0,200)]
        public int Id { get; set; }
        [Required]
        public string Ime { get; set; }
        [Required]
        public string MestoZiveenje { get; set; }
    }
}