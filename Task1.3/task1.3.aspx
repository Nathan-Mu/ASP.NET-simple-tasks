<!-- Dongyu Zhao 27356094 -->

<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <!-- set background color and make the text in center -->
    <style type="text/css">
        h1 {background-color:greenyellow;text-align:center}
        h2 {background-color:yellow;text-align:center}
        p1 {text-align:center}
    </style>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- set font, color and content respectively -->
        <h1 style="font-family:'Times New Roman';color:mediumpurple;font-size:200%">Register Form</h1>
        <h2 style="font-family:'Times New Roman';color:black;font-size:150%">FIT5032 Task 1.3</h2>
        <!-- insert table -->
        <table align="center">
            <!-- first row -->
            <tr>
                <td style="font-family:Calibri">
                    Name:
                </td>
                <!-- insert input box -->
                <td>
                    <input type="text" name="name" value="" />
                </td>
            </tr>
            <!-- second row -->
            <tr>
                <td style="font-family:Calibri">
                    Address:
                </td>
                <!-- insert input box -->
                <td>
                    <input type="text" name="address" value="" />
                </td>
            </tr>
            <!-- third row -->
            <tr>
                <td style="font-family:Calibri">
                    Gender:
                </td>
                <!-- insert radio to enable user choose one of the options -->
                <td>
                    <input type="radio" name="gender" value="male" /> Male <input type="radio" name="gender" value="female" /> Female
                </td>
            </tr>
        </table><br />
        <!-- insert button -->
        <center><button>Register</button></center>
    </div>
    </form>
</body>
</html>

