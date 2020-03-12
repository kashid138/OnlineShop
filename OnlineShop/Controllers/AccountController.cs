using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;
using System.Net.Mime;

namespace OnlineShop.Controllers
{
    public class AccountController : Controller
    {
        private princeshopEntities db = new princeshopEntities();
        string connectionString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        // GET: Account
        public ActionResult Index()
        {
            var mUsers = db.MUsers.Include(m => m.MUserType);
            return View(mUsers.ToList());
        }

        // GET: Account/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MUser mUser = db.MUsers.Find(id);
            if (mUser == null)
            {
                return HttpNotFound();
            }
            return View(mUser);
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login([Bind(Include = "UserEmail,UserPwd")] MUser mUser)
        {
            //if (ModelState.IsValid)
            {
                try
                {
                    int id = 0;
                    int type = 0;
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        SqlCommand cmd = new SqlCommand("SP_Login", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Input_LoginId", mUser.UserEmail);
                        cmd.Parameters.AddWithValue("@Input_LoginPass", mUser.UserPwd);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();
                        while (rdr.Read())
                        {
                            Session["UserID"] = rdr["MU_id"].ToString();
                            id = Convert.ToInt32(rdr["MU_id"].ToString());
                            Session["UserEmail"] = rdr["UserEmail"].ToString();
                            Session["UserType"] = rdr["MUT_id"].ToString();
                            type = Convert.ToInt32(rdr["MUT_id"].ToString());
                        }
                        if (rdr.HasRows == false)
                        {
                            ViewBag.Message = "Credentials Invalid";
                        }
                        else
                        {
                            List<Mclient> user = new List<Mclient>();
                            user = (from c in db.Mclients where c.MU_id.Equals(id) select c).ToList();
                            if (user.Count == 0 && type == 2)
                            {
                                return RedirectToActionPermanent("Create", "Client");
                            }
                            else
                            {
                                return RedirectToActionPermanent("Index", "Home");
                            }
                        }
                        con.Close();
                    }
                }
                catch (Exception ex)
                {
                }
            }

            ViewBag.MUT_id = new SelectList(db.MUserTypes, "MUT_id", "UserTypeName", mUser.MUT_id);
            return View(mUser);
        }
        // GET: Account/Create
        public ActionResult SignUp()
        {
            ViewBag.MUT_id = new SelectList(db.MUserTypes, "MUT_id", "UserTypeName");
            return View();
        }

        // POST: Account/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SignUp([Bind(Include = "UserName,UserEmail,UserPwd")] MUser mUser)
        {
            mUser.MUT_id = 2;
            mUser.Status = true;
            mUser.JoinDate = DateTime.Now.Date.ToString();
            if (ModelState.IsValid)
            {
                db.MUsers.Add(mUser);
                db.SaveChanges();
                TempData["Message"] = "Account Opened Successfully";
                string a = Send(mUser.UserEmail, "Welcome To The Family", "Thank you for registering with us" + mUser.UserName.ToString() + " Feel Free to Shop " + "Your can pay using Online Debit/Credit Card or COD", "");
                if (a == "1")
                {
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    return RedirectToAction("Failure");
                }
            }

            ViewBag.MUT_id = new SelectList(db.MUserTypes, "MUT_id", "UserTypeName", mUser.MUT_id);
            return View(mUser);
        }

        // GET: Account/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MUser mUser = db.MUsers.Find(id);
            if (mUser == null)
            {
                return HttpNotFound();
            }
            ViewBag.MUT_id = new SelectList(db.MUserTypes, "MUT_id", "UserTypeName", mUser.MUT_id);
            return View(mUser);
        }

        // POST: Account/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MU_id,UserName,UserEmail,UserPwd,MUT_id,JoinDate,Status")] MUser mUser)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mUser).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MUT_id = new SelectList(db.MUserTypes, "MUT_id", "UserTypeName", mUser.MUT_id);
            return View(mUser);
        }

        // GET: Account/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MUser mUser = db.MUsers.Find(id);
            if (mUser == null)
            {
                return HttpNotFound();
            }
            return View(mUser);
        }

        // POST: Account/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MUser mUser = db.MUsers.Find(id);
            db.MUsers.Remove(mUser);
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

        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }

        public string Send(string vTo, string vSubject, string vBody, string AttachFileName)
        {
            string location1;
            MailMessage m = new MailMessage();
            MailMessage MyMail = new MailMessage();
            SmtpClient sc = new SmtpClient();

            try
            {
                string sEmail = "ykashid@gmail.com";
                string pass = "dashberlin";
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
                sc.Credentials = new System.Net.NetworkCredential(sEmail, pass);
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
