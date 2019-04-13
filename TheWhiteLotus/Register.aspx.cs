using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TheWhiteLotus
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                YogaExpList.DataSource = DBConnectivity.LoadLevel();
                YogaExpList.DataTextField = "levelName";
                YogaExpList.DataValueField = "levelId";
                YogaExpList.DataBind();
            }
        }

        protected void RegisterB_Click(object sender, EventArgs e)
        {
            
            string b = UserNTextBox.Text;
            string c = PassTextBox.Text;
            string d = DobTextBox.Text;
            int f = int.Parse(YogaExpList.SelectedValue);
            string g = HealTextBox.Text;
            string h = TelTextBox.Text;
            string i = EmailTextBox.Text;
            DBConnectivity.SaveUser(b, c, d, f, g, h, i);
            LabelOutput.Text = "You are registered. Please Login to Book Yoga Session";
            Session["UserName"] = UserNTextBox.Text; //Text from UserNTextBox is saved in session



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageSessions.aspx");

        }
    }
}