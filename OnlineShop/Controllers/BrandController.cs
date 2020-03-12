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
    public class BrandController : Controller
    {
        private princeshopEntities db = new princeshopEntities();

        // GET: Brand
        public ActionResult Index()
        {
            return View(db.MBrands.ToList());
        }

        // GET: Brand/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MBrand mBrand = db.MBrands.Find(id);
            if (mBrand == null)
            {
                return HttpNotFound();
            }
            return View(mBrand);
        }

        // GET: Brand/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Brand/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MB_id,BrandTypeName,BrandImageDesc,Status")] MBrand mBrand)
        {
            if (ModelState.IsValid)
            {
                db.MBrands.Add(mBrand);
                db.SaveChanges();
                TempData["Message"] = "Brand Added Successfully";
                return RedirectToAction("Index");
            }

            return View(mBrand);
        }

        // GET: Brand/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MBrand mBrand = db.MBrands.Find(id);
            if (mBrand == null)
            {
                return HttpNotFound();
            }
            return View(mBrand);
        }

        // POST: Brand/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MB_id,BrandTypeName,BrandImageDesc,Status")] MBrand mBrand)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mBrand).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Message"] = "Brand Edited Successfully";
                return RedirectToAction("Index");
            }
            return View(mBrand);
        }

        // GET: Brand/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MBrand mBrand = db.MBrands.Find(id);
            if (mBrand == null)
            {
                return HttpNotFound();
            }
            return View(mBrand);
        }

        // POST: Brand/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MBrand mBrand = db.MBrands.Find(id);
            db.MBrands.Remove(mBrand);
            db.SaveChanges();
            TempData["Message"] = "Brand Deleted Successfully";
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

        [HttpPost]
        public ActionResult UploadFiles()
        {
            if (Request.Files.Count > 0)
            {
                string fname = "";
                string upload = "";
                try
                {
                    HttpFileCollectionBase files = Request.Files;
                    for (int i = 0; i < files.Count; i++)
                    {
                        HttpPostedFileBase file = files[i];
                        if (Request.Browser.Browser.ToUpper() == "IE" || Request.Browser.Browser.ToUpper() == "INTERNETEXPLORER")
                        {
                            string[] testfiles = file.FileName.Split(new char[] { '\\' });
                            fname = testfiles[testfiles.Length - 1];
                        }
                        else
                        {
                            fname = file.FileName;
                        }
                        upload = "BRAND" + fname;
                        fname = Path.Combine(Server.MapPath("~/Uploads/"), "BRAND" + fname);
                        file.SaveAs(fname);
                    }
                    return Json(upload);
                }
                catch (Exception ex)
                {
                    return Json("Error occurred. Error details: " + ex.Message);
                }
            }
            else
            {
                return Json("No files selected.");
            }
        }
    }
}
