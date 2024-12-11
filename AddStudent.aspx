<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="CollegeManagementSystem.WebForm1" %>
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
         <h1>Add Student</h1>
<div class="form-group">
    <label for="student-id">Student id</label>
    <asp:TextBox ID="studid" runat="server" placeholder="Your id" required></asp:TextBox>
   
</div>
     <div class="form-group">
         <label for="student-name">Student Name</label>
         <asp:TextBox ID="studname" runat="server" placeholder="Your name" required></asp:TextBox>
      
     </div>
     
     <div class="form-group">
         <label for="department">Department</label>
         <asp:TextBox ID="dept" runat="server" placeholder="Your Department" required></asp:TextBox>
       
     </div>
                  <div class="form-group">
    <label for="Phno">Phone Number</label>
                      <asp:TextBox ID="phno" runat="server" placeholder="Your Ph Number" required></asp:TextBox>
    
</div>


    
            <asp:Button ID="btn" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btn_Click" />

 </div>

</asp:Content>
