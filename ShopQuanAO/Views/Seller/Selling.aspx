<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/Seller.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="ShopQuanAO.Views.Seller.Selling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">

        </div>
        <div class="row">
            <div class="col-md-5">
                 <h3 class="text-center" style="color:teal;">Clothes Details</h3>
                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                        <lable for="" class="form-label text-success">Clothes Name</lable>
                       <input type="text"  placeholder="" autocomplete="off" class="form-control" />
                    </div>
                    </div>
                     <div class="col">
                        <div class="mt-3">
                        <label for="" class="form-label text-success">Clothes Price</label>
                       <input type="text"  placeholder="" autocomplete="off" class="form-control" />
                    </div>
                    </div>
                </div>
                
                    <div class="row">
                    <div class="col">
                        <div class="mt-3">
                        <label for="" class="form-label text-success">Quanlity</label>
                       <input type="text"  placeholder="" autocomplete="off" class="form-control" />
                    </div>
                    </div>
                     <div class="col">
                        <div class="mt-3">
                        <label for="" class="form-label text-success">Billing Date</label>
                       <input type="text"  placeholder="" autocomplete="off" class="form-control"/>
                    </div>
                    </div>
                        <div class="row mt-3 mb-3">
                            <div class="col d-grid">
                                <asp:Button Text="Add to Billing"  runat="server" class="btn-warning btn-block btn" />
                            </div>

                        </div>
                </div>
                <div class="row mt-5">
                     <h4 class="text-center" style="color:teal;">Clothes List</h4>
                    <div class="col">          
                        <asp:GridView ID="ClothingList" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <div class="col-md-7">
                                     <h4 class="text-center" style="color:crimson;">Client Bill</h4>
                    <div class="col">          
                        <asp:GridView ID="BillList" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="SlateBlue" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                         <div class=" d-grid"> 
                              <asp:Label runat="server" ID="GrdTotalTb" class="text-danger text-center"></asp:Label> <br/>
                             <asp:Button Text="Print"  runat="server" class="btn-warning btn-block btn" />
                            
                         </div>
                    </div>
            </div>
        </div>
    </div>
</asp:Content>
