<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@ taglib uri="/struts-tags" prefix="s" %>
    <%--importamos las librearias de struts jquery --%>
    <%@ taglib uri="/struts-jquery-tags" prefix="sj"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reporte Totales por Criterio y Estado</title>

<link href="https://www.jqueryscript.net/css/jquerysctipttop.css?v3" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>  
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css"/>  

 <%-- <link rel="stylesheet" type="text/css" href="dist/css/estilos.css" >   --%> 
<sj:head jqueryui="true"/>
</head>
<body>
	<div id="contenido">
	
	  <div id="link">
       <a href="Reporte1.jsp">Reporte 1</a> 
      <a href="Reporte2.jsp">Reporte 2</a>  
            <a href="Reporte3.jsp">Reporte 3</a> 
      </div>   
	
	
	<div id="conten2">
	
	<div>
	
	<label> Proyecto:</label>      
           <s:url id="idSpaces" action="llenarspaces"  ></s:url>
            <sj:select name="states" id="proyecto" class="browser-default custom-select custom-select-lg mb-3"
        label="Estados" href="%{idSpaces}" list="cbSpaces" listKey="idSpaces" listValue="nombre" 
        headerValue="[Seleccione]"
        >
      
        </sj:select> 
        
	
	</div>
		
        
        
        <div id="ocultar2">
         <label  id="tip"> Criterio:</label>
            <select id="tipo2" class="browser-default custom-select custom-select-lg mb-3"></select>   
        
        </div>
           
	
	</div>
	
	

  
    <button id="listado2" class="btn btn-outline-dark">Listar</button>  
  
        <table id="idTableProyecto2"  class="cell-border">
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
  		

<%--     <tfoot>
            <tr>
                <th colspan="3" style="text-align:right">Total:</th>
                <th></th>
            </tr>
    </tfoot>
--%>
  		
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
        "emptyTable": "Ningun dato disponible en esta tabla",
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
	  $('#ocultar2').hide();

	
	});





var select = document.getElementById('proyecto');
select.addEventListener('change',
  function(){
	$('#ocultar2').show();

    var selectedOption = this.options[select.selectedIndex];
    console.log(selectedOption.value + ': ' + selectedOption.text);
    $.ajax({
        /*type : "POST",*/
        url : "llenarTipo",
        data : "resultado="+selectedOption.value,
        dataType : "json",
        success : function(result) {
        	$('#tipo2').empty();
        	$('#tipo2').append('<option value="-1">Seleccione</option>');
        	result.lstTipo.forEach(function(resultadoTipo){
  		      $('#tipo2').append('<option value="'+resultadoTipo.tipo+'">'+resultadoTipo.etiqueta+'</option>');
  		   });     
            }
    });
}); 
var boton = document.getElementById('listado2');
boton.addEventListener('click',
function (){
	var table=$('#idTableProyecto2').DataTable();
	  
	  $.ajax({
	        url:"listarReporte2",
	        data :"criterio="+$("#tipo2").val()+"&proyect="+$("#proyecto").val(),
	        dataType : "json",
	        success : function(result) {
	        	console.log("entro",result);
	        	
	        	//-----------
	        	var num =1;
	       		var i;
	        	var dataReal=[];
	        	for (i = 1; i < 5; i++) {
	        		var resultado={};
	        		var nom=1;
		        	result.lstReporte[i].id.map(function(input){
			        	  
			        	  resultado["valor"+nom] =  input;
			        	  
			        	// conle.log("valo3",input );
			        	  nom=nom+1; 
			        	  
			        	  
			        	});
		        	 console.log("JSON",JSON.stringify(resultado));
		        	dataReal.push(resultado);
	        	}

	        	//----------
	        	var config= [];
	        	result.lstReporte[0].id.map(function(input){
	        	  var resultado={};
	              resultado["data"] = "valor"+num;
	        	  resultado["title"] = input;
	        	  num=num+1;
	        	  console.log(JSON.stringify(resultado));
	        	  config.push(resultado);
	        	});
	        	
	        	
	 
                config=config.splice(1,result.lstReporte[0].id.length-1);
	        	
                console.log("config",config);
              /*
                  var i=JSON.stringify(resultado);
                  
                  console.log("entro i",i);
                var intVal = function ( i ) {
	                 return typeof i === 'string' ?
	                		 i.replace(/[\$,]/g, '')*1 :
	                     typeof i === 'number' ?
	                    		 i : 0;
	             };
                
	             console.log(intVal)
                */
	        	// -----------
	        	table.clear();
	        	table.destroy();
	        	 $('#idTableProyecto2').empty();
	        	 jQuery.fn.dataTable.Api.register( 'sum()', function ( ) {
	        		    return this.flatten().reduce( function ( a, b ) {
	        		        if ( typeof a === 'string' ) {
	        		            a = a.replace(/[^\d.-]/g, '') * 1;
	        		        }
	        		        if ( typeof b === 'string' ) {
	        		            b = b.replace(/[^\d.-]/g, '') * 1;
	        		        }
	        		 
	        		        return a + b;
	        		    }, 0 );
	        		} );   	 
	        	 
	        	 
	        	table= $('#idTableProyecto2').dataTable({
	        		 dom: 'Bfrtip',
	        	     buttons: [
	        	            'excel'
	        	            ],
	        		    data:dataReal,
	        		   columns: config,
	        	        paging:   false,
	        	        ordering: false,
	        	        info:false,
	        	    
	        	        drawCallback: function () {
	        		         var api = this.api();
	        		         $( api.table().footer() ).html(
	        		           api.column( 5, {page:'current'} ).data().sum()
	        		         );
	        		      } 
	        	        
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