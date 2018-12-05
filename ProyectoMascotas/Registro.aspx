<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoMascotas.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="height: 337px">
    <p>
        <span style="font-family: Cambria; color: #000099"><strong>INGRESO DE CLIENTES
        </strong></span>
        <table style="width:100%;">
            <tr>
                <td style="width: 68px">
                    Cédula:</td>
                <td style="width: 272px; text-align: center;">
                    <asp:TextBox ID="TxtCedula" runat="server" BackColor="White" Width="198px"></asp:TextBox>
                </td>
                <td>
                    Busqueda por cédula</td>
            </tr>
            <tr>
                <td style="width: 68px">
                    Nombre:</td>
                <td style="width: 272px; text-align: center;">
                    <asp:TextBox ID="TxtNombre" runat="server" BackColor="White" Width="198px" 
                        style="text-align: center"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnBuscar" runat="server" onclick="BtnBuscar_Click" 
                        Text="Buscar" Width="114px" />
                </td>
            </tr>
            <tr>
                <td style="width: 68px">
                    Apellido</td>
                <td style="width: 272px; text-align: center;">
                    <asp:TextBox ID="TxtApellido" runat="server" BackColor="White" Width="198px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 68px">
                    Teléfono:</td>
                <td style="width: 272px; text-align: center;">
                    <asp:TextBox ID="TxtTelefono" runat="server" BackColor="White" Width="197px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 68px">
                    Domicílio:</td>
                <td style="width: 272px; text-align: center;">
                    <asp:TextBox ID="TxtDireccion" runat="server" BackColor="White" Width="196px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 68px">
                    &nbsp;</td>
                <td style="width: 272px">
                    <asp:Button ID="BtnIngreso" runat="server" style="text-align: center" 
                        Text="Ingresar" Width="114px" onclick="BtnIngreso_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnLimpiar" runat="server" OnClick="BtnLimpiar_Click" Text="Limpiar" Width="108px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td style="width: 966px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 966px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="ObjectDataSource1" GridLines="Vertical" 
                        Width="869px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Cedula" HeaderText="Cedula" 
                                SortExpression="Cedula" ReadOnly="True" />
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
                        SelectMethod="buscaActualiza" TypeName="CapaDatos.ClsDatosCliente" DataObjectTypeName="CapaNegocios.ClsCliente" UpdateMethod="actualizar">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TxtCedula" Name="cedula" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 966px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    </form>
</asp:Content>
