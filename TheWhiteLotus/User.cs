using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheWhiteLotus
{
    public class User
    {
        int userId;
        string userName;
        string userPassword;

        //Getters and setters to get the value of the parameters
        public int UserId
        {
            get { return userId; }
            set { userId = value; }
        }

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        public string UserPassword
        {
            get { return userPassword; }
            set { userPassword = value; }
        }

        //Constructor is called in the class to use when it's object is executed
        public User(int id, string un, string up)
        {
            userId = id;
            userName = un;
            userPassword = up;

        }

        public string GetDetails()
        {
            string s = "Hello " + userName + "you are logged in";
            return s;
        }
        
    }
}