using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheWhiteLotus
{
    public partial class AddYogaClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Load the dropdown list TeacherList with Teacher names from YogaTeacher table in the database
                TeacherList.DataSource = DBConnectivity.LoadTeacher();
                TeacherList.DataTextField = "teacherName";
                TeacherList.DataValueField = "teacherId";
                TeacherList.DataBind();

                //Load the dropdown list LevelList with Level names from LevelTable table in the database
                LevelList.DataSource = DBConnectivity.LoadLevel();
                LevelList.DataTextField = "levelName";
                LevelList.DataValueField = "levelId";
                LevelList.DataBind();

                //Load the dropdown list DaysList with Day names from DaysTable table in the database
                DaysList.DataSource = DBConnectivity.LoadDays();
                DaysList.DataTextField = "dayName";
                DaysList.DataValueField = "dayId";
                DaysList.DataBind();

                //Load the dropdown list TimeSlotList with Time names from TimesTable table in the database
                TimeSlotList.DataSource = DBConnectivity.LoadTime();
                TimeSlotList.DataTextField = "timeName";
                TimeSlotList.DataValueField = "timeId";
                TimeSlotList.DataBind();

                //Load the dropdown list DurationList with Duration names from DurationTable table in the database
                DurationList.DataSource = DBConnectivity.LoadDuration();
                DurationList.DataTextField = "durationName";
                DurationList.DataValueField = "durationId";
                DurationList.DataBind();

                //Load the dropdown list AvailList with Availaibility names from AvailaibilityTable table in the database
                AvailList.DataSource = DBConnectivity.LoadAvailaibility();
                AvailList.DataTextField = "availaibilityName";
                AvailList.DataValueField = "availaibilityId";
                AvailList.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = ClassNameBox.Text; //Get the text from text box 

            //Convert the selected value from dropdown lists into integeres
            int b = int.Parse(TeacherList.SelectedValue);
            int c = int.Parse(LevelList.SelectedValue);
            int d = int.Parse(DaysList.SelectedValue);
            int f = int.Parse(TimeSlotList.SelectedValue);
            int g = int.Parse(DurationList.SelectedValue);
            int h = int.Parse(AvailList.SelectedValue);

            DBConnectivity.SaveYogaClass(a, b, c, d, f, g, h); //Add the values entered by the admin to SaveYoga Class method in DBConnectivity class
            LabelOutput.Text = "The Class is added to the database";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageSessions.aspx");

        }
    }
}