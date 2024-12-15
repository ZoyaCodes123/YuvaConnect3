<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="STUDENT.aspx.cs" Inherits="YuvaConnect.STUDENT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <title>Student Profiles</title>
    <style>
        .profile-container {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr)); 
    gap: 20px;
    justify-items: center; 
    margin-top: 20px;
    margin-left:170px;
    margin-right:20px;
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
.profile-details h2 {
    margin: 10px 0;
    font-size: 22px;
    font-weight: bold;
    color: #333;
    text-align: center;
}

.profile-details p {
    margin: 5px 0;
    font-size: 14px;
    color: #555;
}

/* Skills container */
.skills-container {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    justify-content: center;
    margin-bottom: 15px;
}

    .skills-container .skill {
        display: inline-block;
        padding: 8px 15px;
        border-radius: 20px;
        font-size: 14px;
        font-weight: bold;
        margin: 5px;
        text-transform: capitalize;
        border: 3px solid #f28b82;
    }

    /* Additional button styles */
    .skills-container .skill-button {
        background-color: #f28b82;
        color: white;
        padding: 8px 15px;
        border-radius: 20px;
        font-size: 14px;
        font-weight: bold;
        text-transform: capitalize;
        border: 3px solid #f28b82;
        transition: transform 0.3s ease, background-color 0.3s ease;
    }

        .skills-container .skill-button:hover {
            background-color: #d16b5d;
            transform: translateY(-3px);
        }
    .skills-container .skill-button {
        background-color: #f28b82;
        color: white;
        padding: 8px 15px;
        border-radius: 20px;
        font-size: 14px;
        font-weight: bold;
        text-transform: capitalize;
        border: 3px solid #f28b82;
        transition: transform 0.3s ease, background-color 0.3s ease;
    }

        .skills-container .skill-button:hover {
            background-color: #d16b5d;
            transform: translateY(-3px);
        }

/* LinkedIn button styling */
.view-profile {
    display: inline-block;
    background-color: #E63946; /* LinkedIn blue */
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    text-align: center;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    text-decoration: none;
    transition: background-color 0.3s, transform 0.3s ease-in-out;
}

    view-profile:hover {
        background-color: #005582; /* Darker blue for hover */
        transform: translateY(-3px); /* Lift effect on hover */
    }

    .view-profile:focus {
        outline: none;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.7); /* Focus effect */
    }

    </style>  
    <h1  style="text-align:center">Student Profiles</h1>
        <div class="profile-container">
            <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <div class="profile-card">
                        <div class="image-container">
                            <img src='<%# Eval("IMAGE_URL") %>' alt="Profile Picture" />
                        </div>
                        <div class="profile-details">
                            <h2><%# Eval("NAME") %></h2>
                            <p>Branch: <%# Eval("BRANCH") %></p>
                            <p>Stream: <%# Eval("STREAM") %></p>
                        </div>
                        <div class="skills-container">
                           <%# Eval("SKILL1") != null && Eval("SKILL1").ToString() != "" ? 
                            string.Join(" ", Eval("SKILL1").ToString().Split(',').Select(skill => $"<span class='skill'>{skill.Trim()}</span>")) : "" %>

                        <%# Eval("SKILL2") != null && Eval("SKILL2").ToString() != "" ? 
                            string.Join(" ", Eval("SKILL2").ToString().Split(',').Select(skill => $"<span class='skill'>{skill.Trim()}</span>")) : "" %>

                        <%# Eval("SKILL3") != null && Eval("SKILL3").ToString() != "" ? 
                            string.Join(" ", Eval("SKILL3").ToString().Split(',').Select(skill => $"<span class='skill'>{skill.Trim()}</span>")) : "" %>
                         </div>
                        <asp:LinkButton CommandName="Select" CommandArgument='<%# Eval("STUDENT_ID") %>' runat="server" CssClass="view-profile">
                            View Profile
                        </asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div> 

    </asp:Content>