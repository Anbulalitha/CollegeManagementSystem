<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewStudent.aspx.cs" Inherits="CollegeManagementSystem.WebForm3" %>
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
            background-color: peachpuff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            color: #333333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color:purple;
            color: white;
        }
        #btnHome{
                        background-color: lawngreen;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        #btnHome:hover{
            background-color:red;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
       <div class="container">
      <h2>View Students</h2>
      <asp:GridView ID="gvwView" runat="server" AutoGenerateColumns="True" CssClass="table" /><br /><br />
           <asp:Button ID="btnHome" runat="server" Text="Go Back" OnClick="btnHome_Click" />
  </div>
  </div>
</asp:Content>
