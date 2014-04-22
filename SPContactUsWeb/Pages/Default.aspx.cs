using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;

namespace SPContactUsWeb.Pages
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // The following code gets the client context and Title property by using TokenHelper.
            // To access other properties, you may need to request permissions on the host web.

            //var contextToken = TokenHelper.GetContextTokenFromRequest(Page.Request);
            //var hostWeb = Page.Request["SPHostUrl"];

            //using (var clientContext = TokenHelper.GetClientContextWithContextToken(hostWeb, contextToken, Request.Url.Authority))
            //{
            //    clientContext.Load(clientContext.Web, web => web.Title);
            //    clientContext.ExecuteQuery();
            //    Response.Write(clientContext.Web.Title);
            //}
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            var sendFromAddress = ConfigurationManager.AppSettings["sendEmailFromAddress"] ?? string.Empty;
            var sendFromName = ConfigurationManager.AppSettings["sendEmailFromName"] ?? string.Empty;
            var mailTo = new MailAddress(sendFromAddress);
            var mailFrom = new MailAddress(sendFromAddress, sendFromName);
            MailMessage mm = new MailMessage(mailFrom, mailTo);

            mm.Subject = "Contact Electromorph - " + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();
            mm.Body = "<br /><br />Email: " + txtEmail.Text + "<br />" + txtBody.Text;
            if (FileUploadControl.HasFile)
            {
                string FileName = System.IO.Path.GetFileName(FileUploadControl.PostedFile.FileName);
                mm.Attachments.Add(new Attachment(FileUploadControl.PostedFile.InputStream, FileName));
            }
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.office365.com";
            smtp.EnableSsl = true;
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = ConfigurationManager.AppSettings["sendEmailFromAddress"] ?? string.Empty;
            NetworkCred.Password = ConfigurationManager.AppSettings["sendEmailPassword"] ?? string.Empty;
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            pnlSendEmail.Visible = false; 
            try
            {
                smtp.Send(mm);
                pnlEmailSent.Visible = true;
            }
            catch
            {
                pnlEmailFailed.Visible = true;
            } 
        }
    }
}