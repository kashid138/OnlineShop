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
    public class UserTypeController : Controller
    {
        private princeshopEntities db = new princeshopEntities();

        // GET: UserType
        public ActionResult Index()
        {
            return View(db.MUserTypes.ToList());
        }

        // GET: UserType/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MUserType mUserType = db.MUserTypes.Find(id);
            if (mUserType == null)
            {
                return HttpNotFound();
            }
            return View(mUserType);
        }

        // GET: UserType/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: UserType/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MUT_id,UserTypeName,Status")] MUserType mUserType)
        {
            if (ModelState.IsValid)
            {
                db.MUserTypes.Add(mUserType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(mUserType);
        }

        // GET: UserType/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MUserType mUserType = db.MUserTypes.Find(id);
            if (mUserType == null)
            {
                return HttpNotFound();
            }
            return View(mUserType);
        }

        // POST: UserType/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MUT_id,UserTypeName,Status")] MUserType mUserType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mUserType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(mUserType);
        }

        // GET: UserType/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MUserType mUserType = db.MUserTypes.Find(id);
            if (mUserType == null)
            {
                return HttpNotFound();
            }
            return View(mUserType);
        }

        // POST: UserType/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MUserType mUserType = db.MUserTypes.Find(id);
            db.MUserTypes.Remove(mUserType);
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
