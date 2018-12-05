<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Animal.aspx.cs" Inherits="ProyectoMascotas.Animal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="height: 371px">
    <p>
        <span style="font-family: Cambria; color: #000099"><strong>INGRESO DE ANIMALES 
        (NUEVOS)</strong></span><table style="width:100%;">
            <tr>
                <td style="width: 109px; text-align: left;">
                    <asp:Label ID="LblCodigo" runat="server" Text="Codigo:" Visible="False"></asp:Label>
                </td>
                <td style="width: 233px; text-align: left;">
                    <asp:TextBox ID="TxtCodigo" runat="server" BackColor="White" Visible="False"></asp:TextBox>
                </td>
                <td style="width: 429px; text-align: left;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 109px; text-align: left;">
                    Nombre:</td>
                <td style="width: 233px; text-align: left;">
                    <asp:TextBox ID="TxtNombre" runat="server" BackColor="White" Width="186px"></asp:TextBox>
                </td>
                <td style="width: 429px; text-align: left;">
                    <asp:Button ID="BtnIngreso" runat="server" onclick="BtnIngreso_Click" 
                        Text="Ingresar" Width="114px" Height="25px" />
                </td>
            </tr>
            <tr>
                <td style="width: 109px; text-align: left;">
                    Sexo:</td>
                <td style="width: 233px; text-align: left;">
                    <asp:DropDownList ID="DropDGenero" runat="server">
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 429px; text-align: left;">
                    <asp:Button ID="BtnActivar" runat="server" Height="25px" 
                        onclick="BtnActivar_Click" Text="Activar Busqueda" Width="114px" />
                </td>
            </tr>
            <tr>
                <td style="width: 109px; text-align: left;">
                    Cantidad:</td>
                <td style="width: 233px; text-align: left;">
                    <asp:TextBox ID="TxtCantidad" runat="server" BackColor="White" Width="100px" TextMode="Number"></asp:TextBox>
                </td>
                <td style="width: 429px; text-align: left;">
                    <asp:Button ID="BtnBuscar" runat="server" onclick="BtnBuscar_Click" 
                        Text="Buscar" Width="114px" Height="25px" />
                </td>
            </tr>
            <tr>
                <td style="width: 109px; text-align: left;">
                    Tipo:</td>
                <td style="width: 233px; text-align: left;">
                    <asp:DropDownList ID="DdlTipo" runat="server" DataSourceID="ObjectDataSource1" 
                        DataTextField="NombreTipoAnimal" DataValueField="CodigoTipoAnimal" Width="185px">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="listarTodo" TypeName="CapaDatos.ClsDatosTipoAnimales">
                    </asp:ObjectDataSource>
                </td>
                <td style="width: 429px; text-align: left;">
                    <asp:Button ID="BtnBorrar" runat="server" Height="25px" 
                        onclick="BtnBorrar_Click" Text="Borrar" Width="114px" />
                </td>
            </tr>
            <tr>
                <td style="width: 109px; text-align: left;">
                    Descripción</td>
                <td style="width: 233px; text-align: left;">
                    <asp:TextBox ID="TxtDescripcion" runat="server" BackColor="White" 
                        Width="357px" Height="63px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td style="width: 429px; text-align: left;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 109px; text-align: left;">
                    &nbsp;</td>
                <td style="width: 233px; text-align: left;">
                    &nbsp;</td>
                <td style="width: 429px; text-align: left;">
                    <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td style="height: 152px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="ObjectDataSource2" GridLines="Vertical" 
                        Width="830px" style="text-align: center">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="CodigoAnimal" HeaderText="Código Animal" 
                                SortExpression="CodigoAnimal" ReadOnly="True" />
                            <asp:BoundField DataField="NombreAnimal" HeaderText="Nombre" 
                                SortExpression="NombreAnimal" />
                            <asp:BoundField DataField="SexoAnimal" HeaderText="Sexo" 
                                SortExpression="SexoAnimal" />
                            <asp:BoundField DataField="DescripcionAnimal" HeaderText="Descripción" 
                                SortExpression="DescripcionAnimal" />
                            <asp:BoundField DataField="CatidadAnimal" HeaderText="Catidad" 
                                SortExpression="CatidadAnimal" />
                            <asp:BoundField DataField="CodigoTipoAnimal" HeaderText="Tipo Animal" 
                                SortExpression="CodigoTipoAnimal" ReadOnly="True" />
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
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        SelectMethod="listarTodo" TypeName="CapaDatos.ClsDatosAnimal" DataObjectTypeName="CapaNegocios.ClsAnimal" UpdateMethod="actualizar">
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    </form>
</asp:Content>
