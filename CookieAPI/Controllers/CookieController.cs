using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using CookieAPI.Model;

namespace CookieAPI.Controllers
{
    [ApiController]
    [Route("api/cookie")]
    public class CookieController : ControllerBase
    {

        private readonly CookieContext _context;

        public CookieController(CookieContext context)
        {
            _context = context;
        }


        public class AllCookies
        {
            public int CookieId { get; set; }
            public string Name { get; set; }
            public double Weight { get; set; }
            public double CaloriesPer100g { get; set; }

        }

        public class CookieDetail
        {
            public int CookieId { get; set; }
            public string Name { get; set; }
            public double Weight { get; set; }
            public double Calories { get; set; }
            public double CaloriesPer100g { get; set; }
            public List<string> IngredientNames { get; set; }

        }

        [HttpGet]
        public ActionResult<IEnumerable<AllCookies>> GetAllCookies()
        {

            List<AllCookies> allCookies = _context.Cookies.Select(c => new AllCookies
            {
                CookieId = c.CookieId,
                Name = c.Name,
                Weight = c.Weight,
                CaloriesPer100g = (c.Calories / c.Weight) * 100
            }).OrderBy(c => c.Name).ToList();
            return allCookies;

        }

        [HttpGet("{id}")]
        public ActionResult<CookieDetail> GetCookieDetail(int id)
        {
            List<int> ingredientIds = _context.CookieIngredients
                .Where(ci => ci.CookieId == id)
                .Select(ci => ci.IngredientId).ToList();
            List<string> ingredientNames = _context.Ingredients
                .Where(i => ingredientIds.Contains(i.IngredientId))
                .OrderBy(i => i.Name)
                .Select(i => i.Name)
                .ToList();
            return _context.Cookies.Where(ci => ci.CookieId == id)
                .Select(c => new CookieDetail
                {
                    CookieId = c.CookieId,
                    Name = c.Name,
                    Weight = c.Weight,
                    Calories = c.Calories,
                    CaloriesPer100g = c.Calories / c.Weight * 100,
                    IngredientNames = ingredientNames
                }).Single();
        }
    }
}
