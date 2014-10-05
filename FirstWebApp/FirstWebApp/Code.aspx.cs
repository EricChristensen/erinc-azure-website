using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApp
{
    public partial class Code : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Code_Click(object sender, EventArgs e)
        {
            iSource.Src = "~/Content/" + FindControl((sender as System.Web.UI.WebControls.Button).ID).ID + ".txt";
            
        }
        public void aFunc()
        {
            
        }
    }
}