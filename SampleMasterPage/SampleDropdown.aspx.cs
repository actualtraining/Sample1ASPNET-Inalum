using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleMasterPage
{
    public partial class SampleDropdown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<string> listSport = new List<string>();
                listSport.Add("Basket");
                listSport.Add("Volley");
                listSport.Add("Tenis Meja");
                listSport.Add("Badminton");
                listSport.Add("Cycling");

                ddSport.DataSource = listSport;
                ddSport.DataBind();

                List<string> listCulinary = new List<string>() { "Mie Rebus", "Mie Jawa", "Gudeg", "Bakwan" };
                ddCulinary.DataSource = listCulinary;
                ddCulinary.DataBind();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblKeterangan.Text = "Sport : " + ddSport.SelectedValue + " Culinary : " + ddCulinary.SelectedValue;
        }
    }
}