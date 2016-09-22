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
            
<!--            <div class="mm-tabs">
                <div class="mm-tabs-header">
                    <div class="mm-border"></div>
                    <ul>
                        <li class="mm-active"><a href="#tab-1" tab-id="1" ripple="ripple" ripple-color="#FFF">Tab 1</a></li>
                        <li><a href="#tab-2" tab-id="2" ripple="ripple" ripple-color="#FFF">Tab 2</a></li>
                        <li><a href="#tab-3" tab-id="3" ripple="ripple" ripple-color="#FFF">Tab 3</a></li>
                    </ul>
                    <nav class="mm-tabs-nav">
                        <i id="prev" ripple="ripple" ripple-color="#FFF" class="material-icons">&#xE314;</i>
                        <i id="next" ripple="ripple" ripple-color="#FFF" class="material-icons">&#xE315;</i>
                    </nav>
                </div>
                <div class="mm-tabs-content">
                    <div tab-id="1" class="mm-tab mm-active">Tabbed Content 1</div>
                    <div tab-id="2" class="mm-tab">Tabbed Content 2</div>
                    <div tab-id="3" class="mm-tab">Tabbed Content 3</div>
                </div>
            </div>-->
                
        </main>
        <footer>
            
        </footer>
        <script src="assets/js/materialize.min.js"></script>
        <script src="assets/js/ace/min/ace.js" type="text/javascript" charset="utf-8"></script>
        <script src="assets/js/jquery.easy-autocomplete.js"></script>
        <script src="assets/js/init.js"></script>
        <script src="assets/js/dashboard.js"></script>
        <script src="assets/js/tabs.js"></script>
    </body>
</html>
