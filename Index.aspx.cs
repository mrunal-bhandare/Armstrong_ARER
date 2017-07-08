using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using armstrong.BusinessLayer.Classes;

namespace Armstrong_ARER_V2
{
    public partial class Index : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            bindUserName();
        }
        public void bindUserName()
        {
            AmountTransferBy obj = new AmountTransferBy(0, "");
            DataTable dt = new DataTable();
            try
            {
                dt = obj.bindData();

                Lbl_reccnt.Text = dt.Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Lbl_reccnt.Text = ex.Message;
                Lbl_reccnt.Text += ">>>>>>>" + ex.InnerException; 
            }
        }


    }
}