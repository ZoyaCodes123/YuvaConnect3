﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="STUDENT_LIST.aspx.cs" Inherits="YuvaConnect.STUDENT_LIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 style="margin-left:400px">STUDENT DATA</h1>
   <asp:GridView ID="GridView1" runat="server" CssClass="styled-grid" 
    HeaderStyle-CssClass="grid-header" RowStyle-CssClass="grid-row" 
    AlternatingRowStyle-CssClass="grid-alt-row" AutoGenerateColumns="false" 
    Width="100%" BorderStyle="Solid" BorderWidth="1px" CellPadding="10">
    
    <Columns>
        <asp:TemplateField HeaderText="Profile Picture">
            <ItemTemplate>
                <asp:Image ID="ProfileImage" runat="server" ImageUrl='<%# Eval("IMAGE_URL") %>' Height="50px" Width="50px" BorderStyle="Solid" BorderWidth="1px" />
            </ItemTemplate>
        </asp:TemplateField>
        
        <asp:BoundField DataField="ID" HeaderText="S.No." />
        <asp:BoundField DataField="STUDENT_ID" HeaderText="Student ID" />
        <asp:BoundField DataField="NAME" HeaderText="First Name" />
        <asp:BoundField DataField="LASTNAME" HeaderText="Last Name" />
        <asp:BoundField DataField="USERNAME" HeaderText="Username" />
        <asp:BoundField DataField="PASSWORD" HeaderText="Password" />
        <asp:BoundField DataField="STREAM" HeaderText="Stream" />
        <asp:BoundField DataField="BRANCH" HeaderText="Branch" />
        <asp:BoundField DataField="STARTING_YEAR" HeaderText="Starting Year" />
        <asp:BoundField DataField="ENDING_YEAR" HeaderText="Ending Year" />
        <asp:BoundField DataField="COLLEGE" HeaderText="College" />
        <asp:BoundField DataField="EMAIL_ID" HeaderText="Email ID" />
        <asp:BoundField DataField="LINKEDIN_LINK" HeaderText="LinkedIn LINK" />
        <asp:BoundField DataField="SKILL1" HeaderText="Skills" />
        <asp:BoundField DataField="SKILL2" HeaderText="Skills" />
        <asp:BoundField DataField="SKILL3" HeaderText="Skills" />
    </Columns>
</asp:GridView>

<style>
    .styled-grid {
        margin-left:155px;
        border-collapse: collapse; 
        font-size: 18px;
        min-width: 600px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }

    .styled-grid th {
        background-color: #4CAF50;
        color: white;
        text-align: center;
        padding: 12px 15px;
    }

    .styled-grid td {
        padding: 12px 15px;
        color: #333;
    }

    .styled-grid tr:nth-child(even) {
        background-color: #f3f3f3;
    }

    .styled-grid tr:hover {
        background-color: #ddd;
    }

    .grid-header {
        font-weight: bold;
        background: #4CAF50;
        color: white;
    }

    .grid-row {
        background: #ffffff;
    }

    .grid-alt-row {
        background: #f9f9f9;
    }
</style>

    </asp:Content>
