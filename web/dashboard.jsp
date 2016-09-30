<%-- 
    Document   : principal
    Created on : 10-sep-2016, 10:58:05
    Author     : Ing. Marcos Menéndez

color verde #26a69a
color narnaj #ee6e73

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
        <link href="assets/css/materialize.css"  rel="stylesheet">
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
                                <a href="#" class="tablinks" onclick="openContent(event, 'London')">London marcos</a>
                                <div onclick="" class="close-thin"></div>
                            </li>
                            <li class="dialog grey lighten-4">
                                <a href="#" class="tablinks" onclick="openContent(event, 'Paris')">Paris antonio</a>
                                <div onclick="" class="close-thin"></div>
                            </li>
                            <li class="dialog grey lighten-4">
                                <a href="#" class="tablinks" title="Tokyo menendez zambrano" onclick="openContent(event, 'Tokyo')">Tokyo menendez zambrano</a>
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
                <div class="row">
                    <div class="col s12">
                        <ul class="tabs">
                            <li class="tab col s3"><a href="#test1">Test 1</a></li>
                            <li class="tab col s3"><a class="active" href="#test2">Test 2</a></li>
                            <li class="tab col s3 disabled"><a href="#test3">Disabled Tab</a></li>
                            <li class="tab col s3"><a href="#test4">Test 4</a></li>
                        </ul>
                    </div>
                    <div id="test1" class="col s12">Test 1</div>
                    <div id="test2" class="col s12">Test 2</div>
                    <div id="test3" class="col s12">Test 3</div>
                    <div id="test4" class="col s12">Test 4</div>
                </div>
            </div>

            <div id="Paris" class="tabcontent">
                <div class="row">
                    <form class="col s12">
                        <div class="row">
                            <div class="input-field col s6">
                                <input placeholder="Placeholder" id="first_name" type="text" class="validate">
                                <label for="first_name">First Name</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="last_name" type="text" class="validate">
                                <label for="last_name">Last Name</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input disabled value="I am not editable" id="disabled" type="text" class="validate">
                                <label for="disabled">Disabled</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="password" type="password" class="validate">
                                <label for="password">Password</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="email" type="email" class="validate">
                                <label for="email">Email</label>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row">
                    <form class="col s12">
                        <div class="row">
                            <div class="input-field col s6">
                                <input placeholder="Placeholder" id="first_name" type="text" class="validate">
                                <label for="first_name">First Name</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="last_name" type="text" class="validate">
                                <label for="last_name">Last Name</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input disabled value="I am not editable" id="disabled" type="text" class="validate">
                                <label for="disabled">Disabled</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="password" type="password" class="validate">
                                <label for="password">Password</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="email" type="email" class="validate">
                                <label for="email">Email</label>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row">
                    <form class="col s12">
                        <div class="row">
                            <div class="input-field col s6">
                                <input placeholder="Placeholder" id="first_name" type="text" class="validate">
                                <label for="first_name">First Name</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="last_name" type="text" class="validate">
                                <label for="last_name">Last Name</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input disabled value="I am not editable" id="disabled" type="text" class="validate">
                                <label for="disabled">Disabled</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="password" type="password" class="validate">
                                <label for="password">Password</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="email" type="email" class="validate">
                                <label for="email">Email</label>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            
            <div id="Tokyo" class="tabcontent">
                <div style="background: red; height: 50px;"></div>
            </div>
            
        </main>
        <footer>
            
        </footer>
        <script src="assets/js/materialize.js"></script>
        <script src="assets/js/ace/min/ace.js" type="text/javascript" charset="utf-8"></script>
        <script src="assets/js/jquery.easy-autocomplete.js"></script>
        <script src="assets/js/dashboard.js"></script>
        <script src="assets/js/mm1-tabs.js"></script>
        <script src="assets/js/init.js"></script>
    </body>
</html>
