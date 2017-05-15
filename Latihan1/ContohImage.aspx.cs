using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latihan1
{
    public partial class ContohImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRandom_Click(object sender, EventArgs e)
        {
            Random objRnd = new Random();
            switch (objRnd.Next(3))
            {
                case 0:
                    imgPegawai.ImageUrl = "~/Images/1.jpg";
                    imgPegawai.AlternateText = "pic kosong";
                    break;
                case 1:
                    imgPegawai.ImageUrl = "~/Images/2.jpg";
                    imgPegawai.AlternateText = "pic kosong";
                    break;
                case 2:
                    imgPegawai.ImageUrl = "~/Images/3.jpg";
                    imgPegawai.AlternateText = "pic kosong";
                    break;
            }
        }
    }
}