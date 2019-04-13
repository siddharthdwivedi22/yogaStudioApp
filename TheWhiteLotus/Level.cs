using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheWhiteLotus
{
    public class Level
    {
        int levelId;
        string levelName;

        //Getters and setters to get the value of the parameters
        public int LevelId
        {
            get { return levelId; }
            set { levelId = value; }
        }

        public string LevelName
        {
            get { return levelName; }
            set { levelName = value; }
        }


        public Level(int id, string ln)
        {
            levelId = id;
            levelName = ln;

        }
    }
}