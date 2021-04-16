<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Quizwebsite.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:gold; width: 662px; margin-left: 245px;text-align:center">
    <form id="form1" runat="server">
        <div style="height: 202px; margin-top: 111px;font-size:30px">
            <label>
                <br />
            ********Welcome User*********<br />
            </label>
            
            <asp:Label ID="Label2" runat="server" Text="UserName:    "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="45px" style="margin-top: 69px; margin-left: 46px;" Width="192px"></asp:TextBox>
            <label>
                <br />
                Password:
            </label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 72px; margin-top: 62px;" Height="45px" Width="210px"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" style="margin-left: 207px; margin-top: 72px" Width="165px" Height="42px" OnClick="Button1_Click" />
           
        </div>
        
    </form>
</body>
</html>
