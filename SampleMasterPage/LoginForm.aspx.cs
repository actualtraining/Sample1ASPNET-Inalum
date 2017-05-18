using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SampleMasterPage.DAL;

namespace SampleMasterPage
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            RegistrasiDAL regDal = new RegistrasiDAL();
            try
            {
                Pengguna objPengguna = regDal.ProsesLogin(txtUsername.Text, txtPassword.Text);
                if (objPengguna != null)
                {
                    Session["pengguna"] = objPengguna;
                    Response.Redirect("~/SampleSqlParameter");
                }
                else
                {
                    ltKeterangan.Text = "<span class='alert alert-warning'>Username/Password tidak sesuai</span>";
                }
            }
            catch (Exception ex)
            {
                ltKeterangan.Text = "<span class='alert alert-danger'>" + ex.Message + "</span>";
            }
        }
    }
}