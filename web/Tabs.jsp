
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Dynamic tabs with jQuery - why and how to create them | JankoAtWarpSpeed Demos</title>
    <style type="text/css">
        body { font-family:Lucida Sans, Lucida Sans Unicode, Arial, Sans-Serif; font-size:13px; margin:0px auto;}
        #tabs { margin:0; padding:0; list-style:none; overflow:hidden; }
        #tabs li { float:left; display:block; padding:5px; background-color:#bbb; margin-right:5px;}
        #tabs li a { color:#fff; text-decoration:none; }
        #tabs li.current { background-color:#e1e1e1;}
        #tabs li.current a { color:#000; text-decoration:none; }
        #tabs li a.remove { color:#f00; margin-left:10px;}
        #content { background-color:#e1e1e1;}
        #content p { margin: 0; padding:20px 20px 100px 20px;}
        
        #main { width:900px; margin:0px auto; overflow:hidden;background-color:#F6F6F6; margin-top:20px;
             -moz-border-radius:10px;  -webkit-border-radius:10px; padding:30px;}
        #wrapper, #doclist { float:left; margin:0 20px 0 0;}
        #doclist { width:150px; border-right:solid 1px #dcdcdc;}
        #doclist ul { margin:0; list-style:none;}
        #doclist li { margin:10px 0; padding:0;}
        #documents { margin:0; padding:0;}
        
        #wrapper { width:700px; margin-top:20px;}
            
        #header{ background-color:#F6F6F6; width:900px; margin:0px auto; margin-top:20px;
             -moz-border-radius:10px;  -webkit-border-radius:10px; padding:30px; position:relative;}
        #header h2 {font-size:16px; font-weight:normal; margin:0px; padding:0px;}

    </style>
    
    <script type="text/javascript" src="jquery-1.4.min.js" ></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#documents a").click(function() {
//                alert($("#documents a").val());
                addTab($(this));
            });

            $('#tabs a.tab').live('click', function() {
                // Get the tab name
                var contentname = $(this).attr("id") + "_content";

                // hide all other tabs
                $("#content p").hide();
                $("#tabs li").removeClass("current");

                // show current tab
                $("#" + contentname).show();
                $(this).parent().addClass("current");
            });

            $('#tabs a.remove').live('click', function() {
                // Get the tab name
                var tabid = $(this).parent().find(".tab").attr("id");

                // remove tab and related content
                var contentname = tabid + "_content";
                $("#" + contentname).remove();
                $(this).parent().remove();

                // if there is no current tab and if there are still tabs left, show the first one
                if ($("#tabs li.current").length == 0 && $("#tabs li").length > 0) {

                    // find the first tab    
                    var firsttab = $("#tabs li:first-child");
                    firsttab.addClass("current");

                    // get its link name and show related content
                    var firsttabid = $(firsttab).find("a.tab").attr("id");
                    $("#" + firsttabid + "_content").show();
                }
            });
        });
        function addTab(link) {
            alert($("#" + $(link).attr("rel")).length);
            // If tab already exist in the list, return
//            if ($("#" + $(link).attr("rel")).length != 0)
//                return;
            
            // hide other tabs
            $("#tabs li").removeClass("current");
            $("#content p").hide();
            
            // add new tab and related content
            $("#tabs").append("<li class='current'><a class='tab' id='" +
                $(link).attr("rel") + "' href='#'>" + $(link).html() + 
                "</a><a href='#' class='remove'>x</a></li>");

            $("#content").append("<p id='" + $(link).attr("rel") + "_content'>" + 
                $(link).attr("title") + "</p>");
            
            // set the newly added tab as current
            $("#" + $(link).attr("rel") + "_content").show();
        }
    </script>
</head>
<body>
    <div id="header">
        <img src="logo.jpg" alt="JankoAtWarpSpeed demos" /><br />
        <h2>Tutorial: <a href="http://www.jankoatwarpspeed.com/post/2010/01/26/dynamic-tabs-jquery.aspx">Dynamic tabs with jQuery - why and how to create them</a></h2>
        <img src="" alt="Click on lnks to open 'documents' in tabs" style="position:absolute;left:-170px; top:200px;" />
    </div>
    <div id="main">
    <div id="doclist">
        <h2>Documents</h2>
        <ul id="documents">
            <li><a onclick="addTab(this)" href="#" rel="Document1" title="This is the content of Document1">Document1</a></li>
            <li><a href="#" rel="Document2" title="This is the content of Document2">Document2</a></li>
            <li><a href="#" rel="Document3" title="This is the content of Document3">Document3</a></li>
            <li><a href="#" rel="Document4" title="This is the content of Document4">Document4</a></li>
            <li><a href="#" rel="Document5" title="This is the content of Document5">Document5</a></li>
        </ul>
    </div>
    <div id="wrapper">
        <ul id="tabs">
            <!-- Tabs go here -->
        </ul>
        <div id="content">
            <!-- Tab content goes here -->
        </div>
    </div>
    </div>
</body>
</html>
