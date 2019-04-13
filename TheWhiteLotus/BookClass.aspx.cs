using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace TheWhiteLotus
{
    public partial class BookSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<Class> _classes = DBConnectivity.LoadClasses(); //List _classes is loaded with the classes using the LoadClasses method in DBConnectivity

            foreach (var _class in _classes)
            {
                TableRow row = new TableRow();
                TableCell cell1 = new TableCell();
                cell1.Text = _class.ClassName;
                TableCell cell2 = new TableCell();
                cell2.Text = _class.CTeacher.TeacherName;
                TableCell cell3 = new TableCell();
                cell3.Text = _class.CLevel.LevelName;
                TableCell cell4 = new TableCell();
                cell4.Text = _class.CDays.DayName;
                TableCell cell5 = new TableCell();
                cell5.Text = _class.CTime.TimeName;
                TableCell cell6 = new TableCell();
                cell6.Text = _class.CDuration.DurationName;
                TableCell cell7 = new TableCell();
                cell7.Text = _class.CAvailaibility.AvailaibilityName;

                row.Cells.Add(cell1);
                row.Cells.Add(cell2);
                row.Cells.Add(cell3);
                row.Cells.Add(cell4);
                row.Cells.Add(cell5);
                row.Cells.Add(cell6);
                row.Cells.Add(cell7);
                Table1.Rows.Add(row);
            }

            YogaClassList.DataSource = DBConnectivity.LoadClasses();
            YogaClassList.DataValueField = "ClassId";//the name of the property that returns the ID
            YogaClassList.DataTextField = "ClassName";
            YogaClassList.DataBind();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                int a = int.Parse(YogaClassList.SelectedValue);               
                DBConnectivity.BookClass(Session["UserName"].ToString(), a);
                LabelOutput.Text = "You are booked to the selected yoga class";
            }
      }
            
    }
 }
