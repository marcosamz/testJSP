<%-- 
    Document   : TestCloseButtons
    Created on : 22-sep-2016, 19:11:09
    Author     : Ing. Marcos Menéndez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* Common */

            body {
                color: #777;
                text-align: center;
            }

            /* Close Button */

            [class*='close-'] {
                color: #777;
                font: 14px/100% arial, sans-serif;
                position: absolute;
                right: 5px;
                text-decoration: none;
                text-shadow: 0 1px 0 #fff;
                top: 5px;
            }

            .close-classic:after {
                content: 'X'; /* ANSI X letter */
            }

            .close-thin:after {
                content: '×'; /* UTF-8 symbol */
            }

            .close-thin:hover {
                color: blue;
            }

            .close-thik:after {
                content: '✖'; /* UTF-8 symbol */
            }

            /* Dialog */

            .dialog {
                background: #ddd;
                border: 1px solid #ccc;
                border-radius: 5px;
                float: left;
                height: 200px;
                margin: 20px;
                position: relative;
                width: 150px;

            }

            /* Container */

            .container {
                width: 576px; margin: 0 auto;
            }

            .container:after {
                content: '';
                display: block;
                clear: both;
            }
        </style>
        
        
    </head>
    <body>
        <h1>CSS close buttons using text</h1>

        <div class="container">

            <div class="dialog">
                <a href="#" class="close-classic"></a>
            </div>

            <div class="dialog">
                <a href="#" class="close-thin"></a>
            </div>

            <div class="dialog">
                <a href="#" class="close-thik"></a>
            </div>

        </div>

        <!-- my blog starikovs.com -->
        <a href="http://starikovs.com" style="font-size:12px; color: #777; font-style: italic; text-decoration: none !important; border: none !important;">starikovs</a>
    </body>
</html>
