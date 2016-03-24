<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <style>
        /* Set black background color, white text and some padding */
        footer {
            background-color: #fff;
            color: white;
            padding: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">

                    <!-- <a class="navbar-brand" href="#">Logo</a>-->
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                    </ul>
                    <%--  <form class="navbar-form navbar-right" role="search">
                    <!-- <div class="form-group input-group">
                        <input type="text" class="form-control" placeholder="Search..">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </span>
                    </div>-->
                </form>--%>
                    <ul class="nav navbar-nav navbar-right">
                        <!--  <li><a href="#"><span class="glyphicon glyphicon-user"></span>My Account</a></li>-->
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="well scrollcss">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Item</th>
                                    <th>Quantity</th>
                                    <th>Head</th>
                                    <th>Rate</th>
                                    <th style="border-right: 1px solid #ccc;">CALCULATE</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <img src="pallu.jpg" style="height: 40px; width: 40px;" /><br />
                                        Pallu</td>
                                    <td>
                                        <asp:TextBox ID="txt_pallu_qty" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers, Custom"
                                            ValidChars="." TargetControlID="txt_pallu_qty">
                                        </cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_pallu_head" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers, Custom"
                                            ValidChars="." TargetControlID="txt_pallu_head">
                                        </cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_pallu_rate" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers, Custom"
                                            ValidChars="." TargetControlID="txt_pallu_rate">
                                        </cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td style="border-right: 1px solid #ccc;">
                                        <asp:Button ID="btn_pallu" runat="server" Text="CALCULATE" OnClick="btn_pallu_Click" class="btn btn-primary"></asp:Button></td>
                                    <td>
                                        <asp:Label ID="lbl_pallu_total" runat="server" Text="00"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="saquats.jpg" style="height: 40px; width: 40px;" /><br />
                                        Saquats</td>
                                    <td>
                                        <asp:TextBox ID="txt_Saqat_qty" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_Saqat_qty"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Saqat_head" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_Saqat_head"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Saqat_rate" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_Saqat_rate"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td style="border-right: 1px solid #ccc;">
                                        <asp:Button ID="btn_Saqat" runat="server" Text="CALCULATE" OnClick="btn_Saqat_Click" class="btn btn-primary"></asp:Button></td>
                                    <td>
                                        <asp:Label ID="lbl_Saqat_total" runat="server" Text="00"></asp:Label></td>

                                </tr>
                                <tr>
                                    <td>
                                        <img src="BL.jpg" style="height: 40px; width: 40px;" /><br />
                                        BL</td>
                                    <td>
                                        <asp:TextBox ID="txt_BL_qty" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender10" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_BL_qty"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_BL_head" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender11" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_BL_head"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_BL_rate" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender12" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_BL_rate"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td style="border-right: 1px solid #ccc;">
                                        <asp:Button ID="btn_BL" runat="server" Text="CALCULATE" OnClick="btn_BL_Click" class="btn btn-primary"></asp:Button></td>
                                    <td>
                                        <asp:Label ID="lbl_BL_total" runat="server" Text="00"></asp:Label></td>

                                </tr>
                                <tr>
                                    <td>
                                        <img src="Lase.png" style="height: 40px; width: 40px;" /><br />
                                        Lase</td>
                                    <td>
                                        <asp:TextBox ID="txt_Lase_qty" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_Lase_qty"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Lase_head" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_Lase_head"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Lase_rate" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_Lase_rate"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td style="border-right: 1px solid #ccc;">
                                        <asp:Button ID="btn_Lase" runat="server" Text="CALCULATE" OnClick="btn_Lase_Click" class="btn btn-primary"></asp:Button></td>
                                    <td>
                                        <asp:Label ID="lbl_Lase_total" runat="server" Text="00"></asp:Label></td>

                                </tr>
                                <tr>
                                    <td>
                                        <img src="C.jpg" style="height: 40px; width: 40px;" /><br />
                                        C</td>
                                    <td>
                                        <asp:TextBox ID="txt_C_qty" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender13" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_C_qty"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_C_head" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender14" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_C_head"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_C_rate" runat="server" class="form-control"></asp:TextBox><cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender15" runat="server" FilterType="Numbers, Custom" ValidChars="." TargetControlID="txt_C_rate"></cc1:FilteredTextBoxExtender>
                                    </td>
                                    <td style="border-right: 1px solid #ccc;">
                                        <asp:Button ID="btn_C" runat="server" Text="CALCULATE" OnClick="btn_C_Click" class="btn btn-primary"></asp:Button></td>
                                    <td>
                                        <asp:Label ID="lbl_C_total" runat="server" Text="00"></asp:Label></td>

                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="border-right: 1px solid #ccc;">
                                        <asp:Button ID="btn_total" runat="server" Text="SUBMIT" OnClick="btn_total_Click" class="btn btn-primary"></asp:Button>&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_clear" runat="server" Text="Clear" OnClick="btn_clear_Click" class="btn btn-danger"></asp:Button></td>
                                    <td>
                                        <asp:Label ID="lbl_all_total" runat="server" Text="00"></asp:Label></td>
                                </tr>
                            </tbody>
                        </table>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btn_pallu" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btn_Lase" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btn_Saqat" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btn_total" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btn_clear" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
        <footer class="container-fluid text-center">
            <p></p>
        </footer>
    </form>
</body>
</html>
