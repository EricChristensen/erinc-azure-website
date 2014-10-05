using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApp
{
    public partial class Games : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Game1_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Clear();
            Response.ContentType = "application/x-zip-compressed";
            Response.AddHeader("Content-Disposition", "attatchment; filename=BeeGame2.zip");
            Response.TransmitFile("~/Content/BeeGame2.zip");
            Response.Flush();
            Response.End();
        }

        protected void SquareJumper_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Clear();
            Response.ContentType = "application/x-zip-compressed";
            Response.AddHeader("Content-Disposition", "attatchment; filename=SJ.zip");
            Response.TransmitFile("~/Content/SJ.zip");
            Response.Flush();
            Response.End();
        }

        protected void PKSim_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Clear();
            Response.ContentType = "application/x-zip-compressed";
            Response.AddHeader("Content-Disposition", "attatchment; filename=PokerSimulatorSource.zip");
            Response.TransmitFile("~/Content/PokerSimulatorSource.zip");
            Response.Flush();
            Response.End();
        }
    }
}