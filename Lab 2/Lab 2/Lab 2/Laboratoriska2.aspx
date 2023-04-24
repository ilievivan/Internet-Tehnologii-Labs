<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Laboratoriska2.aspx.cs" Inherits="Lab_2.Laboratoriska2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin: 20px;">

        <Table ID="Table1" runat="server"> 
        
               <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3 left"  style="width: 25%"> 
                        <p style="text-align:right;">Име</p>  
                    </td> 

                    <td class="col-md-9 text-left"  style="width: 266px"> 
                        <asp:TextBox ID="txtIme" runat="server" style="width: 100%"></asp:TextBox>       
                    </td>

                    <td rowspan="11" style="width: 50%">

                        <asp:Panel ID="pnlPanela1" runat="server" Height="100%" BackColor="Yellow">

                            Почитуван патнику
                            <br />
                            <asp:Label ID="lblPatnik" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label> 
                            <br />

                            Издадена ви е карта за 
                            <br />
                            <asp:Label ID="lblSredstvo" runat="server" Text="" Font-Bold="true"></asp:Label>
                            <br />

                            со почетна дестинација
                            <br />
                            <asp:Label ID="lblOd" runat="server" Text="" Font-Bold="true"></asp:Label>
                            <br />

                            и крајна дестинација
                            <br />
                            <asp:Label ID="lblDo" runat="server" Text="" Font-Bold="true"></asp:Label>
                            <br /> 
            
                            Времето на поаѓање е
                            <br />
                            <asp:Label ID="lblVreme" runat="server" Text="" Font-Bold="true"></asp:Label>
                            <br /> 
            
                            Вашето место на седење ќе биде во зоната за 
                            <asp:Label ID="lblZona" runat="server" Text="" Font-Bold="true"></asp:Label>
                            во 
                            <asp:Label ID="lblKlasa" runat="server" Text="" Font-Bold="true"></asp:Label>
                            класа и во текот на патувањето ќе бидете послужени со 
                            <asp:Label ID="lblPosluga" runat="server" Text="" Font-Bold="true"></asp:Label>
                            <br /> 
            
                            <asp:Image ID="imgSlika" runat="server" />
                            <br />
                            Ви благодариме на довербата и ви посакуваме среќен пат!

                        </asp:Panel>
            
                    </td>
            
                </tr>

                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3 left"> 
                        <p style="text-align:right;">Презиме</p> 
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:TextBox ID="txtPrezime" runat="server" style="width: 100%"></asp:TextBox>     
                    </td>
            
                </tr>
        
                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3 left"> 
                        <p style="text-align:right;">Од</p> 
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:DropDownList ID="ddlOd" runat="server">
                            <asp:ListItem>(none)</asp:ListItem>
                            <asp:ListItem>Skopje</asp:ListItem>
                            <asp:ListItem>Bitola</asp:ListItem>
                            <asp:ListItem>Veles</asp:ListItem>
                            <asp:ListItem>Ohrid</asp:ListItem>
                            <asp:ListItem>Negotino</asp:ListItem>
                            <asp:ListItem>Kavadarci</asp:ListItem>
                            <asp:ListItem>Gevgelija</asp:ListItem>
                            <asp:ListItem>Strumica</asp:ListItem>
                            <asp:ListItem>Kumanovo</asp:ListItem>
                            <asp:ListItem>Shtip</asp:ListItem>
                        </asp:DropDownList>     
                    </td>
            
                </tr>
        
                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3 left">
                        <p style="text-align:right;">До</p>  
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:DropDownList ID="ddlDo" runat="server">
                            <asp:ListItem>(none)</asp:ListItem>
                            <asp:ListItem>Skopje</asp:ListItem>
                            <asp:ListItem>Bitola</asp:ListItem>
                            <asp:ListItem>Veles</asp:ListItem>
                            <asp:ListItem>Ohrid</asp:ListItem>
                            <asp:ListItem>Negotino</asp:ListItem>
                            <asp:ListItem>Kavadarci</asp:ListItem>
                            <asp:ListItem>Gevgelija</asp:ListItem>
                            <asp:ListItem>Strumica</asp:ListItem>
                            <asp:ListItem>Kumanovo</asp:ListItem>
                            <asp:ListItem>Shtip</asp:ListItem>
                        </asp:DropDownList> 
                    </td>
            
                </tr>
        
                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3 left">
                        <p style="text-align:right;">Датум на тргање</p> 
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:DropDownList ID="ddlDen" runat="server">
                            <asp:ListItem>(ден)</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlMesec" runat="server">
                            <asp:ListItem>(месец)</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlGodina" runat="server">
                            <asp:ListItem>(година)</asp:ListItem>
                        </asp:DropDownList>         
                    </td>
            
                </tr>

                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3 left"> 
                        <p style="text-align:right;">Време на тргање</p>  
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:DropDownList ID="ddlVreme" runat="server">
                            <asp:ListItem>(време)</asp:ListItem>
                        </asp:DropDownList>          
                    </td>
            
                </tr>

                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3 left"> 
                        <p style="text-align:right;">Превозно средство</p> 
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:ListBox ID="lstSredstvo" runat="server" Height="42px">
                            <asp:ListItem>Авион</asp:ListItem>
                            <asp:ListItem>Воз</asp:ListItem>
                        </asp:ListBox>        
                    </td>
            
                </tr>

                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3 left"> 
                        <p style="text-align:right;">Зона</p> 
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:RadioButtonList ID="rblZona" runat="server">
                            <asp:ListItem>Пушачи</asp:ListItem>
                            <asp:ListItem>Непушачи</asp:ListItem>
                        </asp:RadioButtonList>       
                    </td>
            
                </tr>

                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3 left">
                        <p style="text-align:right;">Класа</p> 
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:RadioButtonList ID="rblKlasa" runat="server">
                            <asp:ListItem>Економска</asp:ListItem>
                            <asp:ListItem>Бизнис</asp:ListItem>
                        </asp:RadioButtonList>         
                    </td>
            
                </tr>
        
                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3">
                        <p style="text-align:right;">Послуга</p> 
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:CheckBoxList ID="cblPosluga" runat="server">
                            <asp:ListItem>Пијалок</asp:ListItem>
                            <asp:ListItem>Кафе</asp:ListItem>
                            <asp:ListItem>Оброк</asp:ListItem>
                        </asp:CheckBoxList>        
                    </td>
            
                </tr>

                <tr class="row" style="margin-top: 10px;"> 

                    <td class="col-md-3">
                    </td> 

                    <td class="col-md-9 text-left" style="width: 266px"> 
                        <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />       
                    </td>
            
                </tr>

        </Table>

    </div>
    

</asp:Content>
