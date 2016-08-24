<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Επιλέξτε προϊόν</h2>
    <h2>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyNames="ProdctID" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="3">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:TemplateField HeaderText="Νο.">
                   <ItemTemplate>
                       <%# Container.DataItemIndex +1 %>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Όνομα" SortExpression="Name" />
                <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Τιμή" 
                    SortExpression="Price" />
                <asp:CommandField SelectText="Λεπτομέρειες" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerSettings FirstPageText="Πρώτη" LastPageText="Τελευταία" 
                Mode="NextPreviousFirstLast" NextPageText="Επόμενη" 
                PreviousPageText="Προηγούμενη" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringProd %>" 
            SelectCommand="SELECT * FROM [Product] WHERE ([Available] = @Available)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="Available" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </h2>
<p>
        &nbsp;</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="ProdctID" DataSourceID="SqlDataSource1" 
            GridLines="Horizontal" Height="50px" Width="331px" Visible="False">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Όνομα" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Περιγραφή" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Τιμή" 
                    SortExpression="Price" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Αγορά" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
    </p>
    <h2>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Απόκρυψη" 
            Visible="False" />
</h2>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
