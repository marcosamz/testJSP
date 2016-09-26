<%-- 
    Document   : EasyAutocomplete
    Created on : 17-sep-2016, 20:01:08
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
                            <input type="text" id="txtEasyBuscar" placeholder="Buscar usuario...">
                            <ul class="autocomplete-content dropdown-content"></ul></div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="default/footer.jsp" />
        <script>
            var options = {
            url: function() {
              return "ajax/getUsers.jsp";
            },

            getValue: "usuario",
            
            template: {
		type: "description",
		fields: {
			description: "email"
		}
            },

            list: {
                match: {
                    enabled: true
                }
            },

            requestDelay: 400
          };

          $("#txtEasyBuscar").easyAutocomplete(options);
        </script>
    </body>
</html>
