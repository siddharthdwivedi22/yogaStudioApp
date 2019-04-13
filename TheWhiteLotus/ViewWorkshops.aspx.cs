using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheWhiteLotus
{
    public partial class ViewWorkshops : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Workshop> _workshops = DBConnectivity.LoadWorkshops();
            foreach (var _workshop in _workshops)
            {
                string av = "Available";
                TableRow row = new TableRow();
                TableCell cell1 = new TableCell();
                cell1.Text = _workshop.WorkshopName;
                TableCell cell2 = new TableCell();
                cell2.Text = _workshop.WTeacher.TeacherName;
                TableCell cell3 = new TableCell();
                cell3.Text = _workshop.WorkshopDate;
                TableCell cell4 = new TableCell();
                cell4.Text = _workshop.WorkshopDuration;
                TableCell cell5 = new TableCell();
                cell5.Text = _workshop.StartTime;
                TableCell cell6 = new TableCell();
                cell6.Text = _workshop.EndTime;
                TableCell cell7 = new TableCell();
                cell7.Text = av;


                row.Cells.Add(cell1);
                row.Cells.Add(cell2);
                row.Cells.Add(cell3);
                row.Cells.Add(cell4);
                row.Cells.Add(cell5);
                row.Cells.Add(cell6);
                row.Cells.Add(cell7);

                Table1.Rows.Add(row);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageSessions.aspx");

        }
    }
}