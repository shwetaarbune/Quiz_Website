﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form9.aspx.cs" Inherits="Quizwebsite.form9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:aqua;font-size:30px" onload="startcountdown(30)">
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
    <form id="form1" runat="server">
        <div style="background-color:aqua;font-size:30px">
            <asp:Label ID="timerlabel" runat="server" Text="Label" ForeColor="Red"></asp:Label>

            <table align="center" style="height: 219px; margin-top: 162px; width: 583px;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="9.Overloaded functions are …"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="RadioButton1" GroupName="quiz9" runat="server" text=" functions having same variables" OnCheckedChanged="RadioButton1_CheckedChanged"/><br />
                        <asp:RadioButton ID="RadioButton2"  GroupName="quiz9" runat="server" Text="many functions in the program" OnCheckedChanged="RadioButton2_CheckedChanged" /><br />
                        <asp:RadioButton ID="RadioButton3" GroupName="quiz9"  runat="server" text="more than one function having same name" OnCheckedChanged="RadioButton3_CheckedChanged"/><br />
                        <asp:RadioButton ID="RadioButton4" GroupName="quiz9"  runat="server" text=" function having global variables" OnCheckedChanged="RadioButton4_CheckedChanged"/><br />


                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Check" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="Next" OnClick="Button3_Click" />


                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
