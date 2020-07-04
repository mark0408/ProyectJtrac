<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="/struts-tags" prefix="s" %>
    <%--importamos las librearias de struts jquery --%>
    <%@ taglib uri="/struts-jquery-tags" prefix="sj"%>

 
<!DOCTYPE html>
<html>
<head>
        <meta charset="ISO-8859-1">  

    <!-- Required meta tags -->
  <!--<meta charset="utf-8">  -->  
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Reporte de Jtracs Asignados por Estado y Criterio</title>

<link href="https://www.jqueryscript.net/css/jquerysctipttop.css?v3" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<%--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>   --%>    
     <link rel="stylesheet" type="text/css" href="dist/css/jquery.dataTables.min.css"/>  
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css"/>  
<link rel="stylesheet" type="text/css" href="dist/css/estilos.css" > 

<sj:head jqueryui="true"/>

</head>

<body>

<div id="contenido">

    <div id="link">
     <a href="Reporte1.jsp"> <img alt="" src="dist/img/dashboard.gif"> Reporte 1</a> 
      <a href="Reporte2.jsp"> <img alt="" src="dist/img/dashboard.gif">  Reporte 2</a> 
        <a href="Reporte3.jsp"> <img alt="" src="dist/img/dashboard.gif"> Reporte 3</a> 
     </div>   
   <br>
   <div>
     <br>
   </div>


        <form>
           <table>
             <tbody>
                <tr>
                   	<th width="100" align="right">REPORTE 1</th>
                   	<td><b>OBSERVACIONES POR CRITICIDAD </b> </td>
                </tr>
             </tbody>
           </table>
           
           <table class="jtrac">
             <tbody>
              <tr valign="center">
                 <td class="label"> <label> Proyecto:</label>    </td>
                 <td class="alt"> 
                 <s:url id="idSpaces" action="llenarspaces"  ></s:url>
               <%--2. usar la etiqueta select pero de struts-jquery
                class="browser-default custom-select custom-select-lg mb-3"
               --%>
     
            <sj:select name="states" id="estado"
        label="Estados" href="%{idSpaces}" list="cbSpaces" listKey="idSpaces" listValue="nombre" 
        headerValue="[Seleccione]"
        >
      
        </sj:select> 
                  </td>
                  
                  <td id="fragParent34"></td>
              </tr>
             
             <%--Combo Criterio  --%>
              <tr valign="center">
                 <td class="label">  <label > Criterio:</label>   </td>
                 <td class="alt"> 
                       <%--  class="browser-default custom-select custom-select-lg mb-3" --%>
                         <select id="tipo" ></select>   
                  </td>
                  
                  <td id="fragParent34"></td>
              </tr>
             
             <%--Combo Estado multiple  --%>
              <tr valign="center">
                 <td class="label">   <label > Estado:</label>   </td>
                 <td class="alt"> 
                 
                     <%--listar Estado (combo) --%>
                           <select id="estado2"  name="states[]"  multiple>
      
                         </select>   
                  </td>
                  
                  <td id="fragParent34"></td>
              </tr>
             
   
             
             </tbody>
           
           
           </table>
            
        
        </form>

  
       
    
        <button id="listado" class="btn btn-outline-dark">Listar</button>  


        
        <table id="idTableProyecto" class="cell-border">
 		 <thead>
  
  			 <tr>
			       <th> </th>
			       <th> </th>
			       <th> </th>
			       <th> </th>
			      
			    </tr>
  
  		</thead>
  		<tbody>
  		</tbody>
    
    
    </table> 
        
        
   </div>     
        
        
        
        




<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" ></script>
<script src="dist/js/BsMultiSelect.js"></script>



<!--    Datatables-->
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script> 
    <script src="//cdn.rawgit.com/ashl1/datatables-rowsgroup/v1.0.0/dataTables.rowsGroup.js"></script>
     
     

     <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
     <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
     <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.flash.min.js"></script>
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
     <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
     <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script>





<script>
/*
$(".control").bsMultiSelect({cssPatch : {
                   choices: {columnCount:'1' },
     }});
     
  */       

 </script>
                          
                          
<script type="text/javascript">





