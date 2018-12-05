<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TipoAnimal.aspx.cs" Inherits="ProyectoMascotas.TipoAnimal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p>
        <span style="font-family: Cambria; color: #000099"><strong>INGRESO DE TIPO DE 
        ANIMAL (NUEVO)</strong></span><table style="width:100%;">
            <tr>
                <td style="width: 241px">
                    Nombre:</td>
                <td style="width: 210px">
                    <asp:TextBox ID="TxtNombre" runat="server" BackColor="White" Width="195px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 241px">
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="listarTodo" TypeName="CapaDatos.ClsDatosTipoAnimales" DataObjectTypeName="CapaNegocios.ClsTipoAnimal" UpdateMethod="actualizar">
                    </asp:ObjectDataSource>
                </td>
                <td style="width: 210px">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="BtnIngreso" runat="server" onclick="BtnIngreso_Click" 
                        Text="Ingresar" Width="85px" />
                </td>
            </tr>
            <tr>
                <td style="width: 241px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="ObjectDataSource1" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="CodigoTipoAnimal" HeaderText="Código Animal" 
                                SortExpression="CodigoTipoAnimal" ReadOnly="True" />
                            <asp:BoundField DataField="NombreTipoAnimal" HeaderText="Tipo Animal" 
                                SortExpression="NombreTipoAnimal" />
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
                <td style="width: 210px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    </form>
</asp:Content>
