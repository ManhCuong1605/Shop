<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="ShopQuanAO.Views.Admin.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                 <h3 class="text-center">Quản Lý Nhân Viên
                 </h3>   </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
        <label for="" class="form-label text-success">Mã Khách Hàng</label>
        <input type="text"  placeholder="Mã" autocomplete="off" class="form-control"/>
                </div>
                <div class="mb-3">
        <label for="" class="form-label text-success">Tên Khách Hàng</label>
        <input type="text"  placeholder="Tên" autocomplete="off" class="form-control"/>
                </div>
                 <div class="mb-3">
        <label for="" class="form-label text-success">Email Khách Hàng</label>
        <input type="email"  placeholder="Email Khách" autocomplete="off" class="form-control"/>
                </div>
                 <div class="mb-3">
        <label for="" class="form-label text-success">SĐT Khách Hàng</label>
        <input type="text"  placeholder="SĐT Khách" autocomplete="off" class="form-control"/>
                </div>
                 <div class="mb-3">
        <label for="" class="form-label text-success">Địa Chỉ Khách Hàng</label>
        <input type="text"  placeholder="Địa Chỉ" autocomplete="off" class="form-control"/>
                </div>
              
                <div class="row">
                    <div class="col d-grid"> <asp:Button Text="Cập Nhật"  runat="server" class="btn-warning btn-block btn" /></div>
                    <div class="col d-grid"> <asp:Button Text="Lưu"  runat="server" class="btn-success btn-block btn" /></div>
                    <div class="col d-grid"> <asp:Button Text="Xoá"  runat="server" class="btn-danger btn-block btn" /></div>
                </div>
            </div>
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>