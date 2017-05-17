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
            List<string> listSport = new List<string>();
            listSport.Add("Basket");
            listSport.Add("Volley");
            listSport.Add("Tenis Meja");
            listSport.Add("Badminton");
            listSport.Add("Cycling");

            ddSport.DataSource = listSport;
            ddSport.DataBind();
        }
    }
}