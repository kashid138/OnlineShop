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
    public class SupplierController : Controller
    {
        private princeshopEntities db = new princeshopEntities();

        // GET: Supplier
        public ActionResult Index()
        {
            return View(db.MSuppliers.ToList());
        }

        // GET: Supplier/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MSupplier mSupplier = db.MSuppliers.Find(id);
            if (mSupplier == null)
            {
                return HttpNotFound();
            }
            return View(mSupplier);
        }

        // GET: Supplier/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Supplier/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MS_id,SupplierName,SupplierAddress1,SupplierAddress2,SupplierAddress3,SupplierCity,Pincode,Status")] MSupplier mSupplier)
        {
            if (ModelState.IsValid)
            {
                db.MSuppliers.Add(mSupplier);
                db.SaveChanges();
                TempData["Message"] = "Supplier Added Successfully";
                return RedirectToAction("Index");
            }

            return View(mSupplier);
        }

        // GET: Supplier/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MSupplier mSupplier = db.MSuppliers.Find(id);
            if (mSupplier == null)
            {
                return HttpNotFound();
            }
            return View(mSupplier);
        }

        // POST: Supplier/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MS_id,SupplierName,SupplierAddress1,SupplierAddress2,SupplierAddress3,SupplierCity,Pincode,Status")] MSupplier mSupplier)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mSupplier).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Message"] = "Supplier Edited Successfully";
                return RedirectToAction("Index");
            }
            return View(mSupplier);
        }

        // GET: Supplier/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MSupplier mSupplier = db.MSuppliers.Find(id);
            if (mSupplier == null)
            {
                return HttpNotFound();
            }
            return View(mSupplier);
        }

        // POST: Supplier/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MSupplier mSupplier = db.MSuppliers.Find(id);
            db.MSuppliers.Remove(mSupplier);
            db.SaveChanges();
            TempData["Message"] = "Supplier Deteted Successfully";
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
