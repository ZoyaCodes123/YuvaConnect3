 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NEW_EVENT.aspx.cs" Inherits="YuvaConnect.NEW_EVENT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .text_area{
            margin-left:50px;
        }
    </style>
    <h1>ADD NEW EVENT</h1>
      <div class="text_area">
      <br />
      <asp:Label ID="Label1" runat="server" Text="EVENT NAME :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label2" runat="server" Text="STREAM :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label3" runat="server" Text="BRANCH :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label4" runat="server" Text="LOCATION :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label5" runat="server" Text="INFO :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label6" runat="server" Text="STARTDATE :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox6" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label7" runat="server" Text="ENDDATE :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox7" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label8" runat="server" Text="STARTTIME :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox8" runat="server" Width="200px" TextMode="Time"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label9" runat="server" Text="ENDTIME :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox9" runat="server" Width="200px" TextMode="Time"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label10" runat="server" Text="STARTDAY :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label11" runat="server" Text="ENDDAY :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox11" runat="server" Width="200px"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label12" runat="server" Text="IMAGEURL :"></asp:Label>
      <br />
      <asp:TextBox ID="TextBox12" runat="server" Width="200px"></asp:TextBox>
      <br />
          <div />
          
        <asp:Button ID="AddEvent" runat="server" Text="Add Event" OnClick="AddEvent_Click" />
</asp:Content>
