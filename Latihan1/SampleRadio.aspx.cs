using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latihan1
{
    public partial class SampleRadio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdBahasa_CheckedChanged(object sender, EventArgs e)
        {
            string hasil = "";
            if (rdCSharp.Checked)
            {
                hasil = "Anda memilih bahasa C# ";
            }
            else if (rdVB.Checked)
            {
                hasil = "Anda memilih bahasa VB";
            }
            else
            {
                hasil = "Anda memilih java";
            }

            lblHasil.Text = hasil;
        }

        protected void rdIDE_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblHasil.Text = "Anda memilih :" + rdIDE.SelectedValue;
        }
    }
}