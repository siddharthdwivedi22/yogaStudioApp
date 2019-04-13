﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Drawing;

namespace TheWhiteLotus
{
    public partial class ManageSessions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string connString;
            connString = @"Provider=Microsoft.JET.OLEDB.4.0;Data Source=B:\Application and web development-1551\TheWhiteLotus\YogaStudioDatabase.mdb";
            OleDbConnection myConnection = new OleDbConnection(connString);
            string myQuery = "SELECT COUNT(*)FROM AdminTable WHERE AdminName='" + AdminNameTxt.Text + "' and AdminPassword='" + AdminPassTxt.Text + "'";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                int OBJ = Convert.ToInt32(myCommand.ExecuteScalar());               
                if (OBJ > 0)
                {
                    Response.Redirect("ManageSessions.aspx");
                }
                else
                {
                    LabelOutput.Text = "Invalid username or password";
                    this.LabelOutput.ForeColor = Color.Red;
                }

            }
            catch (Exception ex)
            {
                LabelOutput.Text = "Exception in DBHandler" + ex;
            }
            finally
            {
                myConnection.Close();
            }
        }
        }
    }
