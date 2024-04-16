<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Clothes.aspx.cs" Inherits="ShopQuanAO.Views.Admin.Clothes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
   
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                 <h3 class="text-center">Quản lý quần áo</h3>   </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-10">
        <label for="" class="form-label text-success">Mã quần áo</label>
        <input type="text"  placeholder="Mã quần áo" autocomplete="off" class="form-control"/>
                </div>
                <div class="mb-10">
        <label for="" class="form-label text-success">Mã nhóm</label>
        <input type="text"  placeholder="Nhóm quần áo" autocomplete="off" class="form-control"/>
                </div>
                <div class="mb-10">
        <label for="" class="form-label text-success">Tên quần áo</label>
        <input type="text"  placeholder="Tên quần áo" autocomplete="off" class="form-control"/>
                </div>
                  <div class="mb-10">
        <label for="" class="form-label text-success">Mã chất liệu</label>
        <input type="text"  placeholder="Mã chất liệu" autocomplete="off" class="form-control"/>
                </div>
                  <div class="mb-10">
        <label for="" class="form-label text-success">Số lượng</label>
        <input type="text"  placeholder="Số lượng" autocomplete="off" class="form-control"/>
                </div>
                  <div class="mb-10">
        <label for="" class="form-label text-success">Giá nhập</label>
        <input type="text"  placeholder="Giá nhập" autocomplete="off" class="form-control"/>
                </div>
                  <div class="mb-10">
        <label for="" class="form-label text-success">Giá bán</label>
        <input type="text"  placeholder="Giá bán" autocomplete="off" class="form-control"/>
                </div>
                   <div class="mb-10">
        <label for="" class="form-label text-success">Hình ảnh</label>
        <input type="text"  placeholder="Ảnh" autocomplete="off" class="form-control"/>
                </div>
                   <div class="mb-10">
        <label for="" class="form-label text-success">Ghi chú</label>
        <input type="text"  placeholder="Ghi chú" autocomplete="off" class="form-control"/>
                </div>
                <div class="row">
                    <div class="col d-grid"> <asp:Button Text="Update"  runat="server" class="btn-warning btn-block btn" /></div>
                    <div class="col d-grid"> <asp:Button Text="Save"  runat="server" class="btn-success btn-block btn" /></div>
                    <div class="col d-grid"> <asp:Button Text="Delete"  runat="server" class="btn-danger btn-block btn" /></div>
                </div>
            </div>
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>