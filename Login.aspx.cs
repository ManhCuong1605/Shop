using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopQuanAO.View
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(UnameTb.Value) || string.IsNullOrWhiteSpace(PasswordTb.Value))
            {
                ErrMsg.Text = "Vui lòng nhập tên người dùng và mật khẩu!";
                return; 
            }
            SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["Connections"].ConnectionString);
            myCon.Open();
            string qry = "SELECT * FROM Nguoidung WHERE Username='" + UnameTb.Value + "' AND Password='" + PasswordTb.Value + "'";
            SqlCommand cmd = new SqlCommand(qry, myCon);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Username"] = UnameTb.Value;
                Response.Redirect("Admin.Master");
            }
            else
            {
                ErrMsg.Text = "Tài khoản hoặc mất khẩu không hợp lệ. Vui lòng thử lại!";
            }
        }
    }
}