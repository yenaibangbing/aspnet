<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" stylesheettheme ="default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <script type="text/javascript">
        function updateLabel() {
            var label = document.getElementById('Label1');
            var date = new Date();
            var year = date.getFullYear();
            var month = date.getMonth() + 1;
            var day = date.getDate();
            var weekDay = date.toLocaleDateString('en-US', { weekday: 'long' });
            var timeString = date.toLocaleTimeString();

            label.innerHTML = year + '年' + month + '月' + day + '日 ' + weekDay + ' ' + timeString;
        }

        setInterval(updateLabel, 1000); 
    </script>
   
</head>
<body>
    <form id="form1" runat="server">


    <asp:Panel ID="Panel1" runat="server" BackColor="#33CCCC">
        请选择外观：
        <asp:HyperLink ID = "Hyperlink1" runat = "server" NavigateUrl="Default.aspx?NewTheme=Default">缺省</asp:HyperLink>&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID = "Hyperlink2" runat = "server" NavigateUrl="Default.aspx?NewTheme=green">绿色</asp:HyperLink>&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID = "Hyperlink3" runat = "server" NavigateUrl="Default.aspx?NewTheme=blue">蓝色</asp:HyperLink>&nbsp;&nbsp;&nbsp;<br />
           <asp:Label ID="Label1" runat="server" BorderColor="White" BorderStyle="None" Height="50px" Width="500px">
            <span id="time"></span>
           </asp:Label>

        <br />
        <asp:Label ID="Label2" runat="server" BorderColor="White" BorderStyle="None" 
            Text="用户名：" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" BorderColor="White" BorderStyle="None" 
            Text="密码：" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="确定" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="重置" />
        <br />
        <asp:Label ID="Label4" runat="server" Text="  " Width="100px"></asp:Label>
    </asp:Panel>


    </form>
</body>
</html>
