<!--Dongyu Zhao 27356094-->

<%@ Page Language="C#" %>
<!DOCTYPE html>

<script runat="server">
    void Page_Load()
    {
        //set the label unvisible when the page is firstly opened
        label4.Visible = false;

        //if it is postback, the label will appear and the text will be changed depends on
        //which item is chosen in the dropdown list 
        if (IsPostBack)
        {
            label4.Visible = true;
            label4.Text = dropDownList.SelectedValue;
        }
    }

    protected void button_Click(object sender, EventArgs e)
    {
        //when the button is clicked, the changed will be done as
        //it is introduced in the specification (change text, background
        //font color, border style, tooltip name)
        button.Text = "I've been clicked";
        label1.BackColor = System.Drawing.Color.Green;
        label1.ForeColor = System.Drawing.Color.White;
        label1.BorderStyle = BorderStyle.Dashed;
        label1.ToolTip = "this is label 1";
        label2.Text = "I've changed the text";
        label2.ForeColor = System.Drawing.Color.Blue;
        label2.BackColor = System.Drawing.Color.White;
        label2.BorderStyle = BorderStyle.Outset;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--title-->
        <asp:Label id="label" Font-Bold="true" runat="server">
            Daydream Holidays
        </asp:Label>
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
            BorderColor="Red" BorderStyle="Ridge" Height="50" Width="450" ToolTip="Label 2">
            Our web site is under construction and will be avalidable soon
        </asp:Label>
        <br /><br />
        <!--dropdown list-->
        <asp:DropDownList ID="dropDownList" runat="server">
            <asp:ListItem>Monday</asp:ListItem>
            <asp:ListItem>Tuesday</asp:ListItem>
            <asp:ListItem>Wednesday</asp:ListItem>
            <asp:ListItem>Thursday</asp:ListItem>
            <asp:ListItem>Friday</asp:ListItem>
            <asp:ListItem>Saturday</asp:ListItem>
            <asp:ListItem>Sunday</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <!--label 3-->
        <asp:Label runat="server" ID="label3" BorderStyle="Solid" BorderWidth="2">
            Select an option and click the "Display Choice" button
        </asp:Label>
        <br /><br />
        <!--label 4-->
        <asp:Label runat="server" ID="label4" BorderStyle="Solid" BorderWidth="4"
            BackColor="Blue" ForeColor="Yellow" BorderColor="Black"></asp:Label>
        <br /><br />
        <!--button-->
        <asp:Button id="button" runat="server" BackColor="Black" ForeColor="White" 
            BorderWidth="10" BorderStyle="Outset" Height="50" Text="Click here and something happens" 
            BorderColor="Gold" onClick="button_Click"/>
    </div>
    </form>
</body>
</html>
