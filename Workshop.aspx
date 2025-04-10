<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workshop.aspx.cs" Inherits="BookMakingProject.Workshop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>        
            <link rel="stylesheet" runat="server" media="screen" href="~/CSS/styles.css" />           
    </head>


<body>
     <header class="main-header">
            <nav class="nav main-nav">
                <ul>
                    <li><a href="Index.html">Home</a></li>
                    <li><a href="ToolsMaterials.html">Book Making Tools</a></li>
                    <li><a href="Techniques.html">Book Making Techniques</a></li>
                    <li><a href="Workshops.html">Workshop</a></li>
                </ul>
            </nav>
            <h1 class="band-name band-name-large">Book Making</h1>
        </header>
       <section class="content-section container">
            <h2 class="section-header">Register for Workshop</h2>
        </section>
   
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Name" runat="server" Text="Name"></asp:Label> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
            <asp:TextBox ID="NameValue" runat="server" MaxLength="30"></asp:TextBox><br /><br />
          
            <asp:Label ID="Phone" runat="server" Text="Phone Number"></asp:Label>&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="PhoneNumber" runat="server" MaxLength="10" TextMode="Phone"></asp:TextBox><br /><br />
              <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="EmailValue" runat="server" TextMode="Email"></asp:TextBox><br /><br />
            <asp:Label ID="Age" runat="server" Text="Age"></asp:Label>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="AgeValue" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeValue" EnableClientScript="False" ErrorMessage="Age not accepted" MaximumValue="70" MinimumValue="10" Type="Integer"></asp:RangeValidator>
            <br /><br />
            <asp:Label ID="How" runat="server" Text="How did you here about the workshop?"></asp:Label>            
            <asp:RadioButtonList ID="RadioButton" runat="server">
                <asp:ListItem Value="Online">Online Search</asp:ListItem>
                <asp:ListItem>Friends/Colleague</asp:ListItem>
                <asp:ListItem>Social Media</asp:ListItem>
            </asp:RadioButtonList><br />            
            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
        </div>
    </form>
</body>
</html>
