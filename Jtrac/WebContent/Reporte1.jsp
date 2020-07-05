<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="/struts-tags" prefix="s" %>
    <%--importamos las librearias de struts jquery --%>
    <%@ taglib uri="/struts-jquery-tags" prefix="sj"%>


<!DOCTYPE HTML>
<!-- saved from url=(0083)http://geminis/jtrac/app/ -->

<content="IE=11.0000" http-equiv="X-UA-Compatible">
         <TITLE>Reporte de Jtracs Asignados por Estado y Criterio</TITLE>         
<META http-equiv="Content-Type" content="text/html; charset=utf-8"><LINK href="Resultado_archivos/jtrac.css" 
rel="stylesheet" type="text/css">         <LINK href="../favicon.ico" rel="shortcut icon" 
type="image/x-icon">         <LINK href="../favicon.ico" rel="icon" type="image/x-icon"> 


<link href="https://www.jqueryscript.net/css/jquerysctipttop.css?v3" rel="stylesheet" type="text/css">
<%-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">   --%>

<%--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>   --%>    
     <link rel="stylesheet" type="text/css" href="dist/css/jquery.dataTables.min.css"/>  
     <link rel="stylesheet" type="text/css" href="dist/css/datatable.buttons.min.css"/>  
      <%-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css"/> --%>    


<sj:head jqueryui="true"/>    
    
    
<META name="GENERATOR" content="MSHTML 11.00.10570.1001"></HEAD>        
<BODY>



<DIV class="nav-header" style="float: left;">
<TABLE style="float: left;">
  <TBODY>
  <TR>
    <TD ><A 
      href="Reporte1.jsp"><IMG 
      src="Resultado_archivos/dashboard.gif">REPORTE 1</A></TD>
    <TD ><A 
      href="Reporte2.jsp"><IMG 
      src="Resultado_archivos/dashboard.gif">REPORTE 2</A></TD></TR></TBODY></TABLE>
<TABLE style="float: right;">
  <TBODY>
  <TR>
    <TD ><A 
      href="Reporte3.jsp"><IMG 
      src="Resultado_archivos/dashboard.gif">REPORTE 3</A></TD>
    <TD ><A 
      href="#"><IMG 
      src="Resultado_archivos/dashboard.gif">REPORTE 4</A></TD>
    <TD><IMG src="Resultado_archivos/user.gif"><SPAN>Invitado</SPAN></TD></TR></TBODY></TABLE></DIV><BR>
<DIV style="clear: both;"><BR></DIV>

<SPAN> 
<%--  
<FORM id="form19" action="" 
method="post">

 --%>
<FORM id="form19">

<TABLE class="jtrac">
  <TBODY>
  <TR>
    <TH width="100" align="right">REPORTE 1</TH>
    <TD> <b>OBSERVACIONES POR CRITICIDAD </b> </TD>
  </TR></TBODY></TABLE>
<TABLE class="jtrac">
  <TBODY>
  <TR class="alt">
    <TD align="center" width="100"></TD>
    <TD align="left">Filtro de Búsqueda</TD>
  </TR>
  <TR valign="center">
    <TD class="label"><SPAN>Proyecto</SPAN>                         </TD>
    <TD class="alt">
        <%-- listados de proyectos (combo) --%>
           
        <s:url id="idSpaces" action="llenarspaces"  ></s:url>
               <%--2. usar la etiqueta select pero de struts-jquery --%>
     
            <sj:select name="states" id="estado"
        label="Estados" href="%{idSpaces}" list="cbSpaces" listKey="idSpaces" listValue="nombre" 
        headerValue="[Seleccione]"
        >
      
        </sj:select> 
                 
      
      </TD>
    <TD id="fragParent34"></TD></TR>
    
    
  <TR valign="center">
    <TD class="label"><SPAN>Criterio</SPAN>                  </TD>
    <TD class="alt">
          <%-- listado de criterio (combo)--%>
         <select id="tipo" ></select> 
      
      
      </TD>
    <TD id="fragParent36"></TD>
  </TR>
    
    
      <TR valign="center">
    <TD class="label"><SPAN>Estado</SPAN>                  </TD>
    <TD class="alt">
         
      <%--listar Estado (combo) --%>
                <%--Combo Estado multiple  --%>
                           <select id="estado2"  name="states[]"  multiple>
      
                         </select>  
      
      </TD>
    <TD id="fragParent36"></TD>
  </TR>
    

</TBODY>
</TABLE>
</FORM>
</SPAN>                
<BR>

<SPAN> 
<%-- 
<TABLE width="100%" class="jtrac">
  <TBODY>
  <TR>
    <TD class="sortable"><IMG 
      class="nav-link" src="Resultado_archivos/search.gif">Texto <INPUT name="columns:0:fragParent:value"></TD>
    <TD align="right" ><IMG 
      class="nav-link" src="Resultado_archivos/excel.gif"><A href="#">Exportar 
      a Excel</A>                     </TD>
   </TR>
   </TBODY>
</TABLE>--%>

  <button id="listado">Listar</button> 
  

<TABLE width="100%" class="jtrac jtrac-list stripe"  id="idTableProyecto" >
 	<thead>
  	 <tr>
			       <th> </th>
			       <th> </th>
			       <th> </th>
			       <th> </th>
			      
			    </tr>
  
  		</thead>

  <TBODY>
    </TBODY>
</TABLE>
 </SPAN>            
    <BR>
<TABLE width="100%" class="jtrac">
  <TBODY>
  <TR class="alt">
    <TD align="right"><I>powered by <A href="http://jtrac.info/" target="_blank">JTrac</A> 
      <SPAN>2.1.0</SPAN></I>                 
    </TD>
  </TR>
  </TBODY>
</TABLE>



<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ></script>
<%-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" ></script>  --%>
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
            "last": "ï¿½ltimo",
            "next": "Siguiente",
            "previous": "Anterior"
        },
        "processing": "Procesando...",
        "search": " ",
        "searchPlaceholder": " ",
        "zeroRecords": "No se encontraron resultados",
        "emptyTable": "Ningï¿½n dato disponible en esta tabla",
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
            "excel": "Exportar a Excel",
            "pdf": "documento PDF",
            "print": "Imprimir",
            "colvis": "Visibilidad columnas",
            "collection": "Colecciï¿½n",
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
	        	        autoWidth: false,
	        	      
	        	        rowCallback:function(row,data){
	        				if(data[1] == "estado"){
	        					$($(row).find("td")[1]).css("background-color","#E60026");
	        	       
	        	           }
	        	        },
	        	

	        		   
	        	 });
	        	 $("#idTableProyecto_filter").append('<img src="Resultado_archivos/search.gif" alt="" class="imgSearch"/>');
	        	 $(".dt-buttons").append('<img src="Resultado_archivos/excel.gif" alt="" class="imgExcel"/>');
	        	
	        },error: function (response) {
	        	console.log(response)
	            alert("No se encontraron datos");
	        }
	  
	  
	  });
	  
	  /*
  	  var image = new Image();

	    var src = 'Resultado_archivos/search.gif'; //Esta es la variable que contiene la url de una imagen ejemplo, luego puedes poner la que quieras
	    image.src = src;

	    $('#idTableProyecto_filter').append(image);*/
	   
	  
}); 

	  
	
			
		
	 
	 


</script>                          
                




      
</BODY>
</HTML>
