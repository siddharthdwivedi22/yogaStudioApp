using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheWhiteLotus
{
    public partial class AddYogaWorkshop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Load the WorkshopList dropdown list with teacher names from YogaTeacher table in the database
                WorkshopList.DataSource = DBConnectivity.LoadTeacher();
                WorkshopList.DataTextField = "teacherName";
                WorkshopList.DataValueField = "teacherId";
                WorkshopList.DataBind();
            }
        }

        protected void WorkshopButton_Click(object sender, EventArgs e)
        {
            string a = WorkshopBox.Text;
            int b = int.Parse(WorkshopList.SelectedValue);
            string c = Calendar1.SelectedDate.ToString();
            string d = WorkDurBox.Text;
            string f = WorkStartBox.Text;
            string g = WorkEndBox.Text;
            DBConnectivity.SaveYogaWorkshop(a, b, c,f,g, d);
            LabelOutput.Text = " The Workshop is added to the database";

        }

        protected void MenuButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageSessions.aspx");
        }
    }
}