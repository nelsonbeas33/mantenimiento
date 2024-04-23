using Models.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace tests.mock
{
    public static class mockDB
    {
        private static List<Line> linesTable;
        private static List<Element> elementsTable;
        private static List<LineElement> lineElementsTable;

        static mockDB()
        {
            linesTable = new();
            elementsTable = new();
            lineElementsTable = new();

            Line line1 = new() { Id = 1, Name = "ensamblado", Desc = "ensamblado" };
            Line line2 = new() { Id = 2, Name = "empaquetado", Desc = "empaquetado" };
            Line line3 = new() { Id = 3, Name = "empaquetado 2", Desc = "empaquetado" };

            linesTable.Add(line1);
            linesTable.Add(line2);
            linesTable.Add(line3);

            Element element1 = new() { Id = 1, Name = "banda1", Desc = "banda transportadora tipo 1" };
            Element element2 = new() { Id = 2, Name = "Maquina1", Desc = "maquina con banda transportadora tipo 1" };

            elementsTable.Add(element1);
            elementsTable.Add(element2);

            LineElement lineElement1 = new() { Id = 1, ElementId = 1, LineId = 1, Left = "300px", Top = "200px" };

            lineElementsTable.Add(lineElement1);
        }
        public static List<Line> getLines()
        {
            return linesTable;
        }

        public static List<Element> getelements()
        {
            return elementsTable;
        }

        public static List<LineElement> getLineElemens()
        {
            return lineElementsTable;
        }

        public static Element getElementById(int id)
        {
            return elementsTable.Find(x => x.Id == id);
        }

        public static Line getlineById(int id)
        {
            return linesTable.Find(x => x.Id == id);
        }

        public static List<LineElement> getlineElementsById(int id)
        {
            return lineElementsTable.FindAll(x => x.LineId == id);
        }
    }
}
