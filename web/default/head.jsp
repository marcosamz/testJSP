<title>MMSoft.</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="assets/js/jquery-3.1.0.js"></script>
<link href="assets/css/materialicons.css" rel="stylesheet">
<link href="assets/css/materialize.min.css"  rel="stylesheet">
<link href="assets/css/ace/ace-editor.css" rel="stylesheet" type="text/css" />
<link href="assets/css/easy-autocomplete.css" rel="stylesheet" type="text/css" />
<style>
    header, main, footer {
        padding-left: 300px;
    }
    @media only screen and (max-width : 992px) {
        header, main, footer {
            padding-left: 0;
        }
    }
    body {
        display: flex;
        min-height: 100vh;
        flex-direction: column;
    }
    main {
        flex: 1 0 auto;
        margin: 50px;
    }
</style>
<script>
    function eliminar(url) {
        $.confirm({
            icon: 'fa fa-info',
            title: 'Atención',
            content: '¿Desea eliminar este registro?',
            confirmButton: 'Si',
            cancelButton: 'No',
            confirmButtonClass: 'btn-primary',
            cancelButtonClass: 'btn-default',
            confirm: function() {
                window.location.href=url;
            }
        });
    }
</script>