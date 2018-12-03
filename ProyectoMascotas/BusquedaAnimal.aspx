<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusquedaAnimal.aspx.cs"
    Inherits="ProyectoMascotas.BusquedaAnimal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="Your description goes here" />
    <meta name="keywords" content="your,keywords,goes,here" />
    <meta name="author" content="Your Name" />
    <link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz|Droid+Sans'
        rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" media="all" href="inland.css" />
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
    <title>Mascotas on-line</title>
    <style type="text/css">
        .style1
        {
            font-family: Cambria;
            color: #000099;
        }
        .style3
        {
            color: #000099;
        }
        .style4
        {
            color: #000000;
            text-align: center;
        }
        .style5
        {
            width: 213px;
        }
        .style7
        {
            width: 195px;
        }
        .style8
        {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper960" class="clearfix">
        <div id="header" class="clearfix shadow">
            <div id="sitetitle" class="clearfix">
                <h1>
                    <a href="Inicio.aspx">Mascotas</a></h1>
            </div>
            <div id="nav" class="clearfix">
                <ul>
                    <li><a href="Inicio.aspx">Inicio</a></li>
                    <li><a href="BuesquedaClientes.aspx">Registro Clientes</a></li>
                </ul>
            </div>
        </div>
        <div class="slider-wrapper">
            <div id="slider" class="nivoSlider">
                <img src="images/slider0.jpg" alt="" />
                <img src="images/slider1.jpg" alt="" />
                <img src="images/slider2.jpg" alt="" />
                <img src="images/slider3.jpg" alt="" />
                <img src="images/slider4.jpg" alt="" />
            </div>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <div class="style8">
                <strong><em><span class="style1">BUSQUEDA ANIMALES<br />
                </span></em></strong>
            </div>
            <table style="width: 100%;">
                <tr>
                    <td class="style7">
                        <span class="style3">
                            <tr>
                                <td class="style5">
                                    <span class="style4">Seleccione Tipo De Animal:</span>
                                </td>
                            </tr>
                        </span>
                    </td>
                    <tr>
                        <td>
                            <span class="style1">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1"
                                    DataTextField="NombreTipoAnimal" DataValueField="CodigoTipoAnimal">
                                </asp:DropDownList>
                            </span>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;
                        </td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource2"
                                GridLines="Vertical">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="CodigoAnimal" HeaderText="CodigoAnimal" SortExpression="CodigoAnimal" />
                                    <asp:BoundField DataField="NombreAnimal" HeaderText="NombreAnimal" SortExpression="NombreAnimal" />
                                    <asp:BoundField DataField="SexoAnimal" HeaderText="SexoAnimal" SortExpression="SexoAnimal" />
                                    <asp:BoundField DataField="DescripcionAnimal" HeaderText="DescripcionAnimal" SortExpression="DescripcionAnimal" />
                                    <asp:BoundField DataField="CatidadAnimal" HeaderText="CatidadAnimal" SortExpression="CatidadAnimal" />
                                    <asp:BoundField DataField="CodigoTipoAnimal" HeaderText="CodigoTipoAnimal" SortExpression="CodigoTipoAnimal" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </tr>
            </table>
            </em></strong></span><span class="style3"> <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;
            </span></td> </tr> </table> </span><span class="style1">
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="listarTodo"
                        TypeName="CapaDatos.ClsDatosTipoAnimales"></asp:ObjectDataSource>
                </td>
                <td>
                </td>
            </span>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="listarPorCategoria"
                TypeName="CapaDatos.ClsDatosAnimal" 
                DataObjectTypeName="CapaNegocios.ClsAnimal" UpdateMethod="actualizar">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="TipoAni" PropertyName="SelectedValue"
                        Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </asp:Panel>
    </div>
    <div id="footer" class="shadow">
        <p>
            &copy; 2014 Your Mascotas on-line | <a>Template design</a> by <a>Mascotas on-line.com</a></p>
    </div>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
    </form>
</body>
</html>
