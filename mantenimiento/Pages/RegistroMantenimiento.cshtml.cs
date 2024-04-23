using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace mantenimiento.Pages
{
    public class RegistroMantenimientoModel : PageModel
    {
        public int line_element_id = 0;
        public void OnGet(int? id)
        {
            if (id != null)
            {
                line_element_id = (int) id;
            }
        }


    }
}
