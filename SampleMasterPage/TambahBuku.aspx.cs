using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SampleMasterPage.DAL;

namespace SampleMasterPage
{
    public partial class TambahBuku : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lvTambahBuku_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                ltKeterangan.Text = "<span class='alert alert-danger'>" + e.Exception.Message + "</span>";
            }
            else
            {
                //upload pic
                try
                {
                    FileUpload fpUpload = (FileUpload)lvTambahBuku.InsertItem.FindControl("fpCoverPic");
                    string strRandom = Guid.NewGuid().ToString() +
                       Path.GetExtension(fpUpload.FileName);
                    string strUpload = Path.Combine("~/Images", strRandom);
                    strUpload = MapPath(strUpload);
                    fpUpload.SaveAs(strUpload);

                    //update ke table Buku ubah nama CoverPic sesuai nama random yang dimasukan
                    TextBox txtKodeBuku = (TextBox)lvTambahBuku.InsertItem.FindControl("txtKodeBuku");
                    sdsBuku.UpdateParameters[0].DefaultValue = strRandom;
                    sdsBuku.UpdateParameters[1].DefaultValue = txtKodeBuku.Text;
                    sdsBuku.Update();
                    ltKeterangan.Text = "<span class='alert alert-success'>Data buku berhasil ditambah </span>";
                }
                catch (Exception ex)
                {
                    ltKeterangan.Text = "<span class='alert alert-danger'>" + ex.Message + "</span>";
                }
                
            }
        }

        protected void txtKodeBuku_TextChanged(object sender, EventArgs e)
        {
            SampleFocus objFocus = new SampleFocus();
            txtNamaBuku.Text = objFocus.GetNamaBuku(txtKodeBuku.Text);
        }
    }
}