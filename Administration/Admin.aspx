<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Administration_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>
    &nbsp;</h1>
<h1>
    Σελίδα Διαχείρισης</h1>
    <h1>
        &nbsp;</h1>
    <h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ProdctID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProdctID" HeaderText="ProdctID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ProdctID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:CheckBoxField DataField="Available" HeaderText="Available" 
                    SortExpression="Available" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringProd %>" 
            DeleteCommand="DELETE FROM [Product] WHERE [ProdctID] = @original_ProdctID AND [Name] = @original_Name AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Price] = @original_Price AND (([Available] = @original_Available) OR ([Available] IS NULL AND @original_Available IS NULL))" 
            InsertCommand="INSERT INTO [Product] ([Name], [Description], [Price], [Available]) VALUES (@Name, @Description, @Price, @Available)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Product]" 
            UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Description] = @Description, [Price] = @Price, [Available] = @Available WHERE [ProdctID] = @original_ProdctID AND [Name] = @original_Name AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Price] = @original_Price AND (([Available] = @original_Available) OR ([Available] IS NULL AND @original_Available IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProdctID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Available" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Available" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Available" Type="Boolean" />
                <asp:Parameter Name="original_ProdctID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Available" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
</h1>
</asp:Content>

