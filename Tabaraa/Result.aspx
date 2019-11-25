<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Tabaraa.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <form id="form1" runat="server">
    
<div class="p-3" style='width:100%; height:auto;'>
 <div class=" p-4 mb-5">
      <a type="button" href="Rechercher.aspx" class="btn btn-danger " href="Rechercher.aspx">--Rechercher--</a>
    <h1 class="text-center text-white  ">Result</h1>
   
  </div>
<%-- ffffff --%>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSourceresult">
        <ItemTemplate>
            prenom:
            <asp:Label ID="prenomLabel" runat="server" Text='<%# Eval("prenom") %>' />
            <br />
            nom:
            <asp:Label ID="nomLabel" runat="server" Text='<%# Eval("nom") %>' />
            <br />
            Nom_groupe:
            <asp:Label ID="Nom_groupeLabel" runat="server" Text='<%# Eval("Nom_groupe") %>' />
            <br />
            tel:
            <asp:Label ID="telLabel" runat="server" Text='<%# Eval("tel") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSourceresult" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT volontaire.prenom, volontaire.nom, groupe_sanguin.Nom_groupe, volontaire.tel FROM volontaire INNER JOIN groupe_sanguin ON volontaire.ID_groupe_sanguin = groupe_sanguin.ID_groupe_sanguin "></asp:SqlDataSource>

    </form>
</asp:Content>
