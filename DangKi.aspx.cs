using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopQuanAO.Views
{
    public partial class DangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Dangki_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["Connections"].ConnectionString);
            myCon.Open();
            string username = UnameTb.Value;
            string password = PasswordTb.Value;
            string sdt = SdtTb.Value;
            string diachi = DiachiTb.Value;
            string ten = HovatenTb.Value;

            // Tạo giá trị ID và Makhach
            string Makhach = GenerateUniqueMakhach(); // Hãy thay thế hàm này bằng cách sinh giá trị duy nhất

            // Câu lệnh SQL để thêm dữ liệu mới vào các bảng
            string qry = "INSERT INTO dbo.Nguoidung (Username, Password) VALUES (@Username, @Password);" +
                         "INSERT INTO dbo.Khach (Makhach, Tenkhach, Diachi, Dienthoai) VALUES (@Makhach, @Tenkhach, @Diachi, @Dienthoai);";

            using (SqlCommand command = new SqlCommand(qry, myCon))
            {
                command.Parameters.AddWithValue("@ID", ID);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@Makhach", Makhach);
                command.Parameters.AddWithValue("@Tenkhach", ten);
                command.Parameters.AddWithValue("@Diachi", diachi);
                command.Parameters.AddWithValue("@Dienthoai", sdt);

                try
                {
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        ErrMsg.Text = "Đăng ký thành công!";
                    }
                    else
                    {
                        ErrMsg.Text = "Đăng ký thất bại!";
                    }
                }
                catch (Exception ex)
                {
                    ErrMsg.Text = "Đã xảy ra lỗi: " + ex.Message;
                }
            }
        }


        // Hàm sinh giá trị Makhach duy nhất
        private string GenerateUniqueMakhach()
        {
            // Logic để tạo giá trị Makhach duy nhất
            return "K08"; // Thay thế bằng logic của bạn để sinh giá trị Makhach duy nhất
        }

        protected void Dangnhap_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}