<%-- 
    Document   : AceEditor
    Created on : 15-sep-2016, 23:40:51
    Author     : Ing. Marcos Menéndez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="default/head.jsp"/>
    </head>
    <style type="text/css">
        #editor { 
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 350px;
        }
    </style>
    <body>
        <!--Navbar-->
        <jsp:include page="default/navbar.jsp"/>
        <main>
            <div id="editor">function foo(items) {
                var x = "All this is syntax highlighted";
                return x;
                }</div>
        </main>
        <jsp:include page="default/footer.jsp" />
        <script>
            var editor = ace.edit("editor");
            editor.setTheme("ace/theme/monokai");
            editor.getSession().setMode("ace/mode/javascript");
        </script>
    </body>
</html>
