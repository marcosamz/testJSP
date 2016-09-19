<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Test Marcos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="assets/js/jquery-3.1.0.js"></script>
        <link href="assets/css/materialicons.css" rel="stylesheet">
        <link href="assets/css/materialize.min.css"  rel="stylesheet">
        <script src="assets/js/materialize.min.js"></script>
        <script src="assets/js/init.js"></script>
    </head>
    <body>
        <div class="section"></div>
        <main>
            <center>
                <div class="section"></div>
                <div class="section"></div>
                <img class="responsive-img" style="width: 250px;" src="http://i.imgur.com/ax0NCsK.gif" />
                <div class="section"></div>

                <div class="container">
                    <div class="z-depth-1 grey lighten-4 row" style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">
                        <form class="col s12" action="LoginController" method="post">
                            <div class='row'>
                                <div class='input-field col s12'>
                                    <i class="material-icons prefix">account_circle</i>
                                    <input class='validate' type='email' name='email' id='email' />
                                    <label for='email'>Ingrese su email</label>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='input-field col s12'>
                                    <i class="material-icons prefix">vpn_key</i>
                                    <input class='validate' type='password' name='password' id='password' />
                                    <label for='password'>Ingrese su clave</label>
                                </div>
                                <label style='float: right;'>
                                    <a class='pink-text' href='#!'><b>¿Olvidó su clave?</b></a>
                                </label>
                            </div>
                            <br/>
                            <center>
                                <div class='row'>
                                    <button type='submit' name='btn_login' class='col s12 btn btn-large waves-effect indigo'>Ingresar</button>
                                </div>
                            </center>
                        </form>
                    </div>
                </div>
            </center>
        </main>
    </body>
</html>
