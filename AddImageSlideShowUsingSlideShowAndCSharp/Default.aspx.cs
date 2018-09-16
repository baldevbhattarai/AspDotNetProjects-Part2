using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AddImageSlideShowUsingSlideShowAndCSharp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageUrl();
            }
        }

        private void SetImageUrl()
        {
            if (ViewState["ImageDisplayed"] == null)
            {
                Image1.ImageUrl = "~/Images/1.jpg";
                ViewState["ImageDisplayed"] = 1;
                Label1.Text = "Displaying Image - 1";
            }
            else
            {
                int i = (int)ViewState["ImageDisplayed"];
                if (i == 8)
                {
                    Image1.ImageUrl = "~/Images/1.jpg";
                    ViewState["ImageDisplayed"] = 1;
                    Label1.Text = "Displaying Image - 1";
                }
                else
                {
                    i = i + 1;
                    Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
                    ViewState["ImageDisplayed"] = i;
                    Label1.Text = "Displaying Image - " + i.ToString();
                }
            }
        }

        // This event is raised every one second as we have set
        // the interval to 1000 milliseconds
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImageUrl();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Timer1.Enabled)
            {
                Timer1.Enabled = false;
                Button1.Text = "Start SlideShow";
            }
            else
            {
                Timer1.Enabled = true;
                Button1.Text = "Stop SlideShow";

            }
        }
    }
}