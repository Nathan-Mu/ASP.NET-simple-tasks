<!-- Dongyu Zhao 27356094-->
<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    // register button click event
    protected void RegisterBtn_Click(object sender, EventArgs e)
    {
        // confirm if the field are filled
        if (!GivenNameInput.Text.Equals("") && !FamilyNameInput.Text.Equals("") && !AddressInput.Text.Equals("")
            && !EmailAddressInput.Text.Equals("") && !PhoneNumberInput.Text.Equals("") && !PasswordInput.Text.Equals(""))
        {
            // show the results
            GivenNameResult.Text = GivenNameInput.Text;
            FamilyNameResult.Text = FamilyNameInput.Text;
            AddressResult.Text = AddressInput.Text;
            StateResult.Text = DropDownList.SelectedValue;
            EmailResult.Text = EmailAddressInput.Text;
            PhoneResult.Text = PhoneNumberInput.Text;
            PasswordResult.Text = PasswordInput.Text;
        }
    }

    // reset button event
    protected void ResetBtn_Click(object sender, EventArgs e)
    {
        // clear all input and result fields
        GivenNameInput.Text = "";
        GivenNameResult.Text = "";
        FamilyNameInput.Text = "";
        FamilyNameResult.Text = "";
        AddressInput.Text = "";
        AddressResult.Text = "";
        DropDownList.SelectedIndex = 0;
        StateResult.Text = "";
        EmailAddressInput.Text = "";
        EmailResult.Text = "";
        PhoneNumberInput.Text = "";
        PhoneResult.Text = "";
        PasswordInput.Text = "";
        PasswordResult.Text = "";
    }

    // have fun button event
    protected void HaveFunBtn_Click(object sender, EventArgs e)
    {
        // confirm if the two parts are be checked
        Boolean funChecked = CheapEntertainment.Checked || CheapHotels.Checked || CheapMeals.Checked;
        Boolean cityChecked = (RadioButtonList1.SelectedItem != null);
        // show different results depands on different user input
        if (funChecked == false && cityChecked == false)
        {
            Result.Text = "You don't want to have any fun";
        }
        else if (funChecked == true && cityChecked == false)
        {
            Result.Text = "Please select a city";
        }
        else if (funChecked == false && cityChecked == true)
        {
            Result.Text = "You don't want to have any fun in " + RadioButtonList1.SelectedValue;
        }
        else
        {
            String Message = "";
            if (CheapHotels.Checked)
            {
                Message += "You have selected Cheap Hotels ";
            }
            if (CheapMeals.Checked)
            {
                Message += "You have selected Cheap Meals ";
            }
            if (CheapEntertainment.Checked)
            {
                Message += "You have selected Cheap Entertainment";
            }
            Message += "in " + RadioButtonList1.SelectedValue;
            Result.Text = Message;
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--Part 1,2,3-->
        <asp:Panel ID="Panel1" runat="server">
            <!-- Subtitle -->
            <asp:Label ID="Label" runat="server" Width="100%" CssClass="title" Text="Daydream Holiday Registration"></asp:Label>
            <br /><br />
            <!-- User input field -->
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="GivenName" runat="server" Text="Given Name" CssClass="label1"></asp:Label>
                        <br />
                        <asp:TextBox ID="GivenNameInput" runat="server" CssClass="textBox1"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="FamilyName" runat="server" Text="Family Name" CssClass="label1"></asp:Label>
                        <br />
                        <asp:TextBox ID="FamilyNameInput" runat="server" CssClass="textBox1"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Address" runat="server" Text="Address" CssClass="label1"></asp:Label>
                        <br />
                        <asp:TextBox ID="AddressInput" runat="server" TextMode="MultiLine" Rows="3" Columns="20" CssClass="textBox2"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="State" runat="server" Text="State" CssClass="label1"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList" runat="server" CssClass="textBox2">
                            <asp:ListItem>VIC</asp:ListItem>
                            <asp:ListItem>WA</asp:ListItem>
                            <asp:ListItem>NSW</asp:ListItem>
                            <asp:ListItem>NT</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="EmailAddress" runat="server" Text="Email Address" CssClass="label1"></asp:Label>
                        <br />
                        <asp:TextBox ID="EmailAddressInput" runat="server" CssClass="textBox3"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="PhoneNumber" runat="server" CssClass="label1" Text="Phone Number"></asp:Label>
                        <br />
                        <asp:TextBox ID="PhoneNumberInput" runat="server" CssClass="textBox3"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Password" runat="server" Text="Password" CssClass="label1"></asp:Label>
                        <br />
                        <asp:TextBox ID="PasswordInput" runat="server" TextMode="Password" CssClass="textBox4"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        <br />
                        <asp:Button ID="RegisterBtn" runat="server" Text="Register" OnClick="RegisterBtn_Click"/>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left">
                        <br />
                        <asp:Button ID="ResetBtn" runat="server" Text="Reset" OnClick="ResetBtn_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <br />
        <!-- Result of first part -->
        <asp:Panel ID="Panel2" runat="server" CssClass="panel">
            <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Given Name" CssClass="label2"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="GivenNameResult" Width="80px" CssClass="results"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Family Name" CssClass="label2"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="FamilyNameResult" Width="80px" CssClass="results"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Address" CssClass="label2"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="AddressResult" CssClass="results"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="State" CssClass="label2"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="StateResult" CssClass="results"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Email" CssClass="label2"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="EmailResult" CssClass="results"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Phone" CssClass="label2"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="PhoneResult" CssClass="results"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Password" CssClass="label2"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="PasswordResult" CssClass="results"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <!-- Part 4 -->
        <asp:Table ID="Table3" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Calendar runat="server" CssClass="calendar">
                        <DayHeaderStyle CssClass="dayHeaderStyle"/>
                        <TitleStyle CssClass="titleStyle"/>
                        <TodayDayStyle CssClass="todayDayStyle"/>
                        <WeekendDayStyle CssClass="weekendDayStyle"/>
                        <OtherMonthDayStyle CssClass="otherMonthDayStyle"/>
                        <SelectedDayStyle CssClass="selectedDayStyle"/>
                    </asp:Calendar>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />

        <!--Part 5-->
        <asp:Panel ID="Panel3" runat="server">
            <asp:Label runat="server" width="100%" CssClass="label3">City Fun</asp:Label>
            <asp:Table runat="server" ID="Table4" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label runat="server" Text="Cheap Hotels"></asp:Label>
                        <asp:CheckBox ID="CheapHotels" runat="server"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label runat="server" Text="Cheap Meals"></asp:Label>
                        <asp:CheckBox ID="CheapMeals" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label runat="server" Text="Cheap Entertainment"></asp:Label>
                        <asp:CheckBox runat="server" ID="CheapEntertainment" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow></asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:RadioButtonList runat="server" ID="RadioButtonList1">
                            <asp:ListItem Text="Melbourne" Value="Melbourne"></asp:ListItem>
                            <asp:ListItem Text="Sydney" Value="Sydney"></asp:ListItem>
                            <asp:ListItem Text="Brisbane" Value="Brisbane"></asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Table runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button runat="server" ID="HaveFunBtn" Text="Find the Fun" OnClick="HaveFunBtn_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Table runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="Result"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
