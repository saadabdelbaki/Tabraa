<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="identifier.aspx.cs" Inherits="Tabaraa.identifier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <center><form id="form1" runat="server" method="post" class="p-5">
        <div class="container">
            <center>
                <h1>
                    Devinir un donneur</h1>
            </center>
            <div class="row align-items-center">

                <div class="col">

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <asp:TextBox type="text" name="nom" class="form-control" runat="server" ID="nom" placeholder="Nom"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                             <asp:TextBox type="text" name="prenom" class="form-control" runat="server" ID="prenom" placeholder="prenom"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                             <asp:TextBox type="number" name="age" class="form-control" runat="server" ID="age" placeholder="Age"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                             <asp:TextBox type="email" name="email" class="form-control" runat="server" ID="email" placeholder="email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">

                        <div class="form-group col-md-6">
                             <asp:TextBox type="number" name="tel" class="form-control" runat="server" ID="télephone" placeholder="Télephone"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <asp:TextBox type="text" name="cin" class="form-control" runat="server" ID="cin" placeholder="CIN"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <asp:TextBox type="password" name="password" class="form-control" runat="server" ID="password" placeholder="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="inputState">Region:</label>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"
                                DataSourceID="SqlDataSourceRegion" DataTextField="Nom_region"
                                DataValueField="ID_region">
                                <asp:ListItem Value="7"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceRegion" runat="server"
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT * FROM [region]"></asp:SqlDataSource>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">Ville:</label>
                            <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server"
                                DataSourceID="SqlDataSourceVille" DataTextField="nom_ville" DataValueField="ID_ville" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">

                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceVille" runat="server"
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT * FROM [ville] WHERE ([ID_region] = @ID_region)" OnSelecting="SqlDataSourceVille_Selecting1">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="ID_region"
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">Groupe sanguin:</label>
                            <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server"
                                DataSourceID="SqlDataSourceGroupSang" DataTextField="Nom_groupe"
                                DataValueField="ID_groupe_sanguin">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceGroupSang" runat="server"
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT * FROM [groupe_sanguin]"></asp:SqlDataSource>
                            
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
        <asp:Button ID="Button1" CssClass="form-control  bg-success text-white" runat="server" Text="Devinir un donneur" OnClick="Button1_Click" />
    </form></center>
</asp:Content>