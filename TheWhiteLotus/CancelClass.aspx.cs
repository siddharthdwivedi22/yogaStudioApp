using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheWhiteLotus
{
    public partial class CancelClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                YogaClassList.DataSource = DBConnectivity.LoadClasses();
                YogaClassList.DataValueField = "ClassId";//the name of the property that returns the ID
                YogaClassList.DataTextField = "ClassName";
                YogaClassList.DataBind();

                AvailList.DataSource = DBConnectivity.LoadAvailaibility();
                AvailList.DataValueField = "AvailaibilityId";//the name of the property that returns the ID
                AvailList.DataTextField = "AvailaibilityName";
                AvailList.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = int.Parse(YogaClassList.SelectedValue);
            int b = int.Parse(AvailList.SelectedValue);
            DBConnectivity.CancelClass(b, a);
            LabelOutput.Text = "The class has been cancelled";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageSessions.aspx");
        }

    }
}