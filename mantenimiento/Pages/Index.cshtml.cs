using data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using Models.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using tests.mock;
using conn;

namespace mantenimiento.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        public List<Line> lines;
        public List<LineElement> lineElements;
        public List<Element> elements;
        public List<(List<Element> elem, string catName)> elementsByCategory;
        public List<CatElementCategory> catElementCategories;
        public List<ElementCategory> elementCategories;
        public int? activeLineId;
        public IndexModel(ILogger<IndexModel> logger)
        {
            _logger = logger;

        }

        public void OnGet()
        {
            lines = mockDB.getLines();
            activeLineId = null;

            if (lines.Count != 0)
            {
                activeLineId = lines.First().Id;
            }

            lineElements = mantenimientoDB.getLineElementsById(1);
            elements = new();
            catElementCategories = new();
            elementCategories = new();

            mantenimientoContext context = new();
            elements = context.Elements.ToList();
            catElementCategories = context.CatElementCategories.ToList();
            elementCategories = context.ElementCategories.ToList();
            elementsByCategory = mantenimientoDB.getElementsByCategoryName();
        }

    }
}
