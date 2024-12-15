<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SIGN_UP.aspx.cs" Inherits="YuvaConnect.SIGN_UP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 30px;
            margin: 50px;
        }

        .button-box {
            height: 200px;
            width: 200px;
            background-color: peachpuff;
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .button-box button {
            height: 50px;
            width: 150px;
            font-size: 16px;
            border: none;
            border-radius: 10px;
            background-color: #f08d49;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }

        .button-box button:hover {
            background-color: #f06c20;
        }
    </style>

    <div class="button-container"> 
        <div class="button-box">
            <asp:Button ID="Button1" runat="server" Text="STUDENT SIGN UP" OnClick="Button1_Click" />
        </div> 
        <div class="button-box">
            <asp:Button ID="Button2" runat="server" Text="ALUMNI SIGN UP" OnClick="Button2_Click" />
        </div>
    </div>
</asp:Content>