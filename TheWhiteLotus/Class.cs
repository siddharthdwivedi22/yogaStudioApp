using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheWhiteLotus
{
    public class Class
    {
        int classId;
        string className;
        Teacher cTeacher;
        Level cLevel;
        Days cDays;
        Time cTime;
        Duration cDuration;
        Availaibility cAvailaibility;

        //Getters and setters to get the value of the parameters
        public int ClassId
        {
            get { return classId; }
            set { classId = value; }
        }


        public string ClassName
        {
            get { return className; }
            set { className = value; }
        }


        public Teacher CTeacher
        {
            get { return cTeacher; }
            set { cTeacher = value; }
        }

        public Level CLevel
        {
            get { return cLevel; }
            set { cLevel = value; }
        }

        public Days CDays
        {
            get { return cDays; }
            set { cDays = value; }
        }

         public Time CTime
        {
            get { return cTime; }
            set { cTime = value; }
        }

         public Duration CDuration
         {
             get { return cDuration; }
             set { cDuration = value; }
         }

         public Availaibility CAvailaibility
         {
             get { return cAvailaibility; }
             set { cAvailaibility = value; }
         }

         //Constructor is called in the class to use when it's object is executed
        public Class(int id, string cn, Teacher te, Level le, Days da, Time ti, Duration du, Availaibility av)
        {
            classId = id;
            className = cn;
            cTeacher = te;
            cLevel = le;
            cDays = da;
            cTime = ti;
            cDuration = du;
            cAvailaibility = av;
        }
    }
}