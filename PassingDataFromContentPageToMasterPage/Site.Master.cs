using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PassingDataFromContentPageToMasterPage
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public Panel SearchPanel
        {
            get
            {
                return panelSearch;
            }
        }

        public string SearchTerm
        {
            get
            {
                return txtSerach.Text;
            }
        }

        public Button SearchButton
        {
            get
            {
                return btnSearch;
            }
        }
    }
}