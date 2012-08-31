﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AllHistory.aspx.cs" Inherits="CrissCross.AllHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="cornerbackground">
            <div class="cornertop">
                <div class="cornerbottom">
                <div class="inner">
    
    <p>Logged in as: <asp:Label ID="uxUserName" runat="server" ></asp:Label></p>
    <h2>Recently Run</h2>
    <asp:ListView ID="uxRecentListView" runat="server">
        <LayoutTemplate>
        <div class="reportList">
           <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
        </div>
       </LayoutTemplate>
       <ItemTemplate>
       <div class="reportRow">
            <a class="reportLink" href="Report.aspx?path=<%# Eval("ReportPath") %>&parameters=<%# Server.UrlEncode(Eval("Parameters").ToString()) %>" style="width:300px;" title="<%# Server.HtmlEncode(Eval("Parameters").ToString()) %>"><%# Eval("ReportName") %></a>
            <div class="reportPath" style="width:250px;"><%# Eval("ReportPath") %></div>
            <div class="reportInfo" style="width:120px;">Run at: <%# ((DateTime)Eval("TimeStart")).ToString("dd/MMM/yyyy HH:mm") %></div>
            <div class="reportInfo">Rows returned: <%# Eval("RowCount") %></div>
            <div class="clear"></div>
            
       </div>
       </ItemTemplate>
    </asp:ListView>
                </div>
        </div></div></div>
    
    <asp:TextBox ID="uxHiddenFullUsername" runat="server" Visible="false"></asp:TextBox>
</asp:Content>
