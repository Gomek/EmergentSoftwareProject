using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmergentSoftwareProject.Content
{
    public partial class SuggestImprovement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitializeControls();
            }
        }

        private void InitializeControls()
        {
            tbPage.Text = GetRequestingPageTitle();
        }

        protected void bSubmit_Click(object sender, EventArgs e)
        {
            // Update DB | Email developer | create SCR | etc.
            Response.Redirect(GetRequestingPage(), true);
        }

        protected void bCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(GetRequestingPage(), true);
        }

        #region Utilities
        private string GetRequestingPage()
        {
            return Request.Params["RequestingPage"];
        }
        private string GetRequestingPageTitle()
        {
            return Request.Params["RequestingPageTitle"];
        }
        #endregion
    }
}