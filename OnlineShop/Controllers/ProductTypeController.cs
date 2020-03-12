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
    public class ProductTypeController : Controller
    {
        private princeshopEntities db = new princeshopEntities();

        // GET: ProductType
        public ActionResult Index()
        {
            return View(db.MProductTypes.ToList());
        }

        // GET: ProductType/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MProductType mProductType = db.MProductTypes.Find(id);
            if (mProductType == null)
            {
                return HttpNotFound();
            }
            return View(mProductType);
        }

        // GET: ProductType/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ProductType/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MPT_id,ProductTypeName,Status")] MProductType mProductType)
        {
            if (ModelState.IsValid)
            {
                db.MProductTypes.Add(mProductType);
                db.SaveChanges();
                TempData["Message"] = "Product Type Added Successfully";
                return RedirectToAction("Index");
            }

            return View(mProductType);
        }

        // GET: ProductType/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MProductType mProductType = db.MProductTypes.Find(id);
            if (mProductType == null)
            {
                return HttpNotFound();
            }
            return View(mProductType);
        }

        // POST: ProductType/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MPT_id,ProductTypeName,Status")] MProductType mProductType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mProductType).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Message"] = "Product Type Edited Successfully";
                return RedirectToAction("Index");
            }
            return View(mProductType);
        }

        // GET: ProductType/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MProductType mProductType = db.MProductTypes.Find(id);
            if (mProductType == null)
            {
                return HttpNotFound();
            }
            return View(mProductType);
        }

        // POST: ProductType/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MProductType mProductType = db.MProductTypes.Find(id);
            db.MProductTypes.Remove(mProductType);
            db.SaveChanges();
            TempData["Message"] = "Product Type Deleted Successfully";
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
