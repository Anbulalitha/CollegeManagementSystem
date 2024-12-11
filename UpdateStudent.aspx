<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="CollegeManagementSystem.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        body {
}
.container {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    font-family: Arial, sans-serif;
    background-color:mediumpurple;
    border:1px solid black;
    border-radius:10px;
    margin-top:100px;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input {
    width: 100%;
    padding: 8px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <h1>Update Student</h1>
<div class="form-group">
    <label for="student-id">Student id</label>
    <asp:TextBox ID="studid" runat="server" placeholder="Your id" required></asp:TextBox>
   
</div>
     <div class="form-group">
         <label for="student-name">Student Name</label>
         <asp:TextBox ID="studname" runat="server" placeholder="Your name" required></asp:TextBox>
      
     </div>

           <div>
               <label for="department">Department</label>
               <asp:DropDownList ID="ddlist" runat="server" Height="42px" Width="518px">
                   <asp:ListItem>EC</asp:ListItem>
                   <asp:ListItem>EEE</asp:ListItem>
                   <asp:ListItem>Mechanical</asp:ListItem>
                   <asp:ListItem>Civil</asp:ListItem>
                   <asp:ListItem>Computer Science</asp:ListItem>
                   <asp:ListItem>MBA</asp:ListItem>
                   <asp:ListItem>MCA</asp:ListItem>
                   <asp:ListItem></asp:ListItem>
               </asp:DropDownList>
           </div>
                  <div class="form-group">
    <label for="Phno">
                      <br />
                      <br />
                      Phone Number<br />
                      </label>
                      &nbsp;<asp:TextBox ID="phno" runat="server" placeholder="Your Ph Number" required></asp:TextBox>
    
</div>

   <asp:Button ID="btn" runat="server" Text="Update" CssClass="btn-submit" OnClick="btn_Click" />

               <br />

               

 </div>
</asp:Content>
