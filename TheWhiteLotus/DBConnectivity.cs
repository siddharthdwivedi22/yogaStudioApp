using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;

namespace TheWhiteLotus
{
    public class DBConnectivity
    {
        //Getting connection to the MS Access database
        private static OleDbConnection GetConnection()
        {
            string connString;
            connString = @"Provider=Microsoft.JET.OLEDB.4.0;Data Source=B:\Application and web development-1551\TheWhiteLotus\YogaStudioDatabase.mdb"; //Database location
            return new OleDbConnection(connString);
        }

        //Method to add teacher to the database table YogaTeacher
        public static void SaveTeacher(string tN)
        {
            OleDbConnection myConnection = GetConnection();
            string myQuery = "INSERT INTO YogaTeacher(TeacherName) VALUES('" + tN + "')"; //Insert statement to add string name to the TeacherName column of YogaTeacher table
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open(); //Opening the connection
                myCommand.ExecuteNonQuery(); //Executing nonQuery
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
            }
            finally
            {
                myConnection.Close(); //Close the connection to database
            }
        }

        //Method to save a yoga class in the YogaClass table in database
        public static void SaveYogaClass(string cN, int tId, int lvlId, int dayId, int timeId, int durId, int avId)
        {
            OleDbConnection myConnection = GetConnection();
            string myQuery = "INSERT INTO YogaClass(cName, tID, levelID, dayID, timeID, durationID, availaibilityID) VALUES('" + cN + "' , " + tId + " , " + lvlId + " , " + dayId + " , " + timeId + " , " + durId + " , " + avId + ")";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open(); //Opening the connection
                myCommand.ExecuteNonQuery(); //Executing nonQuery
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
            }
            finally
            {
                myConnection.Close(); //Close the connection to database
            }
        }

        //Method to save a yoga workshop in YogaWorkshop table in the database
        public static void SaveYogaWorkshop(string wN, int teId, string wD, string sT, string eT, string wDur)
        {
            OleDbConnection myConnection = GetConnection();
            string myQuery = "INSERT INTO YogaWorkshop(WorkshopName, YogaTeacherID, WorkshopDate,StartTime, EndTime, WorkshopDuration) VALUES('" + wN + "' , " + teId + " , '" + wD + "' , '" + sT +"' , '" + eT + "', '" + wDur + "')";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open(); //Opening the connection
                myCommand.ExecuteNonQuery(); //Executing nonQuery
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
            }
            finally
            {
                myConnection.Close(); //Close the connection to database
            }
        }

        //Method to save the User details in UserTable in the database
        public static void SaveUser(string uN, string pA, string dOB, int yE, string hI, string tE, string eM)
        {
            OleDbConnection myConnection = GetConnection();
            string myQuery = "INSERT INTO UserTable(UserName, UserPassword, UserDob, UserLevel, UserHealthIssues, UserTelephoneNo, UserEmail) VALUES('" + uN + "' , '" + pA + "' , '" + dOB + "' , '" + yE + "' , '" + hI + "' , '" + tE + "' , '" + eM + "')";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open(); //Opening the connection
                myCommand.ExecuteNonQuery(); //Executing nonQuery
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
            }
            finally
            {
                myConnection.Close(); //Close the connection to database
            }
        }

        //Method to reserve a class in ClassReservation table in database
        public static void BookClass(string uNa, int cId)
        {
            OleDbConnection myConnection = GetConnection();
            string myQuery = "INSERT INTO ClassReservation(UserName, YogaClassID) VALUES('" + uNa + "' , " + cId + ")";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open(); //Opening the connection
                myCommand.ExecuteNonQuery(); //Executing nonQuery
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
            }
            finally
            {
                myConnection.Close(); //Close the connection to database
            }
        }

        //Method to reserve a workshop in WorkshopReservation table in database
        public static void BookWorkshop(string uNa, int wId)
        {
            OleDbConnection myConnection = GetConnection();
            string myQuery = "INSERT INTO WorkshopReservation(UserName, YogaWorkshopID) VALUES('" + uNa + "' , " + wId + ")";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open(); //Opening the connection
                myCommand.ExecuteNonQuery(); //Executing nonQuery
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
            }
            finally
            {
                myConnection.Close(); //Close the connection to database
            }
        }

        //Method to load the teachers from the YogaTeacher table in the database
        public static List<Teacher> LoadTeacher() 
        {
            List<Teacher> teachers = new List<Teacher>();
            OleDbConnection myConnection = GetConnection();
            
            string myQuery = "SELECT * FROM YogaTeacher";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                OleDbDataReader myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    Teacher g = new Teacher(int.Parse(myReader["TeacherID"].ToString()), myReader["TeacherName"].ToString());
                    teachers.Add(g);
                }
                return teachers;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
                return null;
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to load the levels from the LevelTable table in the database
        public static List<Level> LoadLevel()
        {
            List<Level> levels = new List<Level>();
            OleDbConnection myConnection = GetConnection();

            string myQuery = "SELECT * FROM LevelTable";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                OleDbDataReader myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    Level l = new Level(int.Parse(myReader["LevelID"].ToString()), myReader["LevelName"].ToString());
                    levels.Add(l);
                }
                return levels;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
                return null;
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to load the time from the TimesTable table in the database
        public static List<Time> LoadTime()
        {
            List<Time> timest = new List<Time>();
            OleDbConnection myConnection = GetConnection();

            string myQuery = "SELECT * FROM TimesTable";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                OleDbDataReader myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    Time t = new Time(int.Parse(myReader["TimeID"].ToString()), myReader["Times"].ToString());
                    timest.Add(t);
                }
                return timest;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
                return null;
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to load the days from the DayTable table in the database
        public static List<Days> LoadDays()
        {
            List<Days> daysd = new List<Days>();
            OleDbConnection myConnection = GetConnection();

            string myQuery = "SELECT * FROM DaysTable";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                OleDbDataReader myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    Days d = new Days(int.Parse(myReader["DayID"].ToString()), myReader["DayName"].ToString());
                    daysd.Add(d);
                }
                return daysd;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
                return null;
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to load the durations from the DurationTable table in the database
        public static List<Duration> LoadDuration()
        {
            List<Duration> durations = new List<Duration>();
            OleDbConnection myConnection = GetConnection();

            string myQuery = "SELECT * FROM DurationTable";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                OleDbDataReader myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    Duration dt = new Duration(int.Parse(myReader["DurationID"].ToString()), myReader["DurationName"].ToString());
                    durations.Add(dt);
                }
                return durations;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
                return null;
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to load the availaibility from the AvailaibilityTable table in the database
        public static List<Availaibility> LoadAvailaibility()
        {
            List<Availaibility> avail = new List<Availaibility>();
            OleDbConnection myConnection = GetConnection();

            string myQuery = "SELECT * FROM AvailaibilityTable";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                OleDbDataReader myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    Availaibility a = new Availaibility(int.Parse(myReader["AvailaibilityID"].ToString()), myReader["AvailaibilityN"].ToString());
                    avail.Add(a);
                }
                return avail;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
                return null;
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to load the yoga classes from the YogaClass table in the database
        public static List<Class> LoadClasses()
        {
            List<Class> _classes = new List<Class>();
            OleDbConnection myConnection = GetConnection();

            string myQuery = "SELECT * FROM YogaClass";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            List<Teacher> teachers = LoadTeacher(); //Method LoadTeacher is saved in a generic list
            List<Level> levels = LoadLevel(); //Method LoadLevel is saved in a generic list
            List<Time> timest = LoadTime(); //Method LoadTime is saved in a generic list
            List<Days> daysd = LoadDays(); //Method LoadDays is saved in a generic list
            List<Duration> durations = LoadDuration(); //Method LoadDuration is saved in a generic list
            List<Availaibility> avail = LoadAvailaibility(); //Method LoadAvailaibility is saved in a generic list

            try
            {
                myConnection.Open();
                OleDbDataReader myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    Teacher currentTeacher = FindTeacher(teachers, int.Parse(myReader["tID"].ToString())); //Instance of the class Teacher currentTeacher is created to get the YogaTeacherID 
                    Level currentLevel = FindLevel(levels, int.Parse(myReader["levelID"].ToString())); //Instance of the class Level currentLevel is created to get the LevelID 
                    Days currentDays = FindDays(daysd, int.Parse(myReader["dayID"].ToString())); //Instance of the class Days currentDay is created to get the DayID 
                    Time currentTime = FindTime(timest, int.Parse(myReader["timeID"].ToString())); //Instance of the class Time currentTime is created to get the TimeID 
                    Duration currentDuration = FindDuration(durations, int.Parse(myReader["durationId"].ToString())); //Instance of the class Duration currentDuration is created to get the DurationID 
                    Availaibility currentAvailaibility = FindAvailaibility(avail, int.Parse(myReader["availaibilityId"].ToString())); //Instance of the class Availaibility currentAvailaibility is created to get the AvailaibilityID 

                    Class c = new Class(int.Parse(myReader["ID"].ToString()), myReader["cName"].ToString(), currentTeacher, currentLevel, currentDays, currentTime, currentDuration, currentAvailaibility);
                    _classes.Add(c);
                }
                return _classes;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
                return null;
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to load the workshops from the YogaWorkshop table in the database
        public static List<Workshop> LoadWorkshops()
        {
            List<Workshop> _workshops = new List<Workshop>();
            OleDbConnection myConnection = GetConnection();

            string myQuery = "SELECT * FROM YogaWorkshop";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            List<Teacher> teachers = LoadTeacher();
    
            try
            {
                myConnection.Open();
                OleDbDataReader myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    Teacher currentTeacher = FindTeacher(teachers, int.Parse(myReader["YogaTeacherID"].ToString())); //Instance of the class Teacher currentTeacher is created to get the YogaTeacherID 
                    Workshop w = new Workshop(int.Parse(myReader["WorkshopID"].ToString()), myReader["WorkshopName"].ToString(), currentTeacher, myReader["WorkshopDate"].ToString(), myReader["StartTime"].ToString(), myReader["EndTime"].ToString(), myReader["WorkshopDuration"].ToString());
                    _workshops.Add(w);
                }
                return _workshops;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
                return null;
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to delete the class from the YogaClass table in the database
        public static void DeleteClass(int rid)
        {
            OleDbConnection myConnection = GetConnection();
            string myQuery = "DELETE FROM YogaClass where ID = " + rid + "";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                myCommand.ExecuteNonQuery();
             
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to cancel the class from the YogaClass table in the database
        public static void CancelClass(int aid, int cid)
        {
            OleDbConnection myConnection = GetConnection();
            string myQuery = "UPDATE YogaClass SET availaibilityID = " + aid + "  where ID = " + cid + "";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                myCommand.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to delete the workshops from the YogaWorkshop table in the database
        public static void DeleteWorkshop(int wid)
        {
            OleDbConnection myConnection = GetConnection();
            string myQuery = "DELETE FROM YogaWorkshop where WorkshopID = " + wid + "";
            OleDbCommand myCommand = new OleDbCommand(myQuery, myConnection);

            try
            {
                myConnection.Open();
                myCommand.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in DBHandler", ex);
            }
            finally
            {
                myConnection.Close();
            }
        }

        //Method to find the teacher from the generic list teachers using the TeacherId from Teacher class
        private static Teacher FindTeacher(List<Teacher> teachers, int id)
        {
            foreach (var tea in teachers)
            {
                if (tea.TeacherId == id)
                {
                    return tea;
                }
            }
            return null;
        }

        //Method to find the level from the generic list levels using the LevelId from Level class
        private static Level FindLevel(List<Level> levels, int id)
        {
            foreach (var lev in levels)
            {
                if (lev.LevelId == id)
                {
                    return lev;
                }
            }
            return null;
        }

        //Method to find the day from the generic list daysd using the DayId from Days class
        private static Days FindDays(List<Days> daysd, int id)
        {
            foreach (var daa in daysd)
            {
                if (daa.DayId == id)
                {
                    return daa;
                }
            }
            return null;
        }

        //Method to find the time from the generic list timest using the TimeId from Time class
        private static Time FindTime(List<Time> timest, int id)
        {
            foreach (var tim in timest)
            {
                if (tim.TimeId == id)
                {
                    return tim;
                }
            }
            return null;
        }

        //Method to find the duration from the generic list durations using the DurationId from Duration class
        private static Duration FindDuration(List<Duration> durations, int id)
        {
            foreach (var dur in durations)
            {
                if (dur.DurationId == id)
                {
                    return dur;
                }
            }
            return null;
        }

        //Method to find the availaibility from the generic list avail using the AvailaibilityId from Availaibility class
        private static Availaibility FindAvailaibility(List<Availaibility> avail, int id)
        {
            foreach (var ava in avail)
            {
                if (ava.AvailaibilityId == id)
                {
                    return ava;
                }
            }
            return null;
        }
    }
}