using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheWhiteLotus
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddTeacher.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddYogaClass.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewClasses.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("RemoveClass.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddYogaWorkshop.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewWorkshops.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("RemoveWorkshop.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("CancelClass.aspx");
        }
    }
}