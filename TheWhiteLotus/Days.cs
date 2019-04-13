using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheWhiteLotus
{
    public class Days
    {
        int dayId;
        string dayName;

        //Getters and setters to get the value of the parameters
        public int DayId
        {
            get { return dayId; }
            set { dayId = value; }
        }

        public string DayName
        {
            get { return dayName; }
            set { dayName = value; }
        }

        //Constructor is called in the class to use when it's object is executed
        public Days(int id, string dn)
        {
            dayId = id;
            dayName = dn;

        }
    }
}