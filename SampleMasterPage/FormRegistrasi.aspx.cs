﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SampleMasterPage.DAL;

namespace SampleMasterPage
{
    public partial class FormRegistrasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            RegistrasiDAL regDal = new RegistrasiDAL();
            try
            {
                regDal.TambahDataRegistrasi(txtUsername.Text, txtPassword.Text, txtAturan.Text);
                ltKeterangan.Text = "<span class='alert alert-success'> Proses registrasi berhasil !</span>";
            }
            catch (Exception)
            {
                ltKeterangan.Text = "<span class='alert alert-error'> Proses registrasi gagal !</span>";
            }
        }
    }
}