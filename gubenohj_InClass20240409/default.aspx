<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="gubenohj_InClass20240409._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ListBoxCssClass
        {
            color:GhostWhite;
            background-color:DarkOliveGreen;
            font-family:Courier New;
            font-size:large;
            font-style:italic;
        }
<   </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox OnSelectedIndexChanged="lbFruits_SelectedIndexChanged" ID="lbFruits" runat="server" CssClass="ListBoxCssClass" AutoPostBack="True" Height="128px" Width="107px" DataSourceID="SqLDataSourceInClass20240411" DataTextField="LastName" DataValueField="NameID">
                <asp:ListItem>Avocado</asp:ListItem>
                <asp:ListItem>Peach</asp:ListItem>
                <asp:ListItem>Plum</asp:ListItem>
                <asp:ListItem>Orange</asp:ListItem>
                <asp:ListItem>Guava</asp:ListItem>
            </asp:ListBox>
            <asp:SqlDataSource ID="SqLDataSourceInClass20240411" runat="server" ConnectionString="<%$ ConnectionStrings:IS3050ConnectionStringInClass20240409 %>" ProviderName="<%$ ConnectionStrings:IS3050ConnectionStringInClass20240409.ProviderName %>" SelectCommand="SELECT [NameID], [UserName], [LastName], [FirstName] FROM [tName]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="lblChosenFruit" runat="server" Text="Select a Fruit"></asp:Label>
    </form>
</body>
</html>
