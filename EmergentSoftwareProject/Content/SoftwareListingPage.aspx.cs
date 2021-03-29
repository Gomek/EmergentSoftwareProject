using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmergentSoftwareProject.Content
{
    public partial class SoftwareListingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Init controls
                InitializeControls();
            }
        }

        private void InitializeControls()
        {
            SetSoftwareDataList("");
        }

        protected void bFilter_Click(object sender, EventArgs e)
        {
            SetSoftwareDataList(tbFilter.Text.Trim());
        }

        #region Utilities
        private void SetSoftwareDataList(string filter)
        {
            //Tuple<bool, IEnumerable<SoftwareSearch>> filteredSoftwareSearchReturn = SoftwareManager.GetFilteredSoftwareSearch(filter);

         //   if (!filteredSoftwareSearchReturn.Item1)
          //      SetFilterMessage("Invalid filter.  Format:<br>[Number].[Number].[Number]");
          //  else
            //    ClearFilterMessage();

            //dlSoftware.DataSource = filteredSoftwareSearchReturn.Item2;
            dlSoftware.DataBind();
        }
        private void ClearFilterMessage()
        {
            SetFilterMessage("");
        }
        private void SetFilterMessage(string text)
        {
            lFilterMessage.Text = text;
        }
        #endregion
    }
}