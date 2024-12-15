<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ALUMNI_SIGNUP.aspx.cs" Inherits="YuvaConnect.ALUMNI_SIGNUP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
* {
  font-family: Arial, sans-serif;
  background-size: cover;
}

.wizard-container {
  width: 70%;
  margin: 0px auto;
  background: #fff;
  border-radius: 10px;
  padding: 20px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

.wizard-header { 
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    text-align:center;
    margin-top:10px;
    letter-spacing:2px;
} 
 
.wizard-step { 
    height:300px;
    width:900px;
  display: flex;
  justify-content: space-between;
  margin-top: 20px;
}

.form-section { 
    height:300px;
    width:500px;
}

.form-row1 {  
  width:650px;
  display: flex;
  gap: 20px;
  margin-bottom: 15px;
}

.form-row {  
  width:900px;
  display: flex;
  gap: 20px;
  margin-bottom: 15px;
}

.form-group {
  flex: 1;
}

.form-group label {
  font-weight: bold;
  margin-bottom: 5px;
  display: block;
}

.form-control { 
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}


.image-upload { 
  width: 200px; 
  text-align: center;
}

.img-preview {
  height: 100px;
  width: 100px;
  border-radius: 50%;
  border: 1px solid #ccc;
  margin-bottom: 15px; 
}

.file-upload {
  height:25px;
  width:200px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius:5px;
}

.btn-upload {
  background-color: #801717;
  color: white;
  padding:5px 10px;
  border: none; 
  cursor: pointer;
}

.btn-upload:hover {
  background-color: #a02020;
}

.lbl_div{
    margin-top:10px;
}

.btns {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #801717;
            color: white;
            border: none; 
            cursor: pointer;
}

.btns:hover {
     background-color: #a02020;
}

.wizard-navigation {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align:center;
    background-color: #f8f9fa; /* Light gray background */ 
    border-bottom: 1px solid #ddd; /* Subtle bottom border */
    list-style: none; /* Remove bullets */
    margin: 0; 
}

.wizard-navigation .wizard-step {
    height: 50px; /* Set consistent button height */
    line-height: 50px; /* Align text vertically */ 
    font-size: 16px; /* Larger text for readability */
    font-weight: 500;
    color: #fff; /* Neutral text color for inactive steps */
    text-align: center;
    text-decoration: none; /* Remove underline for links */
    border: 1px solid transparent; /* Base border for hover effect */
    border-radius: 5px 5px 0 0; /* Rounded top corners for classic tab effect */
    background-color: transparent; /* Transparent inactive background */ 
    cursor: pointer;
    margin:0;
}

.wizard-navigation .wizard-step:hover {
    background-color: #e9ecef; /* Light hover effect */
    border-color: #ddd; /* Slightly visible border on hover */
}
.wizard-navigation .wizard-step a{
    color:#801717;
    text-decoration:none;
    width:100%;
}
.wizard-navigation .wizard-step.active {
    color: #fff; /* White text for active step */
    background-color: #e9ecef; /* Highlighted active background */
    border-color: #801717; /* Border matches background */
    font-weight: bold;
    border-bottom: none; /* Seamless connection with content below */
} 

.wizard-navigation .wizard-step.disabled {
    color: #fff; /* Disabled text color */
    cursor: not-allowed; /* Indicate it's unclickable */
    pointer-events: none; /* Prevent interaction */
} 

.step-content {
    margin-top: 20px; 
}

 </style>
 
    <h1 class="wizard-header">ALUMNI REGISTRATION</h1> 
    <div class="wizard-container">  
    <div class="wizard-navigation">
    <asp:Repeater ID="WizardStepsRepeater" runat="server" OnItemCommand="WizardStepsRepeater_ItemCommand">
        <ItemTemplate>
            <div class='wizard-step <%# ((Wizard1.ActiveStepIndex == Container.ItemIndex) ? "active" : "") %>'>
                <asp:LinkButton ID="LK" CommandName="GoToStep" CommandArgument='<%# Container.ItemIndex %>' runat="server">
                    <%# Container.DataItem %>
                </asp:LinkButton>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>


   <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="false" ActiveStepIndex="0" OnNextButtonClick="Wizard1_NextButtonClick" OnPreviousButtonClick="Wizard1_PreviousButtonClick" OnFinishButtonClick="Wizard1_FinishButtonClick">  
    <NavigationButtonStyle CssClass="btns" />
       <WizardSteps>
 <asp:WizardStep ID="Step1" Title="Personal Details" runat="server">
    <div class="wizard-step">
    <div class="form-section">
      <div class="form-row1">
        <div class="form-group">
          <label for="txtFirstName">First Name:</label>
          <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtLastName">Last Name:</label>
          <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
      <div class="form-row1">
        <div class="form-group">
          <label for="txtUsername">Username:</label>
          <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtEmail">Email:</label>
          <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
      <div class="form-row1">
        <div class="form-group">
          <label for="txtPassword">Password:</label>
          <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtConfirmPassword">Confirm Password:</label>
          <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
    </div>
    <div class="image-upload">
      <asp:Image ID="Image1" runat="server" CssClass="img-preview" AlternateText="No preview" ImageUrl="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png" />
      <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload"/>
      <asp:Button ID="btnUpload" runat="server" Text="Save" CssClass="btn-upload" OnClick="btnsave_Click"/> 
      <div class="lbl_div">
      <asp:Label ID="lblmessage" runat="server" Text="Select a File to Upload." CssClass="lbl"/>
      </div>
    </div>
  </div> 
</asp:WizardStep>
                 
 <asp:WizardStep ID="Step2" Title="Academic Details" runat="server">
  <div class="wizard-step">
    <div class="form-section">
      <div class="form-row">
        <div class="form-group">
          <label for="txtStream">Stream:</label>
          <asp:TextBox ID="txtStream" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtBranch">Branch:</label>
          <asp:TextBox ID="txtBranch" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group">
          <label for="txtBatchYear">Batch Year:</label>
          <asp:TextBox ID="txtBatchYear" runat="server" CssClass="form-control"></asp:TextBox>
        </div> 
      </div>
      <div class="form-row">
        <div class="form-group">
          <label for="txtCollege">College:</label>
          <asp:TextBox ID="txtCollege" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
    </div>
  </div>
</asp:WizardStep>
 
<asp:WizardStep ID="Step3" Title="Professional Details" runat="server">
  <div class="wizard-step">
    <div class="form-section">
      <div class="form-row">
        <div class="form-group">
          <label for="txtCompany">Company Name:</label>
          <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtDesignation">Designation:</label>
          <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group">
          <label for="txtLocation">Location :</label>
          <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control"></asp:TextBox>
        </div>  
      </div>
    </div>
  </div>
</asp:WizardStep>

<asp:WizardStep ID="Step4" Title="Skills" runat="server">
  <div class="wizard-step">
    <div class="form-section">
      <div class="form-row">
        <div class="form-group">
          <label for="txtSkill1">Skill 1:</label>
          <asp:TextBox ID="txtSkill1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtSkill2">Skill 2:</label>
          <asp:TextBox ID="txtSkill2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group">
          <label for="txtSkill3">Skill 3:</label>
          <asp:TextBox ID="txtSkill3" runat="server" CssClass="form-control"></asp:TextBox>
        </div> 
        <div class="form-group">
          <label for="txtLinkedIn">LinkedIn URL:</label>
          <asp:TextBox ID="txtLinkedIn" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group">
          <label for="txtAbout">About:</label>
          <asp:TextBox ID="txtAbout" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
    </div>
  </div>
</asp:WizardStep>

                 
<asp:WizardStep ID="Step5" Title="Done" runat="server">
  <div class="wizard-step">
    <div class="form-section">
        <div class="form-group">
            <div class="wizard-step-title">Registration Complete</div>
            <p>Thank you for registering!</p>
        </div>
      </div>
    </div> 
</asp:WizardStep>

</WizardSteps>
</asp:Wizard> 
        </div>
</asp:Content>
