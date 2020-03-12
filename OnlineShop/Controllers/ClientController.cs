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
    public class ClientController : Controller
    {
        private princeshopEntities db = new princeshopEntities();

        // GET: Client
        public ActionResult Index()
        {
            var mclients = db.Mclients.Include(m => m.MUser);
            return View(mclients.ToList());
        }

        // GET: Client/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Mclient mclient = db.Mclients.Find(id);
            if (mclient == null)
            {
                return HttpNotFound();
            }
            return View(mclient);
        }

        // GET: Client/Create
        public ActionResult Create()
        {
            ViewBag.MU_id = new SelectList(db.MUsers, "MU_id", "UserName");
            return View();
        }

        // POST: Client/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MC_id,MU_id,CustomerFname,CustoemrLname,ContactNumber,AlternateNumber,PermanentAddress1,PerrmanentAddress2,PermanentAddress3,Staus")] Mclient mclient)
        {
            mclient.MU_id = Convert.ToInt32(Session["UserID"].ToString());
            mclient.Staus = true;
            if (ModelState.IsValid)
            {
                db.Mclients.Add(mclient);
                db.SaveChanges();
                TempData["Message"] = "Account Created Successfully";
                return RedirectToAction("Index", "Home");
            }

            ViewBag.MU_id = new SelectList(db.MUsers, "MU_id", "UserName", mclient.MU_id);
            return View(mclient);
        }

        // GET: Client/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            List<Mclient> user = new List<Mclient>();
            user = (from c in db.Mclients where c.MU_id==id select c).ToList();

            Mclient mclient = db.Mclients.Find(user[0].MC_id);

            if (mclient == null)
            {
                return HttpNotFound();
            }
            ViewBag.MU_id = new SelectList(db.MUsers, "MU_id", "UserName", mclient.MU_id);
            return View(mclient);
        }

        // POST: Client/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MC_id,MU_id,CustomerFname,CustoemrLname,ContactNumber,AlternateNumber,PermanentAddress1,PerrmanentAddress2,PermanentAddress3,Staus")] Mclient mclient)
        {
            if (ModelState.IsValid)
            {
                mclient.MU_id = Convert.ToInt32(Session["UserID"].ToString());
                mclient.Staus = true;
                db.Entry(mclient).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Message"] = "Account Edited Successfully";
                return RedirectToAction("Index","Home");
            }
            ViewBag.MU_id = new SelectList(db.MUsers, "MU_id", "UserName", mclient.MU_id);
            return View(mclient);
        }

        // GET: Client/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Mclient mclient = db.Mclients.Find(id);
            if (mclient == null)
            {
                return HttpNotFound();
            }
            return View(mclient);
        }

        // POST: Client/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Mclient mclient = db.Mclients.Find(id);
            db.Mclients.Remove(mclient);
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
