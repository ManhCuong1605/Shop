<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="ShopQuanAO.Views.Admin.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
      <div class="container-fluid">
        <div class="row">
            <div class="col">
                 <h3 class="text-center">Mangage Author</h3>   </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
        <label for="" class="form-label text-success">Author Name</label>
        <input type="text"  placeholder="Title" autocomplete="off" class="form-control"/>
                </div>
                  <div class="mb-3">
        <label for="" class="form-label text-success">Author Gender</label>
        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                     <asp:ListItem>Male</asp:ListItem>
                      <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
                </div>
                   <div class="mb-3">
        <label for="" class="form-label text-success">Country</label>
                       <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                          <asp:ListItem>VietNam</asp:ListItem>
                          <asp:ListItem>Thai Lan</asp:ListItem>
                          <asp:ListItem>Trung Quoc</asp:ListItem>
                          <asp:ListItem>My</asp:ListItem>
                          <asp:ListItem>Singapo</asp:ListItem>
                          <asp:ListItem>Other</asp:ListItem>
                       </asp:DropDownList>
                       </div>
                  
                <div class="row">
                    <div class="col d-grid"> <asp:Button Text="Update"  runat="server" class="btn-warning btn-block btn" /></div>
                    <div class="col d-grid"> <asp:Button Text="Save"  runat="server" class="btn-success btn-block btn" /></div>
                    <div class="col d-grid"> <asp:Button Text="Delete"  runat="server" class="btn-danger btn-block btn" /></div>
                </div>
            </div>
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1501px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
