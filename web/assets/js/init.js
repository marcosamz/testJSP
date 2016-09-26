(function ($) {
    
    $(function () {
        
        // Plugin initialization
        $('.modal-trigger').leanModal({
            dismissible: false
        });
        $('.button-collapse').sideNav({'edge': 'left'});
        $('select').not('.disabled').material_select();
        
    }); // end of document ready
    
})(jQuery); // end of jQuery name space

function generateEasyAutocomplete() {
        var easy = $('<div>').addClass('row').append(
                $('<div>').addClass('col s12').append(
                $('<div>').addClass('row').append(
                $('<div>').addClass('input-field col s12').append(
                $('<input>').attr('type', 'text').attr('id', 'txtEasyBuscar').attr('placeholder', 'Buscar usuario...'),
                $('<ul>').addClass('autocomplete-content dropdown-content')
                )
                )
                )
                );
        $('#London').append(easy);
        
        var options = {
        url: function () {
            return "ajax/getUsers.jsp";
        },
        getValue: "usuario",
        template: {
            type: "description",
            fields: {
                description: "email"
            }
        },
        list: {
            match: {
                enabled: true
            }
        },
        requestDelay: 400
    };

    $("#txtEasyBuscar").easyAutocomplete(options);
        
//    var script = document.createElement('script');
//    script.onload = function () {
//        alert("Script loaded and ready");
//    };
//    script.src = "http://whatever.com/the/script.js";
//    document.getElementsByTagName('head')[0].appendChild(script);
        
};