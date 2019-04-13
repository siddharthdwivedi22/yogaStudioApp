using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheWhiteLotus
{
    public class Time
    {
        int timeId;
        string timeName;

        //Getters and setters to get the value of the parameters
        public int TimeId
        {
            get { return timeId; }
            set { timeId = value; }
        }

        public string TimeName
        {
            get { return timeName; }
            set { timeName = value; }
        }

        //Constructor is called in the class to use when it's object is executed
        public Time(int id, string tin)
        {
            timeId = id;
            timeName = tin;

        }
    }
}