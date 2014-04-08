$(document).ready(function(){
    $("#platforms .btn").click(function(){
    	$(this).button('toggle');
    });

  $(".platforms input[type=checkbox]").on("change", function() {
    var selected = $(this).val(); // This will get the value
    if ($(this).is(':checked'))
    $("."+selected).first().prop('checked', 'checked'); // This will check the box
    else
    $("."+selected).prop('checked', false);
    });

});