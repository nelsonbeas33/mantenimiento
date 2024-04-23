using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using conn;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Models.db;

namespace mantenimiento.Pages
{
    public class ManteinanceTableModel : PageModel
    {

        public int? _line_element_id;
        public int? _filter_UserId;
        public string _filter_name;
        public string _filter_route_cause;
        public string _filter_sub_cause;
        public DateTime? _filter_inicial_date;
        public DateTime? _filter_final_date;
        public int? _filter_category_id;
        public bool? _filter_success;

        public List<Maintenance> maintenances;

        public void OnGet(
            int? line_element_id, 
            int? filter_UserId,
            string filter_name,
            string filter_route_cause,
            string filter_sub_cause,
            DateTime? filter_inicial_date,
            DateTime? filter_final_date,
            int? filter_category_id,
            string filter_success) //line_element id
        {
            _line_element_id = line_element_id;
            _filter_UserId = filter_UserId;
            _filter_name = filter_name;
            _filter_route_cause = filter_route_cause;
            _filter_sub_cause = filter_sub_cause;
            _filter_inicial_date = filter_inicial_date;
            _filter_final_date = filter_final_date;
            _filter_category_id = filter_category_id;

            if(filter_success == "Cumplido") _filter_success = true;
            if (filter_success == "No cumplido") _filter_success = false;

            mantenimientoContext context = new();

            
            
            maintenances = context.Maintenances.ToList();

            if (_line_element_id != null) maintenances = maintenances.Where(m => m.LineElementId == (int) _line_element_id).ToList();
            if (_filter_UserId != null) maintenances = maintenances.Where(m => m.UserId == (int)_filter_UserId).ToList();
            if (_filter_name != null) maintenances = maintenances.Where(m => m.Name.Trim() == _filter_name).ToList();

            if (_filter_route_cause != null) maintenances = maintenances.FindAll(m => m.RootCause.Trim() == _filter_route_cause);
            if (_filter_sub_cause != null) maintenances = maintenances.Where(m => m.SubCause.Trim() == _filter_sub_cause).ToList();
            if (_filter_inicial_date != null) maintenances = maintenances.Where(m => m.InicialDate == _filter_inicial_date).ToList();
            if (_filter_final_date != null) maintenances = maintenances.Where(m => m.FinalDate == _filter_final_date).ToList();
            //falta añadir la logica de las categorias
            if(_filter_success != null) maintenances = maintenances.Where(m => m.Success == _filter_success).ToList();

        }
    }
}
