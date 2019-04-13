using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheWhiteLotus
{
    public partial class RemoveWorkshop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                YogaWorkList.DataSource = DBConnectivity.LoadWorkshops();
                YogaWorkList.DataValueField = "WorkshopId";//the name of the property that returns the ID
                YogaWorkList.DataTextField = "WorkshopName";
                YogaWorkList.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = int.Parse(YogaWorkList.SelectedValue);
            DBConnectivity.DeleteWorkshop(a);
            LabelOutput.Text = "The workshop " + a + " has been removed";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageSessions.aspx");
        }

    }
}