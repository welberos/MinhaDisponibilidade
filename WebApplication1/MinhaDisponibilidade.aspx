<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MinhaDisponibilidade.aspx.cs" Inherits="WebApplication1.MinhaDisponibilidade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Minha Disponibilidade</title>

    <style type="text/css" >

        .container {
            display: flex;
            justify-content: center;
            height: 100vh;
            align-items: center;
        }

        .panel-style{
            border: 1px solid #ccc;
            background-color: #e7bebe;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 2px 2px 5px #c1002d;
            display: flex;
            flex-direction: column;
            justify-content: center;
            
            align-items: center;
            width: 175px;
        }
        .buton-style {
            border-radius: 5px;
            cursor: pointer;
            border: none;
            padding: 10px 20px;
            margin-bottom: 10px;
            background-color: #5f2a91;
            justify-content: center;
            margin-top:10px;
            
        } 
        .pnlP-style{
            display: flex;
            flex-direction: column;
            align-items: center;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Panel ID="PnlPrincipal" runat="server" CssClass="pnlP-style">
                <h1>
                    <asp:Label ID="Label1" runat="server" CssClass="titulo-style" Text="Label">DIAS DA SEMANA</asp:Label>
                </h1>
                <asp:Panel ID="pnlSelecao" runat="server" CssClass="panel-style">
                    <asp:CheckBoxList ID="chkDiasDiponivel" runat="server">
                        <asp:ListItem Text="Domingo" Value="Domingo" />
                        <asp:ListItem Text="Segunda-feira" Value="Segunda-feira" />
                        <asp:ListItem Text="Terça-feira" Value="Terça-feira" />
                        <asp:ListItem Text="Quarta-feira" Value="Quarta-feira" />
                        <asp:ListItem Text="Quinta-feira" Value="Quinta-feira" />
                        <asp:ListItem Text="Sexta-feira" Value="Sexta-feira" />
                        <asp:ListItem Text="Sábado" Value="Sábado" />
                    </asp:CheckBoxList>
                </asp:Panel>
                <asp:Panel ID="pnlListaSemana" runat="server" >
                    <br />
                    <asp:Label ID="lblTDias" runat="server" Text="" style="text-align: center"></asp:Label>
                    <br />
                    <asp:Label ID="lblDiasSelecionados" runat="server" Text="" style="text-align: center"></asp:Label>
                   
                </asp:Panel>
                <asp:Button ID="btnMostrarDiasSelec" runat="server" Text="Mostrar minha seleção" style="background-color: #FF5050" OnClick="btnMostrarDiasSelec_Click" CssClass="buton-style"/>
            </asp:Panel>
        </div>
    </form>
    
</body>
</html>
