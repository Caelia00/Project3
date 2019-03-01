using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MinimalisticTelnet;

namespace web_gedeelte
{
    public partial class Besturing : System.Web.UI.Page
    {
        TelnetConnection tc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Page.Validate();
            }
            test_telnet();
        }

        protected void btn_kachel_omlaag_Click(object sender, EventArgs e)
        {
            test_telnet();
            string heat = txt_kachel.Text;
            string prompt = "";

            // send client input to server
            prompt = "heater " + heat;
            tc.WriteLine(prompt);
        }

        void test_telnet()
        {
            if (Session["connection"] == null)
            {
                tc = new TelnetConnection("localhost", 11000);
                Session.Timeout = 1;
                Session["connection"] = tc;
            }
            else
            {
                tc = (TelnetConnection)Session["connection"];
            }
        }
    }
}