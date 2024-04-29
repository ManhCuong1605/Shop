<%@ Page Title="" Language="C#" MasterPageFile="~/Views/BanHang/Nguoiban.Master" AutoEventWireup="true" CodeBehind="QuanAo.aspx.cs" Inherits="QuanLiShopQuanAo.Views.BanHang.QuanAo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Đảm bảo các ô có cùng chiều cao */
        .col-4 {
            height: 250px; /* Sử dụng pixels thay vì phần trăm để đảm bảo chiều cao cố định */
        }

        /* Ẩn hình ảnh và giá sản phẩm */
        .product-info {
            display: none;
        }

        /* Căn giữa nội dung trong col-4 */
        .col-4-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        /* Kích thước hình ảnh */
        .product-image {
            width: 150px; /* Điều chỉnh kích thước hình ảnh theo nhu cầu */
            height: 150px; /* Điều chỉnh kích thước hình ảnh theo nhu cầu */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <!-- Phần tiêu đề danh sách sản phẩm -->
                <h3 class="text-center">Danh sách quần áo</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                <!-- Sản phẩm 1 -->
                <div class="col-4-content">
                    <h4 class="text-center">Sản phẩm 1</h4>   
                    <a class="text-center" href="ChiTietSanPham.aspx?ID=1">
                        <img class="product-image" src="../../Assets/Images/icons8-clothes-100.png" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
            <div class="col-4">
                <!-- Sản phẩm 2 -->
                <div class="col-4-content">
                    <h4 class="text-center">Sản phẩm 2</h4>   
                    <a class="text-center" href="#">
                        <img class="product-image" src="../../Assets/Images/icons8-clothes-100.png" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
            <div class="col-4">
                <!-- Sản phẩm 3 -->
                <div class="col-4-content">
                    <h4 class="text-center">Sản phẩm 3</h4>   
                    <a class="text-center" href="#">
                        <img class="product-image" src="../../Assets/Images/icons8-clothes-100.png" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
        </div>
        <!-- Dòng mới -->
        <div class="row">
            <div class="col-12"></div> <!-- Cột rỗng -->
        </div>
        <div class="row">
            <div class="col-4">
                <!-- Sản phẩm 4 -->
                <div class="col-4-content">
                    <h4 class="text-center">Sản phẩm 4</h4>   
                    <a class="text-center" href="#">
                        <img class="product-image" src="../../Assets/Images/icons8-clothes-100.png" />
                    </a>
                    <asp:Label Text="Ao" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
