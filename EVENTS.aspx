<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EVENTS.aspx.cs" Inherits="YuvaConnect.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .event-container {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 20px;
    justify-items: center;
    margin-top: 20px;
    margin-left:160px;
}


.profile-card {
    background-color: #ffffff;
    border: 2px solid #f28b82;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: column;
    padding: 20px;
    align-items: center;
    transition: transform 0.3s, box-shadow 0.3s;
    width: 100%;
    box-sizing: border-box;
}

    .profile-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
    }

/* Image container */
.image-container {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    overflow: hidden;
    border: 2px solid #f28b82;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 15px;
}

    .image-container img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

/* Profile details */
.event-details h2 {
    margin: 10px 0;
    font-size: 22px;
    font-weight: bold;
    color: #333;
    text-align: center;
}

.event-details p {
    margin: 5px 0;
    font-size: 14px;
    color: #555;
} 
.addbtn{
    height:30px; 
    background-color:maroon;
    color:aliceblue;
    margin-left:1100px; 
    margin-bottom:20px;
}
h1 {
    text-align: center;
}

    </style>
   
        <h1 style="text-align: center; font-size: 2.5rem; color: #333; margin-bottom: 20px;">Events</h1>

        <div style="text-align: center; margin-bottom: 30px;">
            <asp:DropDownList ID="ddlBranch" runat="server">
                <asp:ListItem Text="--Select Type--" Value=""></asp:ListItem>
                <asp:ListItem Text="Workshop" Value="WORKSHOP"></asp:ListItem>
                <asp:ListItem Text="Seminar" Value="SEMINAR"></asp:ListItem>
                <asp:ListItem Text="Cultural" Value="CULTURAL"></asp:ListItem>
                <asp:ListItem Text="Sports" Value="SPORTS"></asp:ListItem>
            </asp:DropDownList>

            <asp:TextBox ID="txtSearch" runat="server" Width="200px" Placeholder="Search by Name" CssClass="textBoxStyle"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </div>

            <div class="event-container">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="profile-card">
                            <div class="image-container">
                                <img src='<%# Eval("IMAGEURL") %>' alt="Profile Picture" />
                            </div>
                            
                            <div class="event-details">
                                <h2><%# Eval("EVENT_NAME") %></h2>
                                <p><b>Type:</b> <%# Eval("EVENT_TYPE") %></p>
                                <p><b>Date:</b> <%# Eval("STARTDATE", "{0:MM/dd/yyyy}") %></p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        <div class="addeve">
            <asp:Button ID="Button1" runat="server" Text="ADD NEW EVENT" OnClick="addEvent_Click" CssClass="addbtn"/> 
        </div>
</asp:Content>
