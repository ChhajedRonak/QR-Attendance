using QRCoder;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentAttendaceQRCode_V2
{

    public partial class NewSession : System.Web.UI.Page
    {

        public int count = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_date.Text = DateTime.Now.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            btn_newsession.Visible = false;
            txt_timeslot.Visible = true;
            drop_subject.Visible = true;
            lbl_time.Visible = true;
            lbl_subject.Visible = true;
            btn_generateqr.Visible = true;


            DateTime time = DateTime.Now;

            
            if(time.Hour >= 16 && time.Minute>= 00)
            {
                txt_timeslot.Text = "04:00PM-05:20PM";
            }
            else if (time.Hour >= 14 && time.Minute >= 30)
            {
                txt_timeslot.Text = "02:30PM-4:00PM";
            }
            else if (time.Hour >= 13 && time.Minute >= 00 )
            {
                txt_timeslot.Text = "01:00PM-2:30PM";
            }
            else if (time.Hour >= 12 && time.Minute >= 00)
            {
                txt_timeslot.Text = "LUNCH-BREAK";
            }
            else if (time.Hour >= 10 && time.Minute >= 30)
            {
                txt_timeslot.Text = "10:30PM-12:00PM";
            }
            else if (time.Hour >= 09 && time.Minute >= 00)
            {
                txt_timeslot.Text = "09:00PM-10:30PM";
            }
            
        }

        protected void btn_generateqr_Click(object sender, EventArgs e)
        {
            Timer1.Enabled = true;


            lbl_subject.Visible = false;
            lbl_time.Visible = false;
            txt_timeslot.Visible = false;
            btn_newsession.Visible = false;
            btn_generateqr.Visible = false;
            drop_subject.Visible = false;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            
            string code = drop_subject.SelectedItem.ToString() + " " + txt_timeslot.Text.ToString() + " " + DateTime.Now.ToShortDateString()+" " + DateTime.Now.Second;
            
            QRCodeGenerator qrcodegenerator = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrcode = qrcodegenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);

            System.Web.UI.WebControls.Image imgqrcode = new System.Web.UI.WebControls.Image();

            imgqrcode.Height = 500;
            imgqrcode.Width = 600;

            using (Bitmap bitmap = qrcode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImg = ms.ToArray();
                    imgqrcode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImg);
                }
                PHQRCode.Controls.Add(imgqrcode);
            }
        }
    }
}