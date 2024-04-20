<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP7_Mails_DelCastilloDavid._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
      <h1 style="width: 348px">TP7</h1>
      <p class="lead" style="text-align: center"> Trabajo de Mails </p>
      <table class="nav-justified" style="width: 57%" >
          <tr class="text-center" >
              <td class="td1" ; style="width: 176px">
                  
                  Casilla de Mail</td>
              <td style="width: 576px">
            
              </td>
          </tr>

          <tr class="text-center">
              <td class ="td1" style="height: 111px; width: 176px">
                  <br />
                  De<br />
                  Para
                  <br />
                  Asunto<br />
                  Mensaje</td>
              <td class ="td1" style=="height: 111px; width: 576px">
                  <asp:TextBox ID="TxtFrom" runat="server" Width="170px"></asp:TextBox>
                  <br />
                  <asp:TextBox ID="TxtTo" runat="server" Width="170px"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtTo" ErrorMessage="Error. Ingrese un formato de mail valido." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="IndianRed"></asp:RegularExpressionValidator>
                  <br />
                  <asp:TextBox ID="TxtSubject" runat="server" Width="170px"></asp:TextBox>
                  </td>
          </tr>
           </table>

        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="TxtBody" runat="server" Width="437px" Height ="81px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Enviar" Width="95px" Style="margin-left: 30px" OnClick="Button1_Click"/>
                <asp:Label ID="Label1" runat="server" Text="Se ha enviado correctamente" Style="color: darkgreen; margin-left: 80px" Visible="False"></asp:Label>
                <br />

         </div>


      </div>

    </div>
</asp:Content>
