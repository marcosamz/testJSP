//window.onload = function () {
//    
//    var mixedMode = {
//        name: "htmlmixed",
//        scriptTypes: [{matches: /\/x-handlebars-template|\/x-mustache/i,
//                mode: null},
//            {matches: /(text|application)\/(x-)?vb(a|script)/i,
//                mode: "vbscript"}]
//    };
//    var editor = CodeMirror.fromTextArea(document.getElementById("txtSalida"), {
//        mode: mixedMode,
//        selectionPointer: true
//    });
//    
//    var mime = 'text/x-sql';
//    // get mime type
//    if (window.location.href.indexOf('mime=') > -1) {
//        mime = window.location.href.substr(window.location.href.indexOf('mime=') + 5);
//    }
//    window.editor = CodeMirror.fromTextArea(document.getElementById('code'), {
//        mode: mime,
//        indentWithTabs: true,
//        smartIndent: true,
//        lineNumbers: true,
//        matchBrackets: true,
//        autofocus: true,
//        extraKeys: {"Ctrl-Space": "autocomplete"},
//        hintOptions: {tables: {
//                users: {name: null, score: null, birthDate: null},
//                countries: {name: null, population: null, size: null}
//            }}
//    });
//};

var valor;
getData = function () {
    var parameters = {id: 5};
//    $.getJSON('TestDataController', function (data) {
////        valor = data;
////        console.log(valor);
//        console.log(data);
//    });
    $.ajax({
        url: "TestDataController",
        dataType: 'json',
        data: { id : 5 },
        error: function () {
            alert("Error Occured");
        },
        success: function (data) {
//            console.log(data);
            valor = data;
            console.log(valor);
            
        }
    });
};