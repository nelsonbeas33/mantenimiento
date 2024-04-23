using Models.db;
using conn;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace data
{
    public class mantenimientoDB
    {
        public static List<LineElement> getLineElements()
        {
            List<LineElement> lineElements = new();
            mantenimientoContext mantenimientoContext = new();

            lineElements = mantenimientoContext.LineElements.ToList();

            return lineElements;
        }

        public static List<LineElement> getLineElementsById(int lineId)
        {
            List<LineElement> lineElements = new();
            mantenimientoContext mantenimientoContext = new();

            lineElements = mantenimientoContext.LineElements.Where(e => e.LineId == lineId).ToList();

            return lineElements;
        }

        
        public static List<(List<Element> elem, int catId)> getElementsByCategory()
        {
            mantenimientoContext context = new();
            List<(List<Element> elem, int catId)> ElementsByCat = new();
            List<Element> elements = context.Elements.ToList();
            List<ElementCategory> elementCategory = context.ElementCategories.ToList();

            foreach (var categorys in context.CatElementCategories.ToList())
            {
                ElementsByCat.Add(
                    (elements.FindAll(e => elementCategory.FirstOrDefault(c => c.ElementId == e.Id).CatElementCategoryId == categorys.Id), categorys.Id)
                    );
            }

            return (ElementsByCat);
        }

        public static List<(List<Element> elem, string catName)> getElementsByCategoryName()
        {
            mantenimientoContext context = new();
            List<(List<Element> elem, string catName)> ElementsByCat = new();
            List<Element> elements = context.Elements.ToList();
            List<ElementCategory> elementCategory = context.ElementCategories.ToList();

            foreach (var categorys in context.CatElementCategories.ToList())
            {
                ElementsByCat.Add(
                    (elements.FindAll(e => elementCategory.FirstOrDefault(c => c.ElementId == e.Id).CatElementCategoryId == categorys.Id), categorys.Name)
                    );
            }

            return (ElementsByCat);
        }
    }
}
