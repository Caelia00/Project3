﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using MinimalisticTelnet;

namespace web_gedeelte
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        void Session_End(Object sender, EventArgs E)
        {
            TelnetConnection tc;
            tc = (TelnetConnection) Session["connection"];
            tc.WriteLine("exit");
        }
    }
}