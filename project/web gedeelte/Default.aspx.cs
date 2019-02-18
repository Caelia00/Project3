using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_gedeelte
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void click(object sender, EventArgs e)
        {
            Label1.Text = checkbox1.Checked.ToString();
            checkbox1.Checked = bool.Parse(Label1.Text);
        }
    }
}