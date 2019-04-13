using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheWhiteLotus
{
    public class Teacher
    {
        int teacherId;
        string teacherName;

        //Getters and setters to get the value of the parameters
        public int TeacherId
        {
            get { return teacherId; }
            set { teacherId = value; }
        }

        public string TeacherName
        {
            get { return teacherName; }
            set { teacherName = value; }
        }

        //Constructor is called in the class to use when it's object is executed
        public Teacher(int id, string tn)
        {
            teacherId = id;
            teacherName = tn;

        }
    }
}