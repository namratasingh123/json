<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Json.aspx.cs" Inherits="json.Json" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><h2><b>Customer Data</b></h2><br />

<table>

<tr><td>

<asp:Label ID="lblname" runat="server" Text="Name:" style="padding-right:30px"></asp:Label>

</td>

<td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>

</tr>

<tr><td>

<asp:Label ID="lblstreet" runat="server" Text="Street:" style="padding-right:30px"></asp:Label>

</td>

<td><asp:TextBox ID="txtstreet" runat="server"></asp:TextBox></td>

</tr>

<tr><td>

<asp:Label ID="lblage" runat="server" Text="Age:" style="padding-right:30px"></asp:Label>

</td>

<td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>

</tr>

<tr><td>

<asp:Label ID="lblPhone" runat="server" Text="Phone:" style="padding-right:30px"></asp:Label>

</td>

<td><asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>

</tr>

<tr><td>

<asp:Label ID="lblCity" runat="server" Text="City:" style="padding-right:30px"></asp:Label>

</td>

<td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>

</tr>

<tr><td>

<asp:Label ID="lblstate" runat="server" Text="State:" style="padding-right:30px"></asp:Label>

</td>

<td><asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>

</tr><tr><td>

<asp:Label ID="lblpin" runat="server" Text="Zip code:" style="padding-right:30px"></asp:Label>

</td>

<td><asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>

</tr>

</table>

<asp:Button runat="server" ID="btnget" Text="Get Data" OnClientClick="return Getdata();" />

</center>
        </div>
</form>
   
</body>
</html>
<script>


var customerObject = {

"name": "Namrata",

"street": "smwhr",

"age": 22,

"phone": "898988899",

"City":"Noida",

"State":"UP",

"Zip":"201301"

};


function Getdata() {

document.getElementById('<%=txtname.ClientID%>').value = customerObject.name;

document.getElementById('<%=txtstreet.ClientID%>').value = customerObject.street;

document.getElementById('<%=txtage.ClientID%>').value = customerObject.age;

document.getElementById('<%=txtphone.ClientID%>').value = customerObject.phone;

document.getElementById('<%=txtCity.ClientID%>').value = customerObject.City;

document.getElementById('<%=txtState.ClientID%>').value = customerObject.State;

document.getElementById('<%=txtZip.ClientID%>').value = customerObject.Zip;

}


</script>
