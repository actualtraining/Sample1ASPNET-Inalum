using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latihan1
{
    public partial class ContohViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCount_Click(object sender, EventArgs e)
        {
            int nilai = Convert.ToInt32(lblNilai.Text);
            nilai += 1;
            lblNilai.Text = nilai.ToString();
        }
    }
}