<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rechercher.aspx.cs" Inherits="Tabaraa.Rechercher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row ">
           <div class="col-md-4 offset-md-4">
                <center> <img src="img/Logo.png" style='height: 200px; ' /></center>
            </div>
        </div>
        <form id="form1" runat="server">
            <div class="alert alert-success" role="alert">
                A simple success alert—check it out!
            </div>
            <center><div class="row mt-5">
                <div class="col-sm">
                    Choisir Une Région:
                    <asp:DropDownList ID="DropDownList1" Class="form-control" runat="server"
                        DataSourceID="SqlDataSourceRegion" DataTextField="Nom_region" DataValueField="ID_region">
                        <asp:ListItem>Région</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceRegion" runat="server"
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [region]"></asp:SqlDataSource>
                </div>
                <div class="col-sm">
                    Choisir Une Ville:
                    <asp:DropDownList ID="DropDownList2" Class="form-control" runat="server"
                        DataSourceID="SqlDataSourceVille" DataTextField="nom_ville" DataValueField="ID_ville">
                        <asp:ListItem>Villes</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceVille" runat="server"
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [ville] WHERE ([ID_region] = @ID_region)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="ID_region"
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-sm">
                    Choisir Un groupe Sanguin:
                    <asp:DropDownList ID="DropDownList3" Class="form-control" runat="server"
                        DataSourceID="SqlDataSourceGroueSang" DataTextField="Nom_groupe"
                        DataValueField="ID_groupe_sanguin">
                        <asp:ListItem Value="A+">Group-Sanguin</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceGroueSang" runat="server"
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [groupe_sanguin]"></asp:SqlDataSource>
                </div>
                </center>
            </div>
            <div style="width: 100%; text-align:center ; height: 100px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">
                    Trouver le donneur</button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Se Connecter</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <center>
                                    <form>
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="exampleInputEmail1"
                                                aria-describedby="emailHelp" placeholder="Enter email">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="exampleInputPassword1"
                                                placeholder="Password">
                                        </div>
                                        <asp:Button ID="Login" runat="server" class="btn btn-success" Text="Login"></asp:Button>
                                        
                                        <a href="identifier.aspx">S'insrire</a>
                            </div>
                        </div>
                    </div>
                </div>
        </form>
        </center>

        </form>

    </div>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</asp:Content>