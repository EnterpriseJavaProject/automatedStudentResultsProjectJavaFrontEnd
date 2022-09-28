/**
 * 
 */
 

 
 function confirm(){
 

   let  studentResults_id = document.getElementById("studentResults_id").value;
   let  foc = document.getElementById("foc").value;
   let  html_css = document.getElementById("html_css").value;
   let  javascript = document.getElementById("javascript").value;
   let  se = document.getElementById("se").value;
   let  database_tec = document.getElementById("database_tec").value;
   let  python = document.getElementById("python").value;
    
    
    var studentResults_id_error_message = document.getElementById("studentResults_id_error_message");
    var foc_error_message = document.getElementById("foc_error_message");
    var html_css_error_message = document.getElementById("html_css_error_message");
    var javascript_error_message = document.getElementById("javascript_error_message");
    var se_error_message = document.getElementById("se_error_message");
    var database_tec_error_message = document.getElementById("database_tec_error_message");
    var python_error_message = document.getElementById("python_error_message");
    
    
    var text;

/**
    student_id_error_message.style.padding = "5px";
    student_name_error_message.style.padding = "5px"; 
    email_error_message.style.padding = "5px";
    phone_error_message.style.padding = "5px";
*/

    
    
    
     if (studentResults_id == ""){
        text = "Student Id should not be empty";
        studentResults_id_error_message.innerHTML = text;
        return false;
    }
 	
 	else if(isNaN(foc.value)){
		text = "This field require only numbers";
        foc_error_message.innerHTML = text;
        return false;
	}
	
	
	else if(isNaN(html_css.value)){
		text = "This field require only numbers";
        html_css_error_message.innerHTML = text;
        return false;
	}
	
	
	else if(isNaN(javascript.value)){
		text = "This field require only numbers";
        javascript_error_message.innerHTML = text;
        return false;
	}
	
	
	else if(isNaN(se.value)){
		text = "This field require only numbers";
        se_error_message.innerHTML = text;
        return false;
	}
	
	
	else if(isNaN(database_tec.value)){
		text = "This field require only numbers";
        database_tec_error_message.innerHTML = text;
        return false;
	}
    
    else if(isNaN(python.value)){
		text = "This field require only numbers";
        python_error_message.innerHTML = text;
        return false;
	}
	
	
	

    	return true;
    
    
    
    
 
}
