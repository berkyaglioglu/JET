using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql;
using MySql.Data.MySqlClient;

namespace CookieAPI.Model
{
    public class CookieContext : DbContext
    {

        public CookieContext (DbContextOptions<CookieContext> options) : base(options)
        {

        }
        
        public DbSet<Cookie> Cookies { get; set; }
        public DbSet<Ingredient> Ingredients { get; set; }
        public DbSet<CookieIngredient> CookieIngredients { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            
            modelBuilder.Entity<Cookie>().ToTable("Cookies");
            modelBuilder.Entity<Ingredient>().ToTable("Ingredients");
            modelBuilder.Entity<CookieIngredient>().ToTable("CookieIngredients");
            
            modelBuilder.Entity<Cookie>().HasKey(c => c.CookieId);
            modelBuilder.Entity<Ingredient>().HasKey(i => i.IngredientId);
            modelBuilder.Entity<CookieIngredient>().HasKey(ci => new { ci.CookieId, ci.IngredientId });
            
        }
    }
    
}
