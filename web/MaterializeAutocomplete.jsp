<%-- 
    Document   : MaterializeAutocomplete
    Created on : 16-sep-2016, 21:22:58
    Author     : Ing. Marcos Menéndez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="default/head.jsp"/>
    </head>
    <body>
        <!--Navbar-->
        <jsp:include page="default/navbar.jsp"/>
        <main>
            <div class="row">
                <div class="col s12">
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">textsms</i>
                            <input type="text" id="txtBuscar" class="autocomplete">
                            <label for="autocomplete-input" class="">Autocomplete</label>
                            <ul class="autocomplete-content dropdown-content"></ul></div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="default/footer.jsp" />
    </body>
</html>
