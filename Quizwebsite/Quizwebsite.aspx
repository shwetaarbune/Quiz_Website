<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quizwebsite.aspx.cs" Inherits="Quizwebsite.Quizwebsite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 117px;
          
            background-color:aqua;
        }
    </style>
</head>
<body style="font-size:30px; background-color:aqua" onload="startcountdown(30);" >
    <script>
        function startcountdown(timeleft) {
            var interval = setInterval(countdown, 1000);
            update();

            function countdown() {
                if (--timeleft > 0) {
                    update();
                }
                else {
                    clearInterval(interval);
                    update();
                    completed();
                }


            }
            function update() {
                hours = Math.floor(timeleft / 3600);
                minutes = Math.floor((timeleft % 3600) / 60);
                seconds = timeleft % 60;
                document.getElementById('timerlabel').innerHTML = ' ' + hours + ':' + minutes + ':' + seconds;
                if (seconds !== -1) {
                    setTimeout('update()', 1000);
                }
                else {
                    window.location.href = "form2.aspx?timeout=1"
                }


            }
            function completed() {
                document.write("Done with the question , please move to the next question");
            }
        }
    </script>
    <form id="form1" runat="server" >
        <div style="background-color:aqua; height: 98px; font-size:30px">
            <asp:Label runat="server" Text="Advance Database MCQ Test" align="center"></asp:Label><br />
            <asp:Label ID="timerlabel" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            
        </div>
            <table align="center" style="height: 219px; margin-top: 162px; width: 583px;"> 
            
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="What is a repository of data, intended to assist proficient storage of data, retrieval and preservation called?"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:RadioButton GroupName="Quiz" ID="RadioButton1" runat="server" text="DBMS" OnCheckedChanged="RadioButton1_CheckedChanged1" /><br />
                        <asp:RadioButton GroupName="Quiz" ID="RadioButton2" runat="server" text="ADBMS" OnCheckedChanged="RadioButton2_CheckedChanged"/><br />
                        <asp:RadioButton GroupName="Quiz" ID="RadioButton3" runat="server" text="Database" OnCheckedChanged="RadioButton3_CheckedChanged"/><br />
                        <asp:RadioButton GroupName="Quiz" ID="RadioButton4" runat="server" text="RDBMS" OnCheckedChanged="RadioButton4_CheckedChanged"/><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Height="25px" />
                        <asp:Button ID="Button2" runat="server" Text="Check" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="Next" OnClick="Button3_Click" />
                    </td>
                </tr>

            </table>
        
    </form>
</body>
</html>
