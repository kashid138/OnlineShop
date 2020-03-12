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
    public class ProductController : Controller
    {
        private princeshopEntities db = new princeshopEntities();

        // GET: Product
        public ActionResult Index()
        {
            var mProducts = db.MProducts.Include(m => m.MBrand).Include(m => m.MProductType);
            return View(mProducts.ToList());
        }

        // GET: Product/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MProduct mProduct = db.MProducts.Find(id);
            if (mProduct == null)
            {
                return HttpNotFound();
            }
            return View(mProduct);
        }

        // GET: Product/Create
        public ActionResult Create()
        {
            ViewBag.MBt_id = new SelectList(db.MBrands, "MB_id", "BrandTypeName");
            ViewBag.MPT_id = new SelectList(db.MProductTypes, "MPT_id", "ProductTypeName");
            return View();
        }

        // POST: Product/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MP_id,MPT_id,MBt_id,ProductName,ProductDescription,ProductQty,MinProductQty,ProductPrice,ProductImageDecs,Status")] MProduct mProduct)
        {
            if (ModelState.IsValid)
            {
                db.MProducts.Add(mProduct);
                db.SaveChanges();
                TempData["Message"] = "Product Added Successfully";
                return RedirectToAction("Index");
            }

            ViewBag.MBt_id = new SelectList(db.MBrands, "MB_id", "BrandTypeName", mProduct.MBt_id);
            ViewBag.MPT_id = new SelectList(db.MProductTypes, "MPT_id", "ProductTypeName", mProduct.MPT_id);
            return View(mProduct);
        }

        // GET: Product/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MProduct mProduct = db.MProducts.Find(id);
            if (mProduct == null)
            {
                return HttpNotFound();
            }
            ViewBag.MBt_id = new SelectList(db.MBrands, "MB_id", "BrandTypeName", mProduct.MBt_id);
            ViewBag.MPT_id = new SelectList(db.MProductTypes, "MPT_id", "ProductTypeName", mProduct.MPT_id);
            return View(mProduct);
        }

        // POST: Product/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MP_id,MPT_id,MBt_id,ProductName,ProductDescription,ProductQty,MinProductQty,ProductPrice,ProductImageDecs,Status")] MProduct mProduct)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mProduct).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Message"] = "Product Edited Successfully";
                return RedirectToAction("Index");
            }
            ViewBag.MBt_id = new SelectList(db.MBrands, "MB_id", "BrandTypeName", mProduct.MBt_id);
            ViewBag.MPT_id = new SelectList(db.MProductTypes, "MPT_id", "ProductTypeName", mProduct.MPT_id);
            return View(mProduct);
        }

        // GET: Product/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MProduct mProduct = db.MProducts.Find(id);
            if (mProduct == null)
            {
                return HttpNotFound();
            }
            return View(mProduct);
        }

        // POST: Product/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MProduct mProduct = db.MProducts.Find(id);
            db.MProducts.Remove(mProduct);
            db.SaveChanges();
            TempData["Message"] = "Product Deleted Successfully";
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
                        upload = "PRODUCT" + fname;
                        fname = Path.Combine(Server.MapPath("~/Uploads/"), "PRODUCT" + fname);
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
