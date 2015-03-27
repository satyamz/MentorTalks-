$(document).ready(function(){
  $('#contactForm').submit(function(){
    var requiredFields = ["name", "email", "message"];
    
    for (i=0;i<requiredFields.length;i++) {
			var inputField = $('#'+requiredFields[i]);
			if ((inputField.val() == ""))         {
				inputField.addClass("error");
				$('p#error').show();
			} else {
				$('p#error').hide();
			}
		}
    
 if ($(":input").hasClass("error")) {
			return false;
		} else {
        $('p#error').hide();
        
      /*write form submission code*/
        alert("Form is submitting");
			  
        return true;
      
		}
    
  });

/*remove class error when focused on textbox or textarea*/
$(":input").focus(function(){		
	   if ($(this).hasClass("error") ) {
			$(this).removeClass("error");
	   }
	});  
});
