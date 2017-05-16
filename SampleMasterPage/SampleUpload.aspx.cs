using System;
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
    }
}