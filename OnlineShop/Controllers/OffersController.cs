using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;
using System.IO;

namespace OnlineShop.Controllers
{
    public class OffersController : Controller
    {
        private princeshopEntities db = new princeshopEntities();
        // GET: Offers
        public ActionResult Index()
        {
            var mProducts = db.MProducts.Include(m => m.MBrand).Include(m => m.MProductType);
            return View(mProducts.ToList());
        }
    }
}