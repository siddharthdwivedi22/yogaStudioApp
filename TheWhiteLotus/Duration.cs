using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheWhiteLotus
{
    public class Duration
    {
        int durationId;
        string durationName;

        //Getters and setters to get the value of the parameters
        public int DurationId
        {
            get { return durationId; }
            set { durationId = value; }
        }

        public string DurationName
        {
            get { return durationName; }
            set { durationName = value; }
        }

        //Constructor is called in the class to use when it's object is executed
        public Duration(int id, string du)
        {
            durationId = id;
            durationName = du;

        }
    }
}