<%-- 
    Document   : DataTableTest
    Created on : 11-sep-2016, 18:51:58
    Author     : Ing. Marcos Menéndez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table id="table4" class="display table table-bordered table-striped table-hover">
  <thead>
    <tr>
      <th>Name</th>
      <th>Position</th>
      <th>Office</th>
      <th>Age</th>
      <th>Start date</th>
      <th>Salary</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Tiger Nixon</td>
      <td>System Architect</td>
      <td>Edinburgh</td>
      <td>61</td>
      <td>2011/04/25</td>
      <td>$320,800</td>
    </tr>
    <tr>
      <td>Garrett Winters</td>
      <td>Accountant</td>
      <td>Tokyo</td>
      <td>63</td>
      <td>2011/07/25</td>
      <td>$170,750</td>
    </tr>
    ...
  </tbody>
</table>
 
<script type="text/javascript" src="assets/dataTables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="assets/dataTables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
<script>
  $('#table4').DataTable({
    "iDisplayLength": 5,
    "bLengthChange": false,
    "filter": false,
    "dom": 'Tlfrtip',
    "tableTools": {
      "sSwfPath": "bower_components/datatables-tabletools/swf/copy_csv_xls_pdf.swf"
    }
  });
</script>
    </body>
</html>
