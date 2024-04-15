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
            if (!IsPostBack)
            {
                ShowAuthor();
            }
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
                    ErrMsg.Text = "Không có dữ liệu ";
                }
                else
                {
                    string Ma = MaNv.Value;
                    string Ten = TenNv.Value;
                    string Gioitinh = Gioitinhnv.SelectedValue;
                    string Diachi = DiachiNv.SelectedValue;
                    string Dienthoai = DienthoaiNv.Value;
                    string Ngaysinh = NgaysinhNv.Value;

                    // Kiểm tra định dạng ngày tháng
                    DateTime ngaySinh;
                    if (DateTime.TryParseExact(Ngaysinh, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out ngaySinh))
                    {
                        // Nếu ngày tháng hợp lệ, thực hiện thêm vào cơ sở dữ liệu
                        string NgaysinhFormatted = ngaySinh.ToString("dd/MM/yyyy");

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
                        TenNv.Value = "";
                        Gioitinhnv.SelectedIndex = -1;
                        DiachiNv.SelectedIndex = -1;
                        DienthoaiNv.Value = "";
                        NgaysinhNv.Value = "";

                    }
                    else
                    {
                        // Ngày tháng không hợp lệ, thông báo cho người dùng
                        ErrMsg.Text = "Dữ liệu không hợp lệ. Vui lòng nhập theo dạng dd/MM/yyyy .";
                    }
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

        protected void AuthorList_SelectedIndexChanged1(object sender, EventArgs e)
        {
            MaNv.Value = AuthorList.SelectedRow.Cells[1].Text;
            TenNv.Value = AuthorList.SelectedRow.Cells[2].Text;
            Gioitinhnv.SelectedValue = AuthorList.SelectedRow.Cells[3].Text;
            DiachiNv.SelectedValue = AuthorList.SelectedRow.Cells[4].Text;
            DienthoaiNv.Value = AuthorList.SelectedRow.Cells[5].Text;
            NgaysinhNv.Value =  AuthorList.SelectedRow.Cells[6].Text;
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(MaNv.Value) || Gioitinhnv.SelectedIndex == -1 || DiachiNv.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Không thấy dữ liệu ";
                }
                else
                {
                    string Ma = MaNv.Value;
                    string Ten = TenNv.Value;
                    string Gioitinh = Gioitinhnv.SelectedValue;
                    string Diachi = DiachiNv.SelectedValue;
                    string Dienthoai = DienthoaiNv.Value;
                    string Ngaysinh = NgaysinhNv.Value;

                    // Kiểm tra định dạng ngày tháng
                    DateTime ngaySinh;
                    if (DateTime.TryParseExact(Ngaysinh, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out ngaySinh))
                    {
                        // Nếu ngày tháng hợp lệ, thực hiện cập nhật vào cơ sở dữ liệu
                        string NgaysinhFormatted = ngaySinh.ToString("dd/MM/yyyy");

                        string Query = "UPDATE dbo.Nhanvien SET Tennhanvien = @Ten, Gioitinh = @Gioitinh, Diachi = @Diachi, Dienthoai = @Dienthoai, Ngaysinh = @Ngaysinh WHERE Manhanvien = @Ma";
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
                        ErrMsg.Text = "Đã cập nhật thành công";
                        MaNv.Value = "";
                        TenNv.Value = "";
                        Gioitinhnv.SelectedIndex = -1;
                        DiachiNv.SelectedIndex = -1;
                        DienthoaiNv.Value = "";
                        NgaysinhNv.Value = "";
                    }
                    else
                    {
                        // Ngày tháng không hợp lệ, thông báo cho người dùng
                        ErrMsg.Text = "Dữ liệu không hợp lệ. Vui lòng nhập theo dạng dd/MM/yyyy .";
                    }
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(MaNv.Value) || Gioitinhnv.SelectedIndex == -1 || DiachiNv.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Chọn một nhân viên";
                }
                else
                {
                    string Ma = MaNv.Value;

                    // Xóa tất cả các hóa đơn liên quan đến nhân viên
                    string deleteHDBanQuery = "DELETE FROM dbo.HDBan WHERE Manhanvien = @Ma";
                    SqlParameter[] deleteHDBanParameters = new SqlParameter[]
                    {
            new SqlParameter("@Ma", Ma),
                    };
                    myCon.SetData(deleteHDBanQuery, deleteHDBanParameters);

                    // Sau đó, xóa nhân viên
                    string deleteNhanvienQuery = "DELETE FROM dbo.Nhanvien WHERE Manhanvien = @Ma";
                    SqlParameter[] deleteNhanvienParameters = new SqlParameter[]
                    {
            new SqlParameter("@Ma", Ma),
                    };
                    myCon.SetData(deleteNhanvienQuery, deleteNhanvienParameters);

                    ShowAuthor();
                    ErrMsg.Text = "Đã xóa thành công";
                    MaNv.Value = "";
                    TenNv.Value = "";
                    Gioitinhnv.SelectedIndex = -1;
                    DiachiNv.SelectedIndex = -1;
                    DienthoaiNv.Value = "";
                    NgaysinhNv.Value = "";
                }
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }

        }
    }
}
