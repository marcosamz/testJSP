<%-- 
    Document   : salida
    Created on : 15-sep-2016, 21:35:02
    Author     : Ing. Marcos Menéndez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="default/head.jsp" />
        <style type="text/css">
        #txtSalida { 
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }
    </style>
    </head>
    <body>
        <header>
            <!--Navbar-->
            <jsp:include page="default/navbar.jsp"/>
            <div class="row">
                <div class="input-field col s6">
                    <jsp:include page="modals/buscarSalidas.jsp"/>
                </div>
                <div class="input-field col s6">
                    <a class="waves-effect waves-light btn left" onclick="saveSalida()"><i class="material-icons left">save</i>Guardar</a>
                </div>
            </div>
        </header>
        <main>
            <ul class="collapsible" data-collapsible="expandable">
                <li>
                    <div class="collapsible-header"><i class="material-icons">filter_drama</i>Salida</div>
                    <div class="collapsible-body">
                        <div class="container">
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="txtNombre" type="text">
                                    <label for="txtNombre">Nombre</label>
                                </div>
                                <div class="input-field col s6">
                                    <div class="switch">
                                        <label>
                                            Inactivo
                                            <input id="chkEstado" name="chkEstado" type="checkbox">
                                            <span class="lever"></span>
                                            Activo
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12" style="height:200px">
                                    <div id="txtSalida"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons">place</i>Parametros</div>
                    <div class="collapsible-body">
                        <div class="container">
                            <div class="row">
                                <div class="input-field col s12">
                                    <a class="waves-effect waves-light btn center" onclick="addParametros()"><i class="material-icons left">add</i>Agregar</a>
                                </div>
                            </div>
                            <table id="tblSalida">
                                <thead>
                                    <tr>
                                        <th>Parametro</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons">whatshot</i>Usuarios</div>
                    <div class="collapsible-body">
                        <div class="container">
                            <div class="row">
                                <div class="input-field col s9">
                                    <i class="material-icons prefix">search</i>
                                    <input id="txtBuscarUsuario" type="text" class="autocomplete">
                                    <label for="txtBuscarUsuario">Buscar usuario...</label>
                                </div>
                                <div class="input-field col s3">
                                    <a class="waves-effect waves-light btn"><i class="material-icons">add</i></a>
                                </div>
                            </div>
                            <table id="tblUsuario">
                                <thead>
                                    <tr>
                                        <th>Usuarios</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons">whatshot</i>Roles</div>
                    <div class="collapsible-body">
                        <div class="container">
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">search</i>
                                    <input id="txtBuscarRol" type="text">
                                    <label for="txtBuscarRol">Buscar rol...</label>
                                </div>
                            </div>
                            <table id="tblSalida">
                                <thead>
                                    <tr>
                                        <th>Roles</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </li>
            </ul>
        </main>
        <jsp:include page="default/footer.jsp" />
        <script>
            var editorHTML = ace.edit("txtSalida");
            editorHTML.setTheme("ace/theme/textmate");
            editorHTML.getSession().setMode("ace/mode/html");
        </script>
    </body>
</html>
