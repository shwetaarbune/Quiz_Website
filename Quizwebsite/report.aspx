<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="Quizwebsite.report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 843px;
        }
        .auto-style2 {
            width: 843px;
            height: 51px;
        }
    </style>
</head>
<body style="background-color:cyan;text-align:center;font-size:30px">
    <form id="form1" runat="server">
        <div >
  
            <asp:Label ID="Label2" runat="server" Text="Correct Answers:"></asp:Label>
            <br />
            <br />
           
           <table border="2" cellpadding="0" cellspacing="0" style="width: 545px; height: 500px; margin-left: 300px;">
               <tr>
                   <td class="auto-style1">
                       1.Database
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">
                       2.Business logic
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">
                       3.All of The Above
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">
                       4.Deadlick</td>
               </tr>
               <tr>
                   <td class="auto-style2">
                       5.Print Files on paper
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">
                       6.All of the above
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">
                       7.All of the above 
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">
                       8.0 to 9
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">
                       9.many functions in the program
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">
                       10.Local Variables.
                   </td>
               </tr>
           </table>

        </div>
    </form>
    </body>
</html>
