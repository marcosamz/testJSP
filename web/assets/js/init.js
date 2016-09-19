(function ($) {
    $(function () {
        
        // Plugin initialization
        $('.modal-trigger').leanModal({
            dismissible: false
        });
        $('.button-collapse').sideNav({'edge': 'left'});
        $('select').not('.disabled').material_select();
        
        $('#txtBuscar').autocomplete({
            data: {"Apple": null, "Microsoft": null, "Google": 'http://placehold.it/250x250'}
        });
        $('#txtBuscarUsuario').autocomplete({
//            data: {"marcos": null, "CArlos": null, "Silvia": 'http://recursospracticos.com/wp-content/uploads/2016/04/foto-de-perfil-en-facebook.jpg'}
//            data:   function() {
//                        return "ajax/getUsers.jsp";
//                    }
            url: function (phrase) {
                return "ajax/getUsers.jsp";
            },
            getValue: function (element) {
                return element.usuario;
            },
            ajaxSettings: {
                dataType: "json",
                method: "POST",
                data: {
                    dataType: "json"
                }
            },
            preparePostData: function (data) {
                data.phrase = $("#example-ajax-post").val();
                return data;
            },
            requestDelay: 400
        });
        
    }); // end of document ready
})(jQuery); // end of jQuery name space