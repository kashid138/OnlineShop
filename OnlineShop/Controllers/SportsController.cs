using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;
using System.IO;

namespace OnlineShop.Controllers
{
    public class SportsController : Controller
    {
        private princeshopEntities db = new princeshopEntities();
        // GET: Sports
        public ActionResult Index(string product)
        {
            var mProducts = db.MProducts.Where((m=>m.MProductType.ProductTypeName.Contains(product)));
            return View(mProducts.ToList());
        }
    }
}