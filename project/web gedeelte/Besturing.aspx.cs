using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MinimalisticTelnet;

namespace web_gedeelte
{
    public partial class Besturing : System.Web.UI.Page
    {
        static TelnetConnection tc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Page.Validate();
                tc = new TelnetConnection("localhost", 11000);
            }
            
        }

        protected void btn_kachel_omlaag_Click(object sender, EventArgs e)
        {
            string heat = txt_kachel.Text;
            string prompt = "";
                        
                // send client input to server
                prompt = "heater " + heat;
                tc.WriteLine(prompt);

                // display server output
                Console.Write(tc.Read());
            
        }
    }
}