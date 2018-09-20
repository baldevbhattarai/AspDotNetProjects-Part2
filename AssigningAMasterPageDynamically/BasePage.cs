using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AssigningAMasterPageDynamically
{
    public class BasePage : System.Web.UI.Page
    {
        protected override void OnPreInit(EventArgs e)
        {
            if (Session["SELECTED_MASTERPAGE"] != null)
            {
                this.MasterPageFile = Session["SELECTED_MASTERPAGE"].ToString();
            }
        }
    }
}