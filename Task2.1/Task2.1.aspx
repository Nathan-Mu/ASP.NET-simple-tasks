<!-- Dongyu Zhao 27356094-->
<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--title-->
        Daydream Holidays
        <br /><br />
        <!--label 1-->
        <asp:Label id="label1" runat="server" BackColor="Blue" 
            forecolor="Yellow" BorderWidth="5" BorderColor="Black" 
            BorderStyle="Dotted" ToolTip="Label 1">
            Hello and welcome to Daydream Holodays
        </asp:Label>
        <br /><br />
        <!--label 2-->
        <asp:Label id="label2" runat="server" BackColor="#FF3279" 
            ForeColor="#ccff99" Font-Name="Arial" BorderWidth="10" 
            BorderColor="Red" BorderStyle="Ridge" Height="50" 
            Width="450" ToolTip="Label 2">
            Our web site is under construction and will be avalidable soon
        </asp:Label>
        <br /><br />
        <asp:Button id="button" runat="server" BackColor="Black" 
            ForeColor="White" BorderWidth="10" BorderStyle="Outset" 
            Height="50" Text="Click here and nothing happens" 
            BorderColor="Gold" />
    </div>
    </form>
</body>
</html>
