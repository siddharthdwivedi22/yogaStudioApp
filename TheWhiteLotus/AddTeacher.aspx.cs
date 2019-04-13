using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheWhiteLotus
{
    public partial class AddTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = TextBox1.Text;        
            DBConnectivity.SaveTeacher(a); //Text from the TextBox1 is added in the YogaTeacher table in the database
            LabelOutput.Text = "Teacher " + a + " is added";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageSessions.aspx");
        }

    }
}