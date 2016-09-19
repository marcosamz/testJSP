<%@page import="app.test.utils.UsuariosAutocomplete"%>
<%
    out.write(UsuariosAutocomplete.getJSONARRAY().toString());
%>