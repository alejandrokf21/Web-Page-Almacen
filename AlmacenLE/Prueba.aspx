<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="AlmacenLE.Prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div class="col-xs-12 col-sm-6 col-md-6">
					    <div class="form-group">                            
                            <asp:DropDownList ID="DropDownList1" runat="server"  Width="100%" Height="100%" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
					    </div>
				    </div>	
    
    </div>
    </form>
</body>
</html>
