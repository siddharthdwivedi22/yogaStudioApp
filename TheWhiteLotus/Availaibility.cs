using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheWhiteLotus
{
    public class Availaibility
    {
        int availaibilityId;
        string availaibilityName;

        //Getters and setters to get the value of the parameters
        public int AvailaibilityId
        {
            get { return availaibilityId; }
            set { availaibilityId = value; }
        }

        public string AvailaibilityName
        {
            get { return availaibilityName; }
            set { availaibilityName = value; }
        }

        //Constructor is called in the class to use when it's object is executed
        public Availaibility(int id, string ai)
        {
            availaibilityId = id;
            availaibilityName = ai;

        }
    }
}