<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuesquedaClientes.aspx.cs" Inherits="ProyectoMascotas.BuesquedaClientes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Your description goes here" />
	<meta name="keywords" content="your,keywords,goes,here" />
	<meta name="author" content="Your Name" />
	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz|Droid+Sans' rel='stylesheet' type='text/css' />
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
        .style2
        {
        }
        .style7
        {
            text-align: center;
        }
        .style12
        {
            width: 160px;
        }
        .style13
        {
            text-align: center;
            width: 160px;
        }
        .style14
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
			<h1><a href="Inicio.aspx">Mascotas</a></h1>
		</div>

		<div id="nav" class="clearfix">
			<ul>
		    <li><a href="Inicio.aspx">Inicio</a></li>
			<li><a href="BusquedaAnimal.aspx">Registro Animales</a></li>
            </ul>
		</div>
	</div>

	<div class="slider-wrapper">
		<div id="slider" class="nivoSlider">
			<img src="images/clientes0.jpg" alt="" />
			<img src="images/clientes1.jpg" alt="" />
			<img src="images/clientes2.jpg" alt="" />
			<img src="images/clientes3.jpg" alt="" />
			<img src="images/clientes4.jpg" alt="" />
		</div>
	
	<div id="footer" class="shadow">
		
        <asp:Panel ID="Panel1" runat="server">
            <div class="style14">
                <span class="style1"><strong><em>BUSQUEDA CLIENTES</em></strong></span></div>
            <table style="width:100%;">
                <tr>
                    <td class="style12">
                        Busqueda por cedula:
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="TxtBuesqueda" runat="server" BackColor="#0033CC" 
                            MaxLength="10" Width="140px"></asp:TextBox>
                    </td>
                    <td class="style13">
                        <asp:Button ID="BtnBuscar" runat="server" onclick="BtnBuscar_Click" 
                            Text="Buscar" Width="84px" />
                    </td>
                    <td colspan="3">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Label ID="LblCedula" runat="server" Text="Cédula"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:Label ID="LblNombre" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:Label ID="LblApellido" runat="server" Text="Apellido"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:Label ID="LblTelefono" runat="server" Text="Teléfono"></asp:Label>
                    </td>
                    <td class="style12" style="text-align: center">
                        <asp:Label ID="LblDireccion" runat="server" Text="Dirección"></asp:Label>
                    </td>
                    <td style="text-align: center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:TextBox ID="TxtCedula" runat="server" Enabled="False" 
                            style="text-align: center"></asp:TextBox>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="TxtNombre" runat="server" Enabled="False" 
                            style="text-align: center"></asp:TextBox>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="TxtApellido" runat="server" Enabled="False" 
                            style="text-align: center"></asp:TextBox>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="TxtTelefono" runat="server" Enabled="False" 
                            style="text-align: center"></asp:TextBox>
                    </td>
                    <td class="style12" style="text-align: center">
                        <asp:TextBox ID="TxtDireccion" runat="server" Enabled="False" 
                            style="text-align: center"></asp:TextBox>
                    </td>
                    <td style="text-align: center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7" colspan="6">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" DataSourceID="ObjectDataSource1" GridLines="Vertical" 
                            Visible="False" Width="836px">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="Cedula" HeaderText="Cedula" 
                                    SortExpression="Cedula" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                                    SortExpression="Nombre" />
                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" 
                                    SortExpression="Apellido" />
                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" 
                                    SortExpression="Telefono" />
                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" 
                                    SortExpression="Direccion" />
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
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                            SelectMethod="listarTodo" TypeName="CapaDatos.ClsDatosCliente">
                        </asp:ObjectDataSource>
                    </td>
                </tr>
            </table>
            </strong></span>
        </asp:Panel>
           
	    </p>
		
		<p>&copy; 2014 Your Mascotas on-line | <a>Template design</a> by Mascotas on-line.com<p>
            
            </p>
		
	</div>

<script type="text/javascript">
    $(window).load(function () {
        $('#slider').nivoSlider();
    });
</script>
    </form>
</body>
</html>
