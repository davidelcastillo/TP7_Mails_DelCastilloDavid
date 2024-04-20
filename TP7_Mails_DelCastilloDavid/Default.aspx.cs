using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace TP7_Mails_DelCastilloDavid
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fromMail = "xiondelca@gmail.com";
            string fromPasswrd = "jcpamkqnkgbfpkqq";

            MailMessage msj = new MailMessage();
            msj.From = new MailAddress(fromMail);
            msj.To.Add(new MailAddress(TxtTo.Text));
            msj.Body = TxtBody.Text;
            msj.Subject = TxtSubject.Text;
            msj.IsBodyHtml = false;

            var smtpClient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential(fromMail, fromPasswrd),
                EnableSsl = true
            };

            smtpClient.Send(msj);

            Label1.Visible = true;

        }
    }
}