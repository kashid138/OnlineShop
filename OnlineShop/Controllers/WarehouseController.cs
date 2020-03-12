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
    public class WarehouseController : Controller
    {
        private princeshopEntities db = new princeshopEntities();

        // GET: Warehouse
        public ActionResult Index()
        {
            var mWarehouses = db.MWarehouses.Include(m => m.Mcity).Include(m => m.Mstate);
            return View(mWarehouses.ToList());
        }

        // GET: Warehouse/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MWarehouse mWarehouse = db.MWarehouses.Find(id);
            if (mWarehouse == null)
            {
                return HttpNotFound();
            }
            return View(mWarehouse);
        }

        // GET: Warehouse/Create
        public ActionResult Create()
        {
            ViewBag.nCityID = new SelectList(db.Mcities, "nCityID", "sCity");
            ViewBag.nStateID = new SelectList(db.Mstates, "nStateID", "sState");
            return View();
        }

        // POST: Warehouse/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MW_ID,WarehouseName,WarehouseAddress1,WarehouseAddress2,WarehouseAddress3,nCityID,nStateID,Pincode,Status")] MWarehouse mWarehouse)
        {
            if (ModelState.IsValid)
            {
                db.MWarehouses.Add(mWarehouse);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.nCityID = new SelectList(db.Mcities, "nCityID", "sCity", mWarehouse.nCityID);
            ViewBag.nStateID = new SelectList(db.Mstates, "nStateID", "sState", mWarehouse.nStateID);
            return View(mWarehouse);
        }

        // GET: Warehouse/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MWarehouse mWarehouse = db.MWarehouses.Find(id);
            if (mWarehouse == null)
            {
                return HttpNotFound();
            }
            ViewBag.nCityID = new SelectList(db.Mcities, "nCityID", "sCity", mWarehouse.nCityID);
            ViewBag.nStateID = new SelectList(db.Mstates, "nStateID", "sState", mWarehouse.nStateID);
            return View(mWarehouse);
        }

        // POST: Warehouse/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MW_ID,WarehouseName,WarehouseAddress1,WarehouseAddress2,WarehouseAddress3,nCityID,nStateID,Pincode,Status")] MWarehouse mWarehouse)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mWarehouse).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.nCityID = new SelectList(db.Mcities, "nCityID", "sCity", mWarehouse.nCityID);
            ViewBag.nStateID = new SelectList(db.Mstates, "nStateID", "sState", mWarehouse.nStateID);
            return View(mWarehouse);
        }

        // GET: Warehouse/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MWarehouse mWarehouse = db.MWarehouses.Find(id);
            if (mWarehouse == null)
            {
                return HttpNotFound();
            }
            return View(mWarehouse);
        }

        // POST: Warehouse/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MWarehouse mWarehouse = db.MWarehouses.Find(id);
            db.MWarehouses.Remove(mWarehouse);
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
    }
}
