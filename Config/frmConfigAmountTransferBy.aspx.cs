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
using System.Text   ;

namespace Armstrong_ARER_II.Config
{
    public partial class frmConfigAmountTransferBy : System.Web.UI.Page
    {
       public  string accountList;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                accountList = fetchAccountList();
            }
        }

      

        [WebMethod]
        public static void SaveData(double minValue, double maxValue,int transferBy)
        {
            AmountTransferBy obj = new AmountTransferBy();
            obj.MinValue = minValue;
            obj.MaxValue = maxValue;
            obj.TransferBy = transferBy;
            int Result = obj.SaveData(obj);
        }

        [WebMethod]
        public static void UpdateData(double minValue, double maxValue, int transferBy, int transferId)
        {
            AmountTransferBy obj = new AmountTransferBy();
            obj.MinValue = minValue;
            obj.MaxValue = maxValue;
            obj.TransferBy = transferBy;
            obj.Id = transferId;
            int Result = obj.UpdateData(obj);
        }

        [WebMethod]
        public static void DeleteData(int Id)
        {
            AmountTransferBy obj = new AmountTransferBy();
            obj.Id = Id;
            int Result = obj.DeleteData(obj);
        }

        [WebMethod]
        public static void RemoveRow(int Id)
        {

        }

        [WebMethod]
        public static List<AmountTransferBy> bindUserName()
        {
            List<AmountTransferBy> list = new List<AmountTransferBy>();
            AmountTransferBy obj = new AmountTransferBy(0,"");
            DataTable dt = new DataTable();
            dt = obj.bindData();
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    obj = new AmountTransferBy(Convert.ToInt32(dt.Rows[i]["Id"].ToString()), dt.Rows[i]["User_Name"].ToString(), Convert.ToInt32(dt.Rows[i]["MinimumValue"].ToString()), Convert.ToInt32(dt.Rows[i]["MaximumValue"].ToString()),Convert.ToInt32(dt.Rows[i]["User_id"].ToString()));
                    list.Add(obj);
                }
            }
            return list;
        }

        [WebMethod]
        public static List<AmountTransferBy> getAccountList()
        {
            List<AmountTransferBy> list = new List<AmountTransferBy>();
            AmountTransferBy obj = new AmountTransferBy(0, "");
            DataTable dt = new DataTable();
            dt = obj.getAccountUsers();
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    obj = new AmountTransferBy(Convert.ToInt32(dt.Rows[i]["User_id"].ToString()), dt.Rows[i]["User_Name"].ToString());
                    list.Add(obj);
                }
            }

            return list;
        }

        public static string fetchAccountList()
        {
            StringBuilder json = new StringBuilder();
            List<AmountTransferBy> list = new List<AmountTransferBy>();
            AmountTransferBy obj = new AmountTransferBy(0, "");
            DataTable dt = new DataTable();
            dt = obj.getAccountUsers();
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    obj = new AmountTransferBy(Convert.ToInt32(dt.Rows[i]["User_id"].ToString()), dt.Rows[i]["User_Name"].ToString());
                    list.Add(obj);
                }
            }
            //string ss= list.ToString();
            System.Web.Script.Serialization.JavaScriptSerializer jsonSerialiser = new System.Web.Script.Serialization.JavaScriptSerializer();
            var jsondata = jsonSerialiser.Serialize(list);
            return jsondata.ToString();
        }


    }
}