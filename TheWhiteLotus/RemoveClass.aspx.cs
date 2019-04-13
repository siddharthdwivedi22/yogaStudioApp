using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheWhiteLotus
{
    public partial class RemoveClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                YogaClassList.DataSource = DBConnectivity.LoadClasses();
                YogaClassList.DataValueField = "ClassId";//the name of the property that returns the ID
                YogaClassList.DataTextField = "ClassName";
                YogaClassList.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            int b = int.Parse(YogaClassList.SelectedValue);
            DBConnectivity.DeleteClass(b);
            LabelOutput.Text = "The class " + b + " has been removed";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageSessions.aspx");
        }

    }
}