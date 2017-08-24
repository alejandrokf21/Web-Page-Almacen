<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAL.Master" AutoEventWireup="true" CodeBehind="WebReportPP.aspx.cs" Inherits="AlmacenLE.WebReportPP" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <br />

    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="709px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="847px">
        <LocalReport ReportPath="ReportFactura.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource5" Name="DataSet1" />
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource6" Name="DataSet2" />
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet3" />
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet4" />
            </DataSources>
        </LocalReport>
</rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" SelectMethod="GetData" TypeName="AlmacenLE.AlmacenDataSet1TableAdapters.FN_MostraFacturaTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" SelectMethod="GetData" TypeName="AlmacenLE.AlmacenDataSetFacturaDetalleTableAdapters.FN_MostraFacturaTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="GetData" TypeName="AlmacenLE.AlmacenDataSetTableAdapters.FN_MostraFacturaTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="AlmacenLE.AlmacenDataSetProdTableAdapters.ProductoTableAdapter"></asp:ObjectDataSource>
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="AlmacenLE.AlmacenDataSetFacturaTableAdapters.FacturaTableAdapter"></asp:ObjectDataSource>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="AlmacenLE.AlmacenDataSetDetalleTableAdapters.DetalleFacturaTableAdapter"></asp:ObjectDataSource>
</asp:Content>
