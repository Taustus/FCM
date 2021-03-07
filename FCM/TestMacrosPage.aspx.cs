using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCM
{
    public partial class TestMacrosPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static KeyValuePair<string, string> lastSelectedItem;

        protected void DropDownWithDuplicatedItems_DataBinding(object sender, EventArgs e)
        {
            var ddlist = sender as DropDownList;
            var item = ddlist.SelectedItem;

            lastSelectedItem = new KeyValuePair<string, string>(ddlist.ID, item == null ? "..." : item.Text);

            ddlist.Items.Clear();
        }

        protected void DropDownWithDuplicatedItems_DataBound(object sender, EventArgs e)
        {
            var ddlist = sender as DropDownList;
            var index = ddlist.SelectedIndex;
            var item = ddlist.SelectedItem;
            ddlist.Items.Insert(0, new ListItem("...", ""));

            if (ddlist.Items.Count > 1)
            {
                if (lastSelectedItem.Key.Equals(ddlist.ID))
                {
                    var result = ddlist.Items.Cast<ListItem>().Where(x => x.Text.Equals(lastSelectedItem.Value)).FirstOrDefault();
                    index = result == null ? 0 : ddlist.Items.IndexOf(result);
                }
                ddlist.SelectedIndex = index;
            }
            else
            {
                ddlist.SelectedIndex = 1;
            }
        }
    }
}