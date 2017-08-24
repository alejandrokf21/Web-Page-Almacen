<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAL.Master" AutoEventWireup="true" CodeBehind="WebReportProd.aspx.cs" Inherits="AlmacenLE.WebReportPP" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <br />

    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="709px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="847px">
        <LocalReport ReportPath="ReportProducto.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSetProd" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="AlmacenLE.AlmacenDataSetProdTableAdapters.ProductoTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="AlmacenLE.AlmacenDataSetFacturaTableAdapters.FacturaTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="AlmacenLE.AlmacenDataSetDetalleTableAdapters.DetalleFacturaTableAdapter"></asp:ObjectDataSource>
</asp:Content>
