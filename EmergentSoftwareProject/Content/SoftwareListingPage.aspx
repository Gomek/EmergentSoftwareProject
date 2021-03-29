<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SoftwareListingPage.aspx.cs" Inherits="EmergentSoftwareProject.Content.SoftwareListingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="~/Styles/Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="marginLeft_200 marginTop_100">
            <!-- Main Body -->
            <div class="colorDarkBlue text_75 marginBottom_50">Software Listing Page</div>
            
            <div class="displayBoxPadded width_700 text_25 marginBottom_50">
                <div class="displayFlex marginBottom_10">
                    <div class="marginRight_10 color_DarkBlue">Filter:</div>
                    <div class="marginRight_10"><asp:TextBox ID="tbFilter" runat="server" CssClass="text_18"></asp:TextBox></div>
                    <div class="marginRight_20"><asp:Button ID="bFilter" runat="server" Text="Filter" OnClick="bFilter_Click" CssClass="attributesButtonGrey" /></div>
                    <div class="colorRed text_18"><asp:Literal ID="lFilterMessage" runat="server"></asp:Literal></div>
                </div>
                <div class="displayFlex">
                    <div class="iconLightbulb dim_35 moveElementUp_7"></div>
                    <a href="SuggestImprovement.aspx?RequestingPage=SoftwareListingPage.aspx&RequestingPageTitle=Software Listing Page" class="colorDarkGreen text_25 textDecorationNone">Suggest Improvement</a>
                </div>
            </div>
            
        
            <div class="displayFlex">
                <div class="text_40 colorDarkBlue width_200">Version</div>
                <div class="text_40 colorDarkBlue">Name</div>
            </div>
            <div class="attributesScrollableSoftwareList">
                <asp:DataList ID="dlSoftware" runat="server">
                    <ItemTemplate>
                        <div class="displayFlex text_25">
                            <div class="width_200"><%# Eval("Version") %></div>
                            <div><%# Eval("Name") %></div>
                        </div>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <div class="displayFlex bgLightGrey text_25">
                            <div class="width_200"><%# Eval("Version") %></div>
                            <div><%# Eval("Name") %></div>
                        </div>
                    </AlternatingItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </form>
</body>
</html>
