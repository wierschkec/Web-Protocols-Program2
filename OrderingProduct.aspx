<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderingProduct.aspx.cs" Inherits="Prog2.Prog2.OrderingProduct" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title tabindex="10">CS3870- Fall 2019 - Program 2</title>
    <link rel="stylesheet" type="text/css" href="J:\Web Protocols\Prog2\Prog2\Prog2StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Web Protocols, Technologies and Applications</h1>
    <h2>Connor Wierschke</h2>
    <ul>
        <li><a href="Default.aspx">Start Page</a></li>
        <li><a href="OrderingProduct.aspx">Order Form</a></li>
    </ul>
    <table style: align="center" border="1" width="25">
        <tbody>
            <tr>
                <th>ID:</th>
                <th>SubTotal:</th>
            </tr>
            <tr>
                <th><asp:TextBox ID="txtID" runat="server"></asp:TextBox></th>
                <th><asp:TextBox ID="txtSubTotal" runat="server" ReadOnly="true" TabIndex="5"></asp:TextBox></th>
            </tr>
            <tr>
                <th>
                    <asp:RequiredFieldValidator ID="txtIDFieldValidator" runat="server" ErrorMessage="ID cannot be empty!" Font-Size="Smaller" ForeColor="Red" ControlToValidate="txtID"></asp:RequiredFieldValidator>
                </th>
            </tr>
            <tr>
                <th>Unit Price:</th>
                <th>Tax:</th>
            </tr>
            <tr>
                <th><asp:TextBox ID="txtPrice" runat="server" TabIndex="1"></asp:TextBox></th>
                <th><asp:TextBox ID="txtTax" runat="server" ReadOnly="True" TabIndex="6"></asp:TextBox></th>
            </tr>
            <tr>
                <th>
                    <asp:RequiredFieldValidator ID="txtPriceFieldValidator" runat="server" ErrorMessage="Price cannot be empty!" Font-Size="Smaller" ForeColor="Red" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                </th>
            </tr>
            <tr>
                <th>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Unit Price must be a positive number!" Font-Size="Smaller" ForeColor="Red" MaximumValue="999999999999999999999999999999999999999.999" MinimumValue="0.01"></asp:RangeValidator>
                </th>
            </tr>
            <tr>
                <th>Quantity:</th>
                <th>GrandTotal:</th>
            </tr>
            <tr>
                <th><asp:TextBox ID="txtQuantity" runat="server" TabIndex="2"></asp:TextBox></th>
                <th><input style="text-align: right"/><asp:TextBox ID="txtGrandTotal" runat="server" ReadOnly="True" TabIndex="7"></asp:TextBox></th>
            </tr>
            <tr>
                <th>
                    <asp:RequiredFieldValidator ID="txtQuantityFieldValidator" runat="server" ErrorMessage="Quantity cannot be empty!" Font-Size="Smaller" ForeColor="Red" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>
                </th>
            </tr>
            <tr>
                <th>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity must be a non-negative integer!" Font-Size="Smaller" ForeColor="Red" MaximumValue="99999999999999999999999999999999999999999999999999999999" MinimumValue="0"></asp:RangeValidator>
                </th>
            </tr>
            <tr>
                <th><asp:Button ID="btnCompute" runat="server" Text="COMPUTE" OnClick="btnCompute_Click" TabIndex="3" /></th>
                <th><asp:Button ID="btnReset" runat="server" Text="RESET" OnClick="btnReset_Click" TabIndex="4" /></th>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>
