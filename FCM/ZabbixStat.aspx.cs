using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCM
{
    public partial class ZabbixStat : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for(var i = 0; i < 18; i++)
                {
                    FirstGridView.Columns.Add(new BoundField() { DataField = $"column_{i}" }) ; 
                }
            }
        }
    }
}