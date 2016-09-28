<%-- 
    Document   : dashboard1
    Created on : 27-sep-2016, 20:31:54
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
        <link href="assets/css/materialize.css"  rel="stylesheet">
        <link href="assets/css/ace/ace-editor.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/easy-autocomplete.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/dashboard.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/mm1-tabs.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        
        <main>
            <div class="row">
                <div class="col s12">
                    <ul class="tabs">
                        <li class="tab col s3"><a href="#test1">Tab 1</a></li>
                        <li class="tab col s3"><a class="active" href="#test2">Tab 2</a></li>
                        <li class="tab col s3 disabled"><a href="#test3">Tab 3</a></li>
                        <li class="tab col s3"><a href="#test4">Tab 4</a></li>
                    </ul>
                </div>
                
            </div>
            <div id="test1" class="col s12">
                    
                    <div class="row">
                        <div class="col s12">
                            <ul class="tabs">
                                <li class="tab col s3"><a href="#test11">Codigo</a></li>
                                <li class="tab col s3"><a class="active" href="#test22">General</a></li>
                                <li class="tab col s3 disabled"><a href="#test33">Parametros</a></li>
                                <li class="tab col s3"><a href="#test44">Usuarios</a></li>
                            </ul>
                        </div>
                        <div id="test11" class="col s12">

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
                        <div id="test22" class="col s12">Test 22</div>
                        <div id="test33" class="col s12">Test 33</div>
                        <div id="test44" class="col s12">Test 44</div>
                    </div>
                    
                </div>
                <div id="test2" class="col s12">Test 2</div>
                <div id="test3" class="col s12">Test 3</div>
                <div id="test4" class="col s12">Test 4</div>
        </main>
        <script src="assets/js/materialize.js"></script>
        <script src="assets/js/ace/min/ace.js" type="text/javascript" charset="utf-8"></script>
        <script src="assets/js/jquery.easy-autocomplete.js"></script>
        <script src="assets/js/dashboard.js"></script>
        <script src="assets/js/mm1-tabs.js"></script>
        <script src="assets/js/init.js"></script>
    </body>
</html>
