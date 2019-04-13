using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheWhiteLotus
{
    public class Workshop
    {
        int workshopId;
        string workshopName;
        string workshopDate;
        string startTime;
        string endTime;
        string workshopDuration;
        Teacher wTeacher;

        //Getters and setters to get the value of the parameters
        public int WorkshopId
        {
            get { return workshopId; }
            set { workshopId = value; }
        }


        public string WorkshopName
        {
            get { return workshopName; }
            set { workshopName = value; }
        }


        public Teacher WTeacher
        {
            get { return wTeacher; }
            set { wTeacher = value; }
        }

        public string WorkshopDate
        {
            get { return workshopDate; }
            set { workshopDate = value; }
        }

        public string StartTime
        {
            get { return startTime; }
            set { startTime = value; }
        }

        public string EndTime
        {
            get { return endTime; }
            set { endTime = value; }
        }

        public string WorkshopDuration
        {
            get { return workshopDuration; }
            set { workshopDuration = value; }
        }

        //Constructor is called in the class to use when it's object is executed
        public Workshop(int id, string wn, Teacher te, string wda,string sti, string eti, string wdu)
        {
            workshopId = id;
            workshopName = wn;
            wTeacher = te;
            workshopDate = wda;
            startTime = sti;
            endTime = eti;
            workshopDuration = wdu;
        }
    }
 }
