using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssigningAMasterPageDynamically
{
    public partial class Site1 : BaseMaterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public override Panel SearchPanel
        {
            get
            {
                return panelSearch;
            }
        }

        public override string SearchTerm
        {
            get
            {
                return txtSerach.Text;
            }
        }

        public override Button SearchButton
        {
            get
            {
                return btnSearch;
            }
        }

        protected void DropDownList1_SelectedIndexChanged
            (object sender, EventArgs e)
        {
            Session["SELECTED_MASTERPAGE"] = DropDownList1.SelectedValue;
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Session["SELECTED_MASTERPAGE"] != null)
            {
                DropDownList1.SelectedValue =
                    Session["SELECTED_MASTERPAGE"].ToString();
            }
        }
    }
}