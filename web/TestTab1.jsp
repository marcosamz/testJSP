<%-- 
    Document   : TestTab1
    Created on : 22-sep-2016, 20:39:04
    Author     : Ing. Marcos Menéndez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MMTabs 1</title>
        <link href="assets/css/materialicons.css" rel="stylesheet">
        <link href="assets/css/materialize.min.css"  rel="stylesheet">
        <link href="assets/css/mm1-tabs.css"  rel="stylesheet">
    </head>
    <body>
        <main>
            
            <ul class="tab">
                <li class="dialog grey lighten-4">
                    <a href="#" class="tablinks" onclick="openCity(event, 'London')">London</a>
                    <div onclick="" class="close-thin"></div>
                </li>
                <li class="dialog grey lighten-4">
                    <a href="#" class="tablinks" onclick="openCity(event, 'Paris')">Paris</a>
                    <div onclick="" class="close-thin"></div>
                </li>
                <li class="dialog grey lighten-4">
                    <a href="#" class="tablinks" onclick="openCity(event, 'Tokyo')">Tokyo</a>
                    <div onclick="" class="close-thin"></div>
                </li>
            </ul>

            <div id="London" class="tabcontent">
                <h3>London</h3>
                <p>London is the capital city of England.</p>
            </div>

            <div id="Paris" class="tabcontent">
                <h3>Paris</h3>
                <p>Paris is the capital of France.</p> 
            </div>

            <div id="Tokyo" class="tabcontent">
                <h3>Tokyo</h3>
                <p>Tokyo is the capital of Japan.</p>
            </div>
            
        </main>
        <script src="assets/js/materialize.min.js"></script>
        <script>
            function openCity(evt, cityName) {
                // Declare all variables
                var i, tabcontent, tablinks;

                // Get all elements with class="tabcontent" and hide them
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }

                // Get all elements with class="tablinks" and remove the class "active"
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }

                // Show the current tab, and add an "active" class to the link that opened the tab
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }
        </script>
    </body>
</html>
