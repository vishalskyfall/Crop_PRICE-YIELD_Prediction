//[Data Table Javascript]


$(function () {
    "use strict";

    $('#example1').DataTable();
	$('#example8').DataTable();
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    });
	
	
	$('#example').DataTable( {
		dom: 'Bfrtip',
		buttons: [
			'copy', 'csv', 'excel', 'pdf', 'print'
		]
	} );
	
	$('#tickets').DataTable({
	  'paging'      : true,
	  'lengthChange': false,
	  'searching'   : false,
	  'ordering'    : true,
	  'info'        : true,
	  'autoWidth'   : false,
	});
	
	//--------Individual column searching
	
    // Setup - add a text input to each footer cell
    $('#example5 tfoot th').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    } );
 
    // DataTable
    var table = $('#example5').DataTable();
 
    // Apply the search
    table.columns().every( function () {
        var that = this;
 
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
	
	
	//---------------Form inputs
	var table = $('#example6').DataTable();
 
    $('button').click( function() {
        var data = table.$('input, select').serialize();
        alert(
            "The following data would have been submitted to the server: \n\n"+
            data.substr( 0, 120 )+'...'
        );
        return false;
    } );
	
	
	
	
  }); // End of use strict


	
  $(function () {
    "use strict";
		var table = $('#example1').DataTable();

		$('#example1 tbody').on( 'click', 'tr', function () {
			$(this).toggleClass('selected');
		} );

		$('#row-count').click( function () {
			alert( table.rows('.selected').data().length +' row(s) selected' );
		} );
	  
	  
	} );// End of use strict


	
  $(function () {
    "use strict";
		var table = $('#example').DataTable();
 
		$('#example tbody').on( 'click', 'tr', function () {
			if ( $(this).hasClass('selected') ) {
				$(this).removeClass('selected');
			}
			else {
				table.$('tr.selected').removeClass('selected');
				$(this).addClass('selected');
			}
		} );

		$('#row-remove').click( function () {
			table.row('.selected').remove().draw( false );
		} );
	  
	  
	} );// End of use strict






















