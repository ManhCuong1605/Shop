using System;
using System.Data.SqlClient;
using System.Globalization;
using System.Web.UI;

namespace ShopQuanAO.Views.Admin
{
    public partial class Author : Page
    {
        private Models.DBClass myCon;

        protected void Page_Load(object sender, EventArgs e)
        {
            myCon = new Models.DBClass();
          
        }

        private void ShowAuthor()
        {
            string Query = "SELECT * FROM dbo.Nhanvien";
            AuthorList.DataSource = myCon.GetData(Query);
            AuthorList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(MaNv.Value) || Gioitinhnv.SelectedIndex == -1 || DiachiNv.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Missing Data";
                }
                else
                {
                    string Ma = MaNv.Value;
                    string Ten = NameNv.Value;
                    string Gioitinh = Gioitinhnv.SelectedValue; // Sử dụng SelectedValue thay vì SelectedIndex.ToString()
                    string Diachi = DiachiNv.SelectedValue; // Sử dụng SelectedValue thay vì SelectedIndex.ToString()
                    string Dienthoai = DienthoaiNv.Value;
                    string Ngaysinh = NgaysinhNv.Value;

                    // Kiểm tra định dạng ngày tháng
                    DateTime ngaySinh;
                    if (DateTime.TryParseExact(Ngaysinh, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out ngaySinh))
                    {
                        // Nếu ngày tháng hợp lệ, thực hiện thêm vào cơ sở dữ liệu
                        string NgaysinhFormatted = ngaySinh.ToString("yyyy-MM-dd");

                        string Query = "INSERT INTO dbo.Nhanvien VALUES (@Ma, @Ten, @Gioitinh, @Diachi, @Dienthoai, @Ngaysinh)";
                        SqlParameter[] parameters = new SqlParameter[]
                        {
                            new SqlParameter("@Ma", Ma),
                            new SqlParameter("@Ten", Ten),
                            new SqlParameter("@Gioitinh", Gioitinh),
                            new SqlParameter("@Diachi", Diachi),
                            new SqlParameter("@Dienthoai", Dienthoai),
                            new SqlParameter("@Ngaysinh", NgaysinhFormatted)
                        };

                        myCon.SetData(Query, parameters);
                        ShowAuthor();
                        ErrMsg.Text = "Đã thêm thành công";
                        MaNv.Value = "";
                        NameNv.Value = "";
                        Gioitinhnv.SelectedIndex = -1;
                        DiachiNv.SelectedIndex = -1;
                        DienthoaiNv.Value ="";
                        NgaysinhNv.Value = "";
                       
                    }
                    else
                    {
                        // Ngày tháng không hợp lệ, thông báo cho người dùng
                        ErrMsg.Text = "Invalid date format. Please enter date in yyyy-MM-dd format.";
                    }
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

        protected void AuthorList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
