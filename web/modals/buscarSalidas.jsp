<%@page import="app.test.dao.SalidaDAO"%>
<%@page import="app.test.models.Salida"%>
<%@page import="java.util.List"%>
<a class="waves-effect waves-light btn modal-trigger right" href="#buscarSalida"><i class="material-icons left">search</i>Buscar</a>
<div id="buscarSalida" class="modal modal-fixed-footer">
    <div class="modal-content">
        <div class="row">
            <div class="col s6">
                <h5>Lista de Salidas</h5>
            </div>
            <div class="input-field col s6">
                <i class="material-icons prefix">search</i>
                <input id="filtrarSalida" name="filtrarSalida" type="text">
                <label for="filtefiltrarSalidarProduct">Buscar</label>
            </div>
        </div>
        <table id="listaSalidas" name="listaSalidas" class="responsive-table bordered highlight">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                <% SalidaDAO service = new SalidaDAO(); %>
                <% List<Salida> ls = service.getAll(); %>
                <% for (Salida s : ls) {%>
                <tr ondblclick="setData(<%=s%>)">
                    <td><%=s.getNombre()%></td>
                    <td><%=s.getStrEstado()%></td>
                </tr>
                <% }%>
            </tbody>
        </table>
    </div>
    <div class="modal-footer">
        <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cerrar</a>
    </div>
</div>