<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CalculatorApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gelişmiş Hesap Makinesi</title>
    <link rel="stylesheet" href="Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="calculator">
            <asp:TextBox ID="txtDisplay" runat="server" CssClass="display" ReadOnly="true"></asp:TextBox>
            <asp:Panel ID="btnPanel" runat="server" CssClass="button-panel">
                <asp:Button ID="btn7" runat="server" Text="7" OnClick="Button_Click" CssClass="button" />
                <asp:Button ID="btn8" runat="server" Text="8" OnClick="Button_Click" CssClass="button" />
                <asp:Button ID="btn9" runat="server" Text="9" OnClick="Button_Click" CssClass="button" />
                <asp:Button ID="btnDivide" runat="server" Text="/" OnClick="Button_Click" CssClass="button operator" />
                <!-- Daha fazla düğme ekleyebilirsiniz -->
                <asp:Button ID="btnCalculate" runat="server" Text="=" OnClick="Button_Click" CssClass="button operator" />
                <asp:Button ID="btnClear" runat="server" Text="C" OnClick="Button_Click" CssClass="button clear" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