$.extend( true, $.fn.dataTable.defaults, {
    "language": {
        "decimal": ",",
        "thousands": ".",
        "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
        "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
        "infoPostFix": "",
        "infoFiltered": "(filtrado de un total de _MAX_ registros)",
        "loadingRecords": "Cargando...",
        "lengthMenu": "Mostrar _MENU_ registros",
        "paginate": {
            "first": "Primero",
            "last": "�ltimo",
            "next": "Siguiente",
            "previous": "Anterior"
        },
        "processing": "Procesando...",
        "search": "Buscar:",
        "searchPlaceholder": " ",
        "zeroRecords": "No se encontraron resultados",
        "emptyTable": "Ning�n dato disponible en esta tabla",
        "aria": {
            "sortAscending":  ": Activar para ordenar la columna de manera ascendente",
            "sortDescending": ": Activar para ordenar la columna de manera descendente"
        },
        //only works for built-in buttons, not for custom buttons
        "buttons": {
            "create": "Nuevo",
            "edit": "Cambiar",
            "remove": "Borrar",
            "copy": "Copiar",
            "csv": "fichero CSV",
            "excel": "Excel",
            "pdf": "documento PDF",
            "print": "Imprimir",
            "colvis": "Visibilidad columnas",
            "collection": "Colecci�n",
            "upload": "Seleccione fichero...."
        },
        "select": {
            "rows": {
                _: '%d filas seleccionadas',
                0: 'clic fila para seleccionar',
                1: 'una fila seleccionada'
            }
        }
    }           
} );       





$(document).ready(function() {
	  $('#ocultar').hide();
		$('#idTableProyecto').hide();
	
	});





var select = document.getElementById('estado');
select.addEventListener('change',
  function(){
	$('#ocultar').show();
	
    var selectedOption = this.options[select.selectedIndex];
    console.log(selectedOption.value + ': ' + selectedOption.text);
    
    var processDate = $('#estado').val();
    $.ajax({
        /*type : "POST",*/
        url : "llenarTipo",
        data : "resultado="+selectedOption.value,
        dataType : "json",
        success : function(result) {
        	$('#tipo').empty();
        	result.lstTipo.forEach(function(resultadoTipo){
  		      $('#tipo').append('<option value="'+resultadoTipo.tipo+'">'+resultadoTipo.etiqueta+'</option>');
  		   });
            
            }
    });
    
    $.ajax({
        /*type : "POST",*/
        url : "llenarCombo",
        data : "resultado="+selectedOption.value,
        dataType : "json",
        success : function(result) {
        	console.log(result);
        	$('#estado2').empty();
        	result.lstEstado.forEach(function(resultadoTipo){
  		      $('#estado2').append('<option value="'+resultadoTipo.id+'">'+resultadoTipo.nombre+'</option>');
  		   });
        	
            
            }
    });
    
  });              
      





var boton = document.getElementById('listado');
boton.addEventListener('click',
function (){
	
	$('#idTableProyecto').show();
	var valorMultiple = '';
	$("#estado2").val().forEach(function(element){ valorMultiple +=element+','});
	console.log(valorMultiple);
	console.log($("#tipo").val() + '---' + $("#estado").val());

	var table=$('#idTableProyecto').DataTable();
	  $.ajax({
	        url:"listarProyect",
	        data :"criterio="+$("#tipo").val()+"&proyect="+$("#estado").val()+"&estado="+valorMultiple,
	        dataType : "json",
	        success : function(result) {
	        	console.log("entro",result);
	        	table.clear();
	        	table.destroy();
	        	 $('#idTableProyecto').empty();
	        	 
	        	table= $('#idTableProyecto').dataTable({
	        	
	        		 dom: 'Bfrtip',
	        	     buttons: [
	        	           'excel'
	        	            ],
	        	
	        		    data:result.lstMetadata,
	        		   columns: [
	        	            { data: "estado",title:"Estado" },
	        	            { data: "asignado",title:"Asignado a" },
	        	            { data: "proyecto",title:"Jtrac" },
	        	            { data: "criterio" ,title:$("#tipo option:selected").text()}
	        	            
	        	        ],
	        	        rowsGroup: [0,1],
	        	        paging:   false,
	        	        ordering: false,
	        	        info:false,
	        	        autoWidth: false
	        	      
	        	       
	        	   
	        		   
	        		   
	        	 });
	        	
	        	
	        },error: function (response) {
	        	console.log(response)
	            alert("error con la peticion");
	        }
	  
	  
	  });
	  
	  
}); 

	  
	
			
		
	 
	 


</script>                          
                

                
</body>
</html>