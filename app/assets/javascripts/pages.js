$(document).ready(function(){
    $("#platforms .btn").click(function(){
    	$(this).button('toggle');
    });
    
/*
    var vals = []
    $('input:checkbox[name="options"]').is(':checked')(function() {
      vals.push(this.value);
      console.log(vals);
    })
*/
/*
var values = $('input:checkbox:checked.platbtn').map(function() {
  return this.value;
}).get();
*/
$(".platforms input[type=checkbox]").on("change", function() {
  var selected = $(this).val(); // This will get the value
  $("."+selected).prop('checked', 'checked'); // This will check the box
  $("."+selected).prop('checked', 'checked', false, false);
});

});