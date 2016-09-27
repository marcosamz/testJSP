<%-- 
    Document   : principal
    Created on : 10-sep-2016, 10:58:05
    Author     : Ing. Marcos Menéndez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MMSoft.</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="assets/js/jquery-3.1.0.js"></script>
        <link href="assets/css/materialicons.css" rel="stylesheet">
        <link href="assets/css/materialize.min.css"  rel="stylesheet">
        <link href="assets/css/ace/ace-editor.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/easy-autocomplete.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/dashboard.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/mm1-tabs.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <header>
            <div id="top-panel" class="mm-topbar dark-primary-color">
                <div class="mm-amenu white-text">
                    <a id="sh_menu" href="#" class="waves-effect waves-light white-text left"><i class="material-icons left">menu</i>AWizard</a>
                </div>
                <div class="mm-subtopbar">
                    <div class="mm-tabs-topbar">
                        <ul class="tab">
                            <li class="dialog grey lighten-4">
                                <a href="#" class="tablinks" onclick="openContent(event, 'London')">London</a>
                                <div onclick="" class="close-thin"></div>
                            </li>
                            <li class="dialog grey lighten-4">
                                <a href="#" class="tablinks" onclick="openContent(event, 'Paris')">Paris</a>
                                <div onclick="" class="close-thin"></div>
                            </li>
                            <li class="dialog grey lighten-4">
                                <a href="#" class="tablinks" onclick="openContent(event, 'Tokyo')">Tokyo</a>
                                <div onclick="" class="close-thin"></div>
                            </li>
                        </ul>
                    </div>
                    <div class="mm-buttons-topbar">
                        <a id="ac_save" href="#" class="waves-effect waves-light white-text right"><i class="material-icons">lock_outline</i></a>
                        <a id="ac_logout" href="#" class="waves-effect waves-light white-text right"><i class="material-icons">save</i></a>
                    </div>
                </div>
            </div>
            <div id="left-panel" class="mm-leftbar grey lighten-3">
                <div class="grey lighten-4">
                    <a href="#" onclick="generateEasyAutocomplete()" class="waves-effect waves-light"><i class="material-icons right">add_box</i></a>
                    <a href="#" onclick="showSelectedItemEasy()" class="waves-effect waves-light"><i class="material-icons right">save</i></a>
                </div>
                <div id="tree-menu">
                    Left Bar
                </div>
            </div>
        </header>
        <main>
            
            <div id="London" class="tabcontent">
<!--                <h3>London</h3>
                <p>London is the capital city of England.</p>-->
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
        <footer>
            
        </footer>
        <script src="assets/js/materialize.min.js"></script>
        <script src="assets/js/ace/min/ace.js" type="text/javascript" charset="utf-8"></script>
        <script src="assets/js/jquery.easy-autocomplete.js"></script>
        <script src="assets/js/dashboard.js"></script>
        <script src="assets/js/mm1-tabs.js"></script>
        <script src="assets/js/init.js"></script>
    </body>
</html>
