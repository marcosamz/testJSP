<%-- 
    Document   : allProducts
    Created on : 10-sep-2016, 11:20:48
    Author     : Ing. Marcos Menéndez
--%>

<%@page import="app.test.dao.ProductoDAO"%>
<%@page import="app.test.models.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="default/head.jsp"/>
        <script src="assets/js/filter_products.js"></script>
    </head>
    <body>
        <!--Navbar-->
        <jsp:include page="default/navbar.jsp"/>
        <main style="margin:15px;">
            <div class="row">
                <div class='input-field col s6'>
                    <h5 class="">Lista de Productos</h5>
                </div>
                <div class='input-field col s6'>
                    <div class="nav-wrapper">
                        <div center class="row input-field col s12">
                            <input id="filterProduct" name="filterProduct" type="search" required placeholder="Buscar...">
                            <label for="search"></label>
                        </div>
                    </div>
                </div>
            </div>
            <center>
                <div class="z-depth-1 grey lighten-5 row" >
                    <form name="frmListProducts" id="frmListProducts" class="col s12" action="PorductoController" method="post">

                        <table id="listProducts" name="listProducts" class="responsive-table bordered highlight">
                            <thead>
                                <tr>
                                    <th class="sorting" tabindex="0" aria-controls="datatable1" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 211px;">ID</th>
                                    <th>Producto</th>
                                    <th>Descripción</th>
                                    <th>Precio</th>
                                    <th>Estado</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% ProductoDAO service = new ProductoDAO(); %>
                                <% List<Producto> ls = service.getAll(); %>
                                <% for (Producto p : ls) { %>
                                <tr>
                                    <td><%= p.getId()%></td>
                                    <td><%= p.getNombre()%></td>
                                    <td><%= p.getDescripcion()%></td>
                                    <td><%= p.getPrecio()%></td>
                                    <td><%= p.getStrEstado()%></td>
                                    <td>
                                        <a href=""><i class="material-icons">edit</i></a>
                                        <a href=""><i class="material-icons">delete</i></a>
                                    </td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </form>
                </div>
            </center>
        </main>
        <jsp:include page="default/footer.jsp" />
        <script>
            $(document).ready(function () {
                $('select').material_select();
            });
        </script>
    </body>
</html>
