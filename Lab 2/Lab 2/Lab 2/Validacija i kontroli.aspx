<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Validacija i kontroli.aspx.cs" Inherits="Lab_2.Validacija_i_kontroli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin: 20px;"> 
        
        <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: row;  
                justify-content: center; align-items: center"> 
                <p  style="margin-left: 100px">Име </p> 
                <asp:TextBox ID="name" runat="server" style="margin-left: 130px"></asp:TextBox>
            </div> 

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    ID="nameVal" 
                    runat="server" 
                    ErrorMessage="Внесете име!" 
                    ControlToValidate="name"
                    ValidationGroup="valGroup" Display="None"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: row;  
                justify-content: center; align-items: center"> 
                <p style="margin-left: 100px">Презиме </p> 
                <asp:TextBox ID="surname" runat="server" style="margin-left: 100px"></asp:TextBox>
            </div> 

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    ID="surnameVal" 
                    runat="server" 
                    ErrorMessage="Внесете презиме!" 
                    ControlToValidate="surname"
                    ValidationGroup="valGroup" Display="None"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: row;  
                justify-content: center; align-items: center; left: 0px; top: -3px;"> 
                <p style="margin-left: 185px">ФИНКИ ID </p>
                <asp:TextBox ID="username" runat="server" style="margin-left: 100px"></asp:TextBox>
                @finki.ukim.mk
            </div> 

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" 
                    runat="server" 
                    ErrorMessage="Внеси ID" 
                    ControlToValidate="username"
                    ValidationGroup="valGroup" Display="None"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    ID="usernameVal" 
                    ControlToValidate="username"
                    runat="server" 
                    ErrorMessage="Неправилен формат на ID"
                    ValidationExpression="^[A-Z0-9]*_?\d{2,}$"
                    ValidationGroup="valGroup" 
                    Display="None"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div style="margin-left:120px; font-size:10px">
            може да ги содржи знаците a-z,0-9,_ и минимум една точка
        </div>
        <br />
            
        <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: row;  
                justify-content: center; align-items: center">
                <p style="margin-left: 100px">Лозинка</p>
                <asp:TextBox ID="pass" runat="server" TextMode="Password" 
                    style="margin-left: 100px"></asp:TextBox>
            </div>

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    ID="passVal" 
                    runat="server" 
                    ControlToValidate="pass"
                    ErrorMessage="Внеси лозинка!"
                    ValidationGroup="valGroup" Display="None">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    ID="passRegEx" 
                    ControlToValidate="pass"
                    runat="server" 
                    ErrorMessage="Невалидна лозинка!"
                    ValidationExpression="^([a-z0-9_]*[.]?[a-z0-9_]*)$"
                    ValidationGroup="valGroup" 
                    Display="None">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: row;  
                justify-content: center; align-items: center">
                <p style="margin-left: 100px">Потврда</p>
                <asp:TextBox ID="cpass" runat="server" TextMode="Password" 
                    style="margin-left: 100px"></asp:TextBox>
            </div>

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    ID="cpassRequiredVal" 
                    runat="server" 
                    ControlToValidate="cpass"
                    ErrorMessage="Внеси потврда!"
                    ValidationGroup="valGroup" Display="None"></asp:RequiredFieldValidator>
                <asp:CompareValidator 
                    ID="cpassVal" 
                    runat="server" 
                    ErrorMessage="Различни лозинки"
                    ControlToValidate="cpass"
                    ControlToCompare="pass"
                    ValidationGroup="valGroup" Display="None"></asp:CompareValidator>
            </div>
        </div>

        <asp:ValidationSummary 
            ID="valSum" 
            runat="server" 
            DisplayMode="BulletList"
            ValidationGroup="valGroup" ForeColor="Red"/>

        <br />

        <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: row;  
                justify-content: center; align-items: center"> 
                <p  style="margin-left: 100px">Адреса </p> 
                <asp:TextBox ID="address" runat="server" style="margin-left: 110px"></asp:TextBox>
            </div> 

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="addressVal" 
                    runat="server" 
                    ErrorMessage="Внеси адреса!" 
                    ControlToValidate="address"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: row;  
                justify-content: center; align-items: center"> 
                <p style="margin-left: 100px">Телефон</p>
                <asp:TextBox ID="telefon" runat="server" style="margin-left: 100px"></asp:TextBox>
            </div> 

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator2" 
                    runat="server" 
                    ErrorMessage="Задолжително да се пополни полето" 
                    ControlToValidate="telefon" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="telVal" 
                    ControlToValidate="telefon"
                    runat="server" 
                    ValidationExpression="^\+389\s\d\s\d{4}\s\d{3}|^\+389\s\d{2}\s\d{3}\s\d{3}$"
                    ErrorMessage="Неправилен формат">
                </asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: row;  
                justify-content: center; align-items: center"> 
                <p style="margin-left: 20px; margin-right: 130px">Пол</p>
                <asp:RadioButtonList ID="gender" runat="server" 
                    RepeatDirection="Horizontal" Width="97px">
                    <asp:ListItem>М</asp:ListItem>
                    <asp:ListItem>Ж</asp:ListItem>
                </asp:RadioButtonList>
            </div> 

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="genderVal" 
                    runat="server" 
                    ErrorMessage="Избери пол" 
                    ControlToValidate="gender">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3" > 
                <p>Датум на раѓање</p>
                <asp:Calendar ID="birthday" runat="server"></asp:Calendar>
            </div> 

            <%--<div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator3" 
                    runat="server" 
                    ErrorMessage="Одберете датум на раѓање" 
                    ControlToValidate="birthday">
                </asp:RequiredFieldValidator>
            </div>--%>
        </div>

        <br />

         <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: column;  
                justify-content: center; align-items: flex-start"> 
                <p>Занимање</p>
                <asp:DropDownList ID="work" runat="server">
                    <asp:ListItem>Воено лице</asp:ListItem>
                    <asp:ListItem>Готвач</asp:ListItem>
                    <asp:ListItem>Доктор</asp:ListItem>
                    <asp:ListItem>Пилот</asp:ListItem>
                    <asp:ListItem>Инженер</asp:ListItem>
                    <asp:ListItem>Келнер</asp:ListItem>
                    <asp:ListItem>Продавач</asp:ListItem>
                    <asp:ListItem>Професор</asp:ListItem>
                    <asp:ListItem>Друго</asp:ListItem>
                </asp:DropDownList>
            </div> 

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator3" 
                    runat="server" 
                    ErrorMessage="Одберете занимање!" 
                    ControlToValidate="work">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-md-3" style="display:flex; flex-direction: column;  
                justify-content: center; align-items: flex-start"> 
                <p>Години на вршење на избрана дејност</p>
                <asp:TextBox ID="yearsXp" runat="server"> </asp:TextBox>
            </div> 

            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator4" 
                    runat="server" 
                    ErrorMessage="Внесете број на години!" 
                    ControlToValidate="yearsXp">
                </asp:RequiredFieldValidator>

            </div>
        </div>

        <br />

        <div style="align-content:center">
            <asp:Button ID="Button1" runat="server" Text="Поднеси" ValidationGroup="valGroup" />
        </div>
    </div>

</asp:Content>
