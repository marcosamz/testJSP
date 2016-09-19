<%-- 
    Document   : addProduct
    Created on : 10-sep-2016, 10:57:09
    Author     : Ing. Marcos Menéndez
--%>

<%@page import="app.test.models.Producto"%>
<%@page import="java.util.List"%>
<%@page import="app.test.dao.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="default/head.jsp" />
        <script src="assets/js/filter_products.js"></script>
        <script src="assets/js/addProducts.js"></script>
    </head>
    <body>
        <!--Navbar-->
        <jsp:include page="default/navbar.jsp" />
        <!--Contenido-->
        <main>
            <div class="row">
                <div class="input-field col s9">
                    <h5>Registro de Productos</h5>
                </div>
                <div class="input-field col s3">
                    <a class="waves-effect waves-light btn modal-trigger" href="#buscarProducto">Buscar</a>
                    <div id="buscarProducto" class="modal modal-fixed-footer">
                        <div class="modal-content">
                            <div class="row">
                                <div class="col s6">
                                    <h5>Lista de Productos</h5>
                                </div>
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">search</i>
                                    <input id="filterProduct" name="filterProduct" type="text">
                                    <label for="filterProduct">Buscar</label>
                                </div>
                            </div>
                            <table id="listProducts" name="listProducts" class="responsive-table bordered highlight">
                                <thead>
                                    <tr>
                                        <th style="display:none;">ID</th>
                                        <th>Producto</th>
                                        <th>Descripción</th>
                                        <th>Estado</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% ProductoDAO service = new ProductoDAO(); %>
                                    <% List<Producto> ls = service.getAll(); %>
                                    <% for (Producto p : ls) {%>
                                    <tr ondblclick="setData(this)">
                                        <td style="display:none;"><%%></td>
                                        <td><%= p.getNombre()%></td>
                                        <td><%= p.getPrecio()%></td>
                                        <td><%= p.getStrEstado()%></td>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cerrar</a>
                        </div>
                    </div>
                </div>
            </div>
            <center>
                <div style="margin:15px;">
                    <div class="z-depth-1 grey lighten-5 row">
                        <form name="frmAddProducts" id="frmAddProducts" class="col s12" action="ProductoController" method="post">
                            <div class='row'>
                                <div class='input-field col s6'>
                                    <input type='text' name='nombre' id='nombre' />
                                    <label for='nombre'>Ingrese el nombre</label>
                                </div>
                                <div class='input-field col s6'>
                                    <input type='text' name='precio' id='precio' />
                                    <label for='precio'>Ingrese el precio</label>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='input-field col s12'>
                                    <textarea class='materialize-textarea' type='text' name='descripcion' id='descripcion'></textarea>
                                    <label for='descripcion'>Ingrese la descripción</label>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='input-field col s6'>
                                    <select name="estado" id="estado">
                                        <option value=1>Activo</option>
                                        <option value=0>Inactivo</option>
                                    </select>
                                    <label for='estado'>Seleccione el estado</label>
                                </div>
                            </div>
                            <br/>
                            <center>
                                <div class='row col s3 center-align'>
                                    <button type='submit' name='btn_enviar' class='col s12 btn btn-large waves-effect indigo'>Enviar</button>
                                </div>
                            </center>
                        </form>
                    </div>
                </div>
            </center>
        </main>
        <!--Footer-->
        <jsp:include page="default/footer.jsp" />
    </body>
</html>