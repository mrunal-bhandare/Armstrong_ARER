using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using armstrong.BusinessLayer.Classes;
using System.Web.Services;

namespace Armstrong_ARER_II.Config
{
    public partial class frmConfigDA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        [WebMethod]
        public static List<BindUserLevels> getUserLevel()
        {
            List<BindUserLevels> list = new List<BindUserLevels>();
            BindUserLevels obj = new BindUserLevels(0, "");
            DataTable dt = new DataTable();
            dt = obj.bindLevels();
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    obj = new BindUserLevels(Convert.ToInt32(dt.Rows[i]["Id"].ToString()), dt.Rows[i]["UserLevel"].ToString());
                    list.Add(obj);
                }
            }
            return list;
        }

        [WebMethod]
        public static List<DAConfig> getDAAmount()
        {
            List<DAConfig> list = new List<DAConfig>();
            DAConfig obj = new DAConfig();
            obj.CityClass = "A";
            DataTable dt = new DataTable();
            dt = obj.getAmount();
            if(dt.Rows.Count>0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    obj = new DAConfig(Convert.ToDouble(dt.Rows[i]["Amount"].ToString()));
                    list.Add(obj);
                }
            }
            return list;
        }

        [WebMethod]
        public static void saveDA(string valuesA, string valuesB, string valuesC, string valuesD)
        {
            DAConfig obj = new DAConfig();
            // Category - A
            var primeArrayA = valuesA.Split('*');
            int levelInc = 2;
            for (int i = 0; i < primeArrayA.Length; i++)
            {
                obj.CityClass = "A";
                obj.UserLevel = "L" + levelInc;
                obj.Amount = Convert.ToDouble(primeArrayA[i]);
                obj.SaveData(obj);
                levelInc++;
            }

            // Category - B
            levelInc = 2;
            var primeArrayB = valuesB.Split('*');
            for (int i = 0; i < primeArrayB.Length; i++)
            {
                obj.CityClass = "B";
                obj.UserLevel = "L" + levelInc;
                obj.Amount = Convert.ToDouble(primeArrayB[i]);
                obj.SaveData(obj);
                levelInc++;
            }

            // Category - C
            levelInc = 2;
            var primeArrayC = valuesC.Split('*');
            for (int i = 0; i < primeArrayC.Length; i++)
            {
                obj.CityClass = "C";
                obj.UserLevel = "L" + levelInc;
                obj.Amount = Convert.ToDouble(primeArrayC[i]);
                obj.SaveData(obj);
                levelInc++;
            }

            // Category - D
            levelInc = 2;
            var primeArrayD = valuesD.Split('*');
            for (int i = 0; i < primeArrayD.Length; i++)
            {
                obj.CityClass = "D";
                obj.UserLevel = "L" + levelInc;
                obj.Amount = Convert.ToDouble(primeArrayD[i]);
                obj.SaveData(obj);
                levelInc++;
            }
        }
    }
}