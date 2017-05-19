
using SampleMasterPage.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleMasterPage
{
    public partial class SampleSqlParameter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                gvKategori.EmptyDataText = "Data tidak ditemukan...";
                gvBuku.EmptyDataText = "Data tidak ditemukan...";
            }

            if (Session["pengguna"] == null)
                Response.Redirect("~/LoginForm");
            else if (((Pengguna)Session["pengguna"]).Aturan != "admin")
                Response.Redirect("~/LoginForm");            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            upKategori.Update();
        }

        protected void btnSearchJudul_Click(object sender, EventArgs e)
        {
            upBuku.Update();
        }

        protected void ddKategori_SelectedIndexChanged(object sender, EventArgs e)
        {
            upBeritaDropdown.Update();
        }
    }
}