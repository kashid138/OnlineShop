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
    public class SupplierProductMapController : Controller
    {
        private princeshopEntities db = new princeshopEntities();

        // GET: SupplierProductMap
        public ActionResult Index()
        {
            var mSupplierProductMaps = db.MSupplierProductMaps.Include(m => m.MProduct).Include(m => m.MSupplier);
            return View(mSupplierProductMaps.ToList());
        }

        // GET: SupplierProductMap/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MSupplierProductMap mSupplierProductMap = db.MSupplierProductMaps.Find(id);
            if (mSupplierProductMap == null)
            {
                return HttpNotFound();
            }
            return View(mSupplierProductMap);
        }

        // GET: SupplierProductMap/Create
        public ActionResult Create()
        {
            ViewBag.MP_id = new SelectList(db.MProducts, "MP_id", "ProductName");
            ViewBag.MS_id = new SelectList(db.MSuppliers, "MS_id", "SupplierName");
            return View();
        }

        // POST: SupplierProductMap/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "nmap_id,MS_id,MP_id")] MSupplierProductMap mSupplierProductMap)
        {
            if (ModelState.IsValid)
            {
                db.MSupplierProductMaps.Add(mSupplierProductMap);
                db.SaveChanges();
                TempData["Message"] = "Supplier -Product Mapped Successfully";
                return RedirectToAction("Index");
            }

            ViewBag.MP_id = new SelectList(db.MProducts, "MP_id", "ProductName", mSupplierProductMap.MP_id);
            ViewBag.MS_id = new SelectList(db.MSuppliers, "MS_id", "SupplierName", mSupplierProductMap.MS_id);
            return View(mSupplierProductMap);
        }

        // GET: SupplierProductMap/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MSupplierProductMap mSupplierProductMap = db.MSupplierProductMaps.Find(id);
            if (mSupplierProductMap == null)
            {
                return HttpNotFound();
            }
            ViewBag.MP_id = new SelectList(db.MProducts, "MP_id", "ProductName", mSupplierProductMap.MP_id);
            ViewBag.MS_id = new SelectList(db.MSuppliers, "MS_id", "SupplierName", mSupplierProductMap.MS_id);
            return View(mSupplierProductMap);
        }

        // POST: SupplierProductMap/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "nmap_id,MS_id,MP_id")] MSupplierProductMap mSupplierProductMap)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mSupplierProductMap).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Message"] = "Supplier -Product Mapped Successfully";
                return RedirectToAction("Index");
            }
            ViewBag.MP_id = new SelectList(db.MProducts, "MP_id", "ProductName", mSupplierProductMap.MP_id);
            ViewBag.MS_id = new SelectList(db.MSuppliers, "MS_id", "SupplierName", mSupplierProductMap.MS_id);
            return View(mSupplierProductMap);
        }

        // GET: SupplierProductMap/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MSupplierProductMap mSupplierProductMap = db.MSupplierProductMaps.Find(id);
            if (mSupplierProductMap == null)
            {
                return HttpNotFound();
            }
            return View(mSupplierProductMap);
        }

        // POST: SupplierProductMap/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MSupplierProductMap mSupplierProductMap = db.MSupplierProductMaps.Find(id);
            db.MSupplierProductMaps.Remove(mSupplierProductMap);
            db.SaveChanges();
            TempData["Message"] = "Supplier -Product Deleted Successfully";
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
    }
}
