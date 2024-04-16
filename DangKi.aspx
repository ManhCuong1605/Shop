<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="ShopQuanAO.Views.DangKi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng kí tài khoản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Assets/Lib/css/bootstrap-grid.css" rel="stylesheet" /> 
</head>
<body>
    <div class="container-fluid"> 
        <div class="row mt-5 mb-5">
          
        </div>
        <div class="row">
            <div class="col-md-4">
             
            </div>
              <div class="col-md-4">
                <form id="form1" runat="server">
                    <div>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-8">
                                <img src="../Assets/Images/icons8-clothes-52.png" />

                            </div>
                        </div>
                    </div>
                      <div class="mt-3">
                        <label for="" class="form-label">Họ và tên </label>
                       <input type="text"  placeholder="Họ và tên" autocomplete="off" class="form-control" id="HovatenTb" runat="server"/>
                    </div>
                    <div class="mt-3">
                        <label for="" class="form-label">User Name </label>
                       <input type="text"  placeholder="User Name" autocomplete="off" class="form-control" id="UnameTb" runat="server"/>
                    </div>
                    <div class="mt-3">
                        <label for="" class="form-label">Password</label>
                       <input type="password"  placeholder="Password" autocomplete="off" class="form-control" id="PasswordTb" runat="server"/>
                    </div>
                    <div class="mt-3">
                        <label for="" class="form-label">Số điện thoại</label>
                       <input type="text"  placeholder="Số điện thoại" autocomplete="off" class="form-control" id="SdtTb" runat="server"/>
                    </div>
                    <div class="mt-3">
                        <label for="" class="form-label">Địa chỉ</label>
                       <input type="text"  placeholder="Địa chỉ" autocomplete="off" class="form-control" id="DiachiTb" runat="server"/>
                    </div>
                    <div class="mt-3 d-grid">
                        <asp:Button Text="Đăng kí"  runat="server" class="btn-success btn" ID="Dangkibtn" OnClick="Dangki_Click" />
                        <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"> </asp:Label>                 
                    </div>
                     <div class="mt-3 d-grid">
                        <asp:Button Text="Đăng nhập"  runat="server" class="btn-success btn" ID="DangnhapBtn" OnClick="Dangnhap_Click" />
                        
                    </div>
                </form>
            </div>
            <div class="col-md-4">

            </div>
        </div>
    </div>
</body>
</html>
