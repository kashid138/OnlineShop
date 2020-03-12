
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;

namespace OnlineShop.Controllers
{
    public class CartController : Controller
    {
        private princeshopEntities db = new princeshopEntities();

        // GET: Cart
        public ActionResult Index()
        {
            int id = Convert.ToInt32(Session["UserID"].ToString());
            List<TCart> tc = new List<TCart>();
            tc = (from c in db.TCarts.Where(a => a.nUserId == id) select c).ToList();
            return View(tc);
        }

        // GET: Cart/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TCart tCart = db.TCarts.Find(id);
            if (tCart == null)
            {
                return HttpNotFound();
            }
            return View(tCart);
        }

        // GET: Cart/Create
        public ActionResult Create()
        {
            ViewBag.nProductId = new SelectList(db.MProducts, "MP_id", "ProductName");
            ViewBag.nUserId = new SelectList(db.MUsers, "MU_id", "UserName");
            return View();
        }

        // POST: Cart/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(int id)
        {
            TCart tCart = new TCart();
            tCart.nCartId = 0;
            tCart.nProductId = id;
            tCart.nUserId = Convert.ToInt32(Session["UserID"].ToString());
            if (ModelState.IsValid)
            {
                db.TCarts.Add(tCart);
                db.SaveChanges();
                TempData["Message"] = "Product added successfully in cart";
                return RedirectToAction("Index", "Home");
            }

            ViewBag.nProductId = new SelectList(db.MProducts, "MP_id", "ProductName", tCart.nProductId);
            ViewBag.nUserId = new SelectList(db.MUsers, "MU_id", "UserName", tCart.nUserId);
            return View(tCart);
        }

        // GET: Cart/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TCart tCart = db.TCarts.Find(id);
            if (tCart == null)
            {
                return HttpNotFound();
            }
            ViewBag.nProductId = new SelectList(db.MProducts, "MP_id", "ProductName", tCart.nProductId);
            ViewBag.nUserId = new SelectList(db.MUsers, "MU_id", "UserName", tCart.nUserId);
            return View(tCart);
        }

        // POST: Cart/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "nCartId,nUserId,nProductId,bstatus")] TCart tCart)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tCart).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.nProductId = new SelectList(db.MProducts, "MP_id", "ProductName", tCart.nProductId);
            ViewBag.nUserId = new SelectList(db.MUsers, "MU_id", "UserName", tCart.nUserId);
            return View(tCart);
        }

        // GET: Cart/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TCart tCart = db.TCarts.Find(id);
            if (tCart == null)
            {
                return HttpNotFound();
            }
            return View(tCart);
        }

        // POST: Cart/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TCart tCart = db.TCarts.Find(id);
            db.TCarts.Remove(tCart);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        public ActionResult AddCart(int id)
        {
            TCart tCart = new TCart();
            tCart.nCartId = 0;
            tCart.nProductId = id;
            tCart.nUserId = Convert.ToInt32(Session["UserID"].ToString());
            if (ModelState.IsValid)
            {
                db.TCarts.Add(tCart);
                db.SaveChanges();
                TempData["Message"] = "Product added successfully in cart";
                return RedirectToAction("Index", "Home");
            }
            return null;
            //ViewBag.nProductId = new SelectList(db.MProducts, "MP_id", "ProductName", tCart.nProductId);
            //ViewBag.nUserId = new SelectList(db.MUsers, "MU_id", "UserName", tCart.nUserId);
            //return RedirectToAction("Index", "Home");
        }
    }
}
