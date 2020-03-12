using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.IO;
using System.Net.Mime;

namespace OnlineShop.Controllers
{
    public class OrdersController : Controller
    {
        private princeshopEntities db = new princeshopEntities();
        string connectionString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        // GET: Orders
        public ActionResult Index()
        {
            var tOrders = db.TOrders.Include(t => t.MPayStatu).Include(t => t.MProduct).Include(t => t.MUser);
            return View(tOrders.ToList());
        }

        // GET: Orders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TOrder tOrder = db.TOrders.Find(id);
            if (tOrder == null)
            {
                return HttpNotFound();
            }
            return View(tOrder);
        }

        // GET: Orders/Create
        public ActionResult Create(string id)
        {
            ViewBag.nPaytype = new SelectList(db.MPayStatus, "nPaymentTypeID", "sPaymentType");
            ViewBag.nProdutID = new SelectList(db.MProducts, "MP_id", "ProductName");
            ViewBag.nUserID = new SelectList(db.MUsers, "MU_id", "UserName");
            try
            {
                TOrder torder = new TOrder();
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("SP_OrderProduct", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", id);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        torder.nProdutID = Convert.ToInt32(id);
                        Session["ProductID"] = id;
                        ViewBag.ProductName = rdr["ProductName"].ToString();
                        Session["ProductName"] = rdr["ProductName"].ToString();
                        ViewBag.ProductDescription = rdr["ProductDescription"].ToString();
                        Session["ProductDescription"] = rdr["ProductDescription"].ToString();
                        torder.nAmount = Convert.ToDecimal(rdr["ProductPrice"].ToString());
                        Session["ProductPrice"] = rdr["ProductPrice"].ToString();
                        double a = Convert.ToDouble(rdr["ProductPrice"].ToString());
                        torder.nTaxAmount = Convert.ToDecimal(a * 0.18);
                        Session["Tax"] = a * 0.18;
                        ViewBag.ProductImageDecs = rdr["ProductImageDecs"].ToString();
                        if (Session["UserID"] == null)
                        {
                            torder.nUserID = 0;
                        }
                        else
                        {
                            torder.nUserID = Convert.ToInt32(Session["UserID"].ToString());
                        }
                        torder.dtCancel = null;
                        torder.dtDeliveryDate = DateTime.Now.AddDays(8);
                        torder.dtTrans = DateTime.Now;
                        torder.bStatus = true;
                        torder.nDeliveryCharges = 0;
                        torder.nQty = 0;
                        torder.nTId = 0;
                        var tOrders = torder;
                        return View(tOrders);
                    }
                    con.Close();
                    return View();
                }
            }
            catch (Exception ex)
            {
            }
            return null;
        }

        // POST: Orders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "nTId,sTNo,dtTrans,nUserID,nProdutID,nQty,nAmount,nTaxAmount,nDeliveryCharges,dtDeliveryDate,nPaytype,dtCancel,sCancel,bStatus")] TOrder torder)
        {
            if (Session["UserID"] == null)
            {
                return RedirectToAction("Login", "Account");
            }
            else
            {
                Random randm = new Random();
                int rand_month = randm.Next(1, 13);
                int rand_dice = randm.Next(1, 7);
                int rand_card_value = randm.Next(52);
                torder.nTId = 0;
                torder.sTNo = DateTime.Now.ToString() + rand_card_value;
                torder.dtTrans = DateTime.Now.Date;
                torder.nUserID = Convert.ToInt32(Session["UserID"].ToString());
                torder.nProdutID = Convert.ToInt32(Session["ProductID"].ToString());
                torder.nAmount = Convert.ToDecimal(Session["ProductPrice"].ToString()) * torder.nQty;
                Session["ProductAmount"] = torder.nAmount;
                Session["Qty"] = torder.nQty;
                torder.nTaxAmount = Convert.ToDecimal(Session["Tax"].ToString());
                torder.nDeliveryCharges = 0;
                torder.dtCancel = null;
                torder.dtDeliveryDate = DateTime.Now.AddDays(8);
                torder.bStatus = true;
                Session["OrderNo"] = torder.sTNo;
                if (ModelState.IsValid)
                {
                    db.TOrders.Add(torder);
                    db.SaveChanges();
                    if (torder.nPaytype == 2)
                    {
                        return RedirectToAction("OnlinePayment");
                    }
                    else
                    {
                        try
                        {
                            using (SqlConnection con = new SqlConnection(connectionString))
                            {
                                SqlCommand cmd = new SqlCommand("SP_UpdateQTY", con);
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.AddWithValue("@ID", Session["OrderNo"].ToString());
                                cmd.Parameters.AddWithValue("@QTY", Session["Qty"].ToString());
                                cmd.Parameters.AddWithValue("@UID", Session["UserID"].ToString());
                                con.Open();
                                int r = cmd.ExecuteNonQuery();
                                con.Close();
                                string a = Send(Session["UserEmail"].ToString(), "Order Confirmation", "Your Order for Item" + Session["ProductName"].ToString() + " is Confirmed with Order No." + Session["OrderNo"].ToString() + ". Your payment is pending with Amount " + Session["ProductAmount"].ToString() + " including Tax Amount" + Session["Tax"].ToString(), "");
                                if (a == "1")
                                {
                                    return RedirectToAction("Success");
                                }
                                else
                                {
                                    return RedirectToAction("Failure");
                                }

                            }
                        }
                        catch (Exception ex)
                        {
                            return RedirectToAction("Failure");
                        }
                    }

                }

            }

            ViewBag.nPaytype = new SelectList(db.MPayStatus, "nPaymentTypeID", "sPaymentType", torder.nPaytype);
            ViewBag.nProdutID = new SelectList(db.MProducts, "MP_id", "ProductName", torder.nProdutID);
            ViewBag.nUserID = new SelectList(db.MUsers, "MU_id", "UserName", torder.nUserID);
            return View(torder);
        }

        // GET: Orders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TOrder tOrder = db.TOrders.Find(id);
            if (tOrder == null)
            {
                return HttpNotFound();
            }
            ViewBag.nPaytype = new SelectList(db.MPayStatus, "nPaymentTypeID", "sPaymentType", tOrder.nPaytype);
            ViewBag.nProdutID = new SelectList(db.MProducts, "MP_id", "ProductName", tOrder.nProdutID);
            ViewBag.nUserID = new SelectList(db.MUsers, "MU_id", "UserName", tOrder.nUserID);
            return View(tOrder);
        }

        // POST: Orders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "nTId,sTNo,dtTrans,nUserID,nProdutID,nQty,nAmount,nTaxAmount,nDeliveryCharges,dtDeliveryDate,nPaytype,dtCancel,sCancel,bStatus")] TOrder tOrder)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tOrder).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.nPaytype = new SelectList(db.MPayStatus, "nPaymentTypeID", "sPaymentType", tOrder.nPaytype);
            ViewBag.nProdutID = new SelectList(db.MProducts, "MP_id", "ProductName", tOrder.nProdutID);
            ViewBag.nUserID = new SelectList(db.MUsers, "MU_id", "UserName", tOrder.nUserID);
            return View(tOrder);
        }

        // GET: Orders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TOrder tOrder = db.TOrders.Find(id);
            if (tOrder == null)
            {
                return HttpNotFound();
            }
            return View(tOrder);
        }

        // POST: Orders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TOrder tOrder = db.TOrders.Find(id);
            db.TOrders.Remove(tOrder);
            db.SaveChanges();

            List<MUser> muser = new List<MUser>();
            muser = (from c in db.MUsers where c.MU_id == (tOrder.nUserID) select c).ToList();

            List<MProduct> mproduct = new List<MProduct>();
            mproduct = (from c in db.MProducts where c.MP_id == (tOrder.nProdutID) select c).ToList();
            string a = Send(muser[0].UserEmail, "Order Cancel Confirmation", "Your Order for Item" + mproduct[0].ProductName + " is Cancelled with Order No." + tOrder.sTNo, "");
            if (a == "1")
            {
                TempData["Message"] = "Order with No." + tOrder.sTNo + " is cancelled Successfully";
                return RedirectToAction("index");
            }
            else
            {
                TempData["Message"] = "Error While Cancelling the Order " + a;
                return RedirectToAction("index");
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        public ActionResult Success()
        {
            return View();
        }
        public ActionResult Failure()
        {
            return View();
        }
        public ActionResult OnlinePayment()
        {
            return View();
        }

        [HttpPost]
        public ActionResult OnlinePayment(FormCollection fc)
        {
            string card = "4123456700892349";
            string month = "12";
            string year = "22";
            string cvv = "235";
            string name = "Yogesh Kashid";

            if (card == fc["txtCardNo"].ToString() && month == fc["txtMonth"].ToString() && year == fc["txtYear"].ToString() && cvv == fc["txtCVV"].ToString() && name == fc["txtCardHolder"].ToString())
            {
                try
                {
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        SqlCommand cmd = new SqlCommand("SP_UpdateQTY", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ID", Session["OrderNo"].ToString());
                        cmd.Parameters.AddWithValue("@QTY", Session["Qty"].ToString());
                        cmd.Parameters.AddWithValue("@UID", Session["UserID"].ToString());
                        con.Open();
                        int r = cmd.ExecuteNonQuery();
                        con.Close();
                        string a = Send(Session["UserEmail"].ToString(), "Order Confirmation", "Your Order for Item " + Session["ProductName"].ToString() + " is Confirmed with Order No." + Session["OrderNo"].ToString() + ". Your payment is received for Amount " + Session["ProductAmount"].ToString() + " including Tax Amount" + Session["Tax"].ToString(), "");
                        if (a == "1")
                        {
                            return RedirectToAction("Success");
                        }
                        else
                        {
                            return RedirectToAction("Failure");
                        }
                    }
                }
                catch (Exception ex)
                {
                    return RedirectToAction("Failure");
                }
            }
            else
            {
                ViewBag.Message = "Enter Valid Card Details";
            }
            return View();
        }

        public string Send(string vTo, string vSubject, string vBody, string AttachFileName)
        {
            string location1;
            MailMessage m = new MailMessage();
            MailMessage MyMail = new MailMessage();
            SmtpClient sc = new SmtpClient();

            try
            {
                string sEmail = "mcastudymaterialfree@gmail.com";
                string pass = "mcastudy@12";
                m.From = new MailAddress(sEmail, "Online Prince Shop");
                m.To.Add(new MailAddress(vTo, vTo));
                m.Subject = vSubject;
                m.IsBodyHtml = true;
                m.Body = vBody;

                if (AttachFileName != string.Empty)
                {
                    location1 = Path.Combine(Server.MapPath("~/policy"), AttachFileName);
                    //FileUpload1.SaveAs(location1);

                    FileStream fs = new FileStream(location1,
                                       FileMode.Open, FileAccess.Read);
                    Attachment a = new Attachment(fs, AttachFileName,
                                       MediaTypeNames.Application.Octet);
                    m.Attachments.Add(a);
                    m.IsBodyHtml = true;
                }
                sc.Host = "smtp.gmail.com";
                sc.Port = 587;
                sc.Credentials = new
                System.Net.NetworkCredential(sEmail, pass);
                sc.EnableSsl = true;
                sc.Send(m);
                return "1";
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            finally
            {
            }
        }
    }
}
