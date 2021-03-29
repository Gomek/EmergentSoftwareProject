<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuggestImprovement.aspx.cs" Inherits="EmergentSoftwareProject.Content.SuggestImprovement" %>

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
            <div class="displayFlex">
                <div class="iconLightbulb dim_65"></div>
                <div class="colorDarkGreen text_60 marginBottom_20">Suggest Improvement</div>
            </div>
            <div class="displayBoxPadded width_700 text_25">
                  <div class="text_25 marginBottom_50">
                      Enter suggestions (examples: additional fields, filters, layout tweaks and/or work flow changes) that will improve this page. 
                  </div>
                <div class="displayFlex marginBottom_5">
                    <div class="width_200">Page</div>
                    <div><asp:TextBox ID="tbPage" runat="server"  Width="450px" CssClass="text_18"></asp:TextBox></div>
                </div>
                <div class="displayFlex marginBottom_5">
                    <div class="width_200">Your Email</div>
                    <div><asp:TextBox ID="tbEmail" runat="server"  Width="450px" CssClass="text_18"></asp:TextBox></div>
                </div>
                    <div class="displayFlex marginBottom_20">
                    <div class="width_200">Suggestion</div>
                        <div><asp:TextBox ID="tbSuggestion" runat="server"  Width="450px" Height="75px" TextMode="MultiLine" CssClass="text_18"></asp:TextBox></div>
                </div>
                <div class="textAlignCenter">
                    <asp:Button ID="bSubmit" runat="server" Text="Submit" CssClass="attributesButtonGrey marginRight_20" OnClick="bSubmit_Click"   />
                    <asp:Button ID="bCancel" runat="server" Text="Cancel" CssClass="attributesButtonGrey" OnClick="bCancel_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>