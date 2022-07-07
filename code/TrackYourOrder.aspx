<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="TrackYourOrder.aspx.cs" Inherits="TrackYourOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    </asp:ScriptManagerProxy>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
<div class="banner-bg" id="top">
            <div class="banner-overlay"></div>
            <div class="welcome-text">
            <h2>TBF | All Previous Orders</h2> 
                <asp:Panel ID="pnlPreviousOrders" runat="server" ScrollBars="Auto" Height="500px" BorderColor="Black" 
                                BorderStyle="Inset" BorderWidth="1px">
                                
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" 
                                SortExpression="CustomerName" />
                            <asp:BoundField DataField="UserID" HeaderText="UserID" 
                                SortExpression="UserID" />
                            <asp:BoundField DataField="CustomerEmailID" HeaderText="CustomerEmailID" 
                                SortExpression="CustomerEmailID" />
                            <asp:BoundField DataField="TotalProducts" HeaderText="TotalProducts" 
                                SortExpression="TotalProducts" />
                            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                                SortExpression="TotalPrice" />
                            <asp:BoundField DataField="OrderDateTime" HeaderText="OrderDateTime" 
                                SortExpression="OrderDateTime" />
                            <asp:BoundField DataField="PaymentMethod" HeaderText="PaymentMethod" 
                                SortExpression="PaymentMethod" />
                            <asp:CommandField SelectText="Track Order" ShowSelectButton="True" ButtonType="Button" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Conn_Str %>" 
                        SelectCommand="SELECT [Id], [CustomerName], [UserID], [CustomerEmailID], [TotalProducts], [TotalPrice], [OrderDateTime], [PaymentMethod] FROM [CustomerDetails] WHERE ([UserID] = @UserID)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
                                    </SelectParameters>
                    </asp:SqlDataSource>
                                </asp:Panel>
          
          <asp:Panel ID="pnlProductsDetails" runat="server" ScrollBars="Auto" Height="500px" width="100%" BorderColor="Black" 
                                BorderStyle="Inset" BorderWidth="1px" Visible=true >
              <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                  BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" onselectedindexchanged="GridView2_SelectedIndexChanged" 
                 >
                 <Columns>
                 <asp:CommandField SelectText="Show Product Details" ShowSelectButton="True" />
                 </Columns>
                  <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                  <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                  <RowStyle BackColor="White" ForeColor="#330099" BorderColor="White" 
                      BorderStyle="None" />
                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                  <SortedAscendingCellStyle BackColor="#FEFCEB" />
                  <SortedAscendingHeaderStyle BackColor="#AF0101" />
                  <SortedDescendingCellStyle BackColor="#F6F0C0" />
                  <SortedDescendingHeaderStyle BackColor="#7E0000" />
                  
              </asp:GridView>
              <br />
              <asp:Label Font-Bold="True" ForeColor="#FFFFCC" ID="lblTrackStatus" runat="server" Text=""></asp:Label>
              <br />
              <asp:DataList ID="dlProducts" runat="server" RepeatColumns="1" Width="600px" Font-Bold="false">
                                        <ItemTemplate>
                                            <div align="left">

                                                <table cellspacing="1" class="style4" style="border: 1px ridge #9900FF">
                                               
                                                    <tr>
                                                        <td style="border-bottom-style:ridge; border-width:1px; border-color:#000000; background-color: Teal">
                                                            <h3 class="profile-title">Name:<asp:Label ID="lblProductname" runat="server" Text='<%# Eval("productname") %>'></asp:Label></h3>
                                                             <asp:HiddenField ID="hfProductID" runat="server" Value='<%# Eval("productid") %>' />
                                                            <br />
                                                            <img runat="server"  alt="" src='<%# Bind("PImage") %>'  id="imgProductPhoto" style="border: ridge 1px black;width: 150px; height: 100px; text-align:center" />
                                                            <br />
                                                            <h3 class="profile-title">Price:<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("unitprice") %>'></asp:Label></h3>
                                                            <br />
                                                            <h3 class="profile-title">Weight:<asp:Label ID="Label2" runat="server" Text='<%# Eval("weight") %>'></asp:Label></h3>
                                                            <br />
                                                            <h3 class="profile-title">Stock:<asp:Label ID="Label3" runat="server" Text='<%# Eval("stock") %>'></asp:Label></h3>
                                                            <br />
                                                            

                                                        </td>
                                                       
                                                    </tr>
                                                    
                                                    
                                                </table>
                                            </div>
                                        </ItemTemplate>
                                        <ItemStyle Width="33%" />
                                    </asp:DataList>
                                    <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
              <asp:ImageButton ID="ImageButton1" runat="server" 
                  ImageUrl="~/images/click-go-back-button.png" Width="250px" 
                  onclick="ImageButton1_Click" />
                                </asp:Panel>
           


          </div>   
    </div>   
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

