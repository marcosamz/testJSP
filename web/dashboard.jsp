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
        <link href="assets/css/tabs.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <header>
            <div id="top-panel" class="mm-topbar dark-primary-color">
                <div class="mm-amenu white-text">
                    <a id="sh_menu" href="#" class="waves-effect waves-light white-text left"><i class="material-icons left">menu</i>AWizard</a>
                </div>
                <div class="mm-subtopbar">
                    <div class="mm-tabs-topbar">
                        <a id="ac_save" href="#" class="waves-effect waves-light white-text"><i class="material-icons">cloud</i></a>
                    </div>
                    <div class="mm-buttons-topbar">
                        <a id="ac_save" href="#" class="waves-effect waves-light white-text right"><i class="material-icons">lock_outline</i></a>
                        <a id="ac_logout" href="#" class="waves-effect waves-light white-text right"><i class="material-icons">save</i></a>
                    </div>
                </div>
            </div>
            <div id="left-panel" class="mm-leftbar grey lighten-3">
                <div class="grey lighten-4">
                    <a href="#" class="waves-effect waves-light"><i class="material-icons right">add_box</i></a>
                </div>
                <div id="tree-menu">
                    Left Bar
                </div>
            </div>
        </header>
        <main>
            <div class="mm-tabs">
                <div class="mm-tab">
                    <input type="radio" id="tab-1" name="tab-group-1" checked>
                    <label for="tab-1">Tab One</label>
                    <div class="mm-content">
                        <p>Stuff for Tab One</p>
                    </div> 
                </div>
                <div class="mm-tab">
                    <input type="radio" id="tab-2" name="tab-group-1">
                    <label for="tab-2">Tab Two</label>
                    <div class="mm-content">
                        <p>Stuff for Tab Two</p>
                        <img src="http://placekitten.com/200/100">
                    </div> 
                </div>
                <div class="mm-tab">
                    <input type="radio" id="tab-3" name="tab-group-1">
                    <label for="tab-3">Tab Three</label>
                    <div class="mm-content">
                        <p>Stuff for Tab Three</p>
                        <img src="http://placedog.com/200/100">
                    </div> 
                </div>

            </div>
        </main>
        <footer>
            
        </footer>
        <script src="assets/js/materialize.min.js"></script>
        <script src="assets/js/ace/min/ace.js" type="text/javascript" charset="utf-8"></script>
        <script src="assets/js/jquery.easy-autocomplete.js"></script>
        <script src="assets/js/init.js"></script>
        <script src="assets/js/dashboard.js"></script>
    </body>
</html>
