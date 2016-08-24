<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Registered_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
    Καλάθι Αγορών</h2>
<h2>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    </h2>
<h2>
    &nbsp;</h2>
    <h2>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="ProdctID" 
            DataSourceID="SqlDataSource1" Height="50px" Width="272px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="ProdctID" HeaderText="ProdctID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ProdctID" />
                <asp:BoundField DataField="Name" HeaderText="Όνομα" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringProd %>" 
            SelectCommand="SELECT * FROM [Product] WHERE ([ProdctID] = @ProdctID)">
            <SelectParameters>
                <asp:SessionParameter Name="ProdctID" SessionField="ProductID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
</h2>
</asp:Content>

