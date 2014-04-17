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

            var contextToken = TokenHelper.GetContextTokenFromRequest(Page.Request);
            var hostWeb = Page.Request["SPHostUrl"];

            using (var clientContext = TokenHelper.GetClientContextWithContextToken(hostWeb, contextToken, Request.Url.Authority))
            {
                clientContext.Load(clientContext.Web, web => web.Title);
                clientContext.ExecuteQuery();
                Response.Write(clientContext.Web.Title);
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            var mailTo = new MailAddress(txtEmail.Text, txtName.Text);
            var mailFrom = new MailAddress(ConfigurationManager.AppSettings["sendEmailFromAddress"] ?? string.Empty, ConfigurationManager.AppSettings["sendEmailFromName"] ?? string.Empty);
            MailMessage mm = new MailMessage(mailFrom, mailTo);

            mm.Subject = txtSubject.Text;
            mm.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtBody.Text;
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
            smtp.Send(mm);
            lblMessage.Text = "Email Sent SucessFully.";
        }
    }
}