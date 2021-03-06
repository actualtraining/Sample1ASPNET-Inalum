﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

namespace SampleMasterPage
{
    public partial class SampleUpload : System.Web.UI.Page
    {
        bool CekTipeFile(string namaFile)
        {
            string ekstensi = Path.GetExtension(namaFile).ToLower();
            switch (ekstensi)
            {
                case ".gif":
                case ".jpg":
                case ".png":
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_PreRender()
        {
            string strUpload = MapPath("~/Images");
            DirectoryInfo dir = new DirectoryInfo(strUpload);
            dlPhoto.DataSource = dir.GetFiles();
            dlPhoto.DataBind();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fpGambar.HasFile)
            {
                if (CekTipeFile(fpGambar.FileName))
                {
                    string strRandom = Guid.NewGuid().ToString() +
                        Path.GetExtension(fpGambar.FileName);
                    string strUpload = Path.Combine("~/Images", strRandom);
                    strUpload = MapPath(strUpload);
                    fpGambar.SaveAs(strUpload);
                    lblKeterangan.Text = strRandom + " berhasil diupload !";
                }
                else
                {
                    lblKeterangan.Text = "Gambar harus format gif, jpg, atau png";
                }
            }
            else
            {
                lblKeterangan.Text = "<span class='alert alert-warning'>File tidak ditemukan</span>";
            }
        }
    }
}