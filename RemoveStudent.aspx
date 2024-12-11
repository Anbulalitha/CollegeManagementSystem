<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RemoveStudent.aspx.cs" Inherits="CollegeManagementSystem.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
     body {
         margin: 0;
         padding: 0;
         background-color: #f4f4f4;
     }

     .container {
         width: 80%;
         margin: 20px auto;
         padding: 20px;
         background-color:yellowgreen;
         box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
         border-radius: 8px;
     }

     h2 {
         color: #333333;
         margin-bottom: 20px;
     }

     .doctor-card {
         padding: 15px;
         margin-bottom: 20px;
         border: 1px solid #ddd;
         border-radius: 8px;
         background-image:linear-gradient(violet,pink,white);
     }

     .btn {
         background-color: black;
         color: white;
         padding: 5px 10px;
         border: none;
         border-radius: 4px;
         cursor: pointer;
     }
     .btn-update {
         background-color: black;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <h2>Remove or Update Student</h2>
     <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" ItemStyle-VerticalAlign="Top" >
         <ItemTemplate>
             <div class="doctor-card">
                 <p><strong>ID:</strong> <%# Eval("Studentid") %></p>
                 <p><strong>Name:</strong> <%# Eval("StudentName") %></p>
                
                 <p><strong>Department:</strong> <%# Eval("Department") %></p>
                 <p><strong>Phone Number:</strong> <%# Eval("PhNo") %></p>
                 <asp:LinkButton ID="btnDelete" runat="server" Text="Delete" CommandArgument='<%# Eval("Studentid") %>' OnClick="btnDelete_Click" CssClass="btn" />
                 <asp:LinkButton ID="btnUpdate" runat="server" Text="Update" CommandArgument='<%# Eval("Studentid") %>' OnClick="btnUpdate_Click" CssClass="btn btn-update" />
             </div>
         </ItemTemplate>
     </asp:DataList>
 </div>
</asp:Content>
