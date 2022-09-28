/**
 * 
 */
 
 
function validate(){

   var student_id = document.getElementById("student_id").value;
   let student_name = document.getElementById("student_name").value;
   let email = document.getElementById("email").value;
   let phone = document.getElementById("phone").value;
    
    
 	var student_id_error_message = document.getElementById("student_id_error_message");
    var student_name_error_message = document.getElementById("student_name_error_message"); 
    var email_error_message = document.getElementById("email_error_message");
    var phone_error_message = document.getElementById("phone_error_message");
    
    
    var text;

/**
    student_id_error_message.style.padding = "5px";
    student_name_error_message.style.padding = "5px"; 
    email_error_message.style.padding = "5px";
    phone_error_message.style.padding = "5px";
*/
    
    var nametype = /^[A-Z a-z]+$/;
    var emailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    
    
    
  
    if (student_id == ""){
        text = "Student Id should not be empty";
        student_id_error_message.innerHTML = text;
        return false;
    }
   
      
    
    if (nametype.test(student_name) == false){
        text = "Student Name should be only Characters";
        student_name_error_message.innerHTML = text;
        return false;
    }
    
    if  (emailformat.test(email)== false){
        text = "Enter A Valid Email";
        email_error_message.innerHTML = text;
        return false;
    }
    
    if(isNaN(phone)){
		text = "Phone Number must be only digits";
        phone_error_message.innerHTML = text;
        return false;
	}
	
	if(phone.length<10){
		text = "Phone Number must be 10 digits";
        phone_error_message.innerHTML = text;
        return false;
	}
	
	if(phone.length>10){
		text = "Phone Number must be 10 digits";
        phone_error_message.innerHTML = text;
        return false;
	}

	if((phone.charAt(0) != 0)){
		text = "Phone Number must with 0";
        phone_error_message.innerHTML = text;
        return false;
	}


  
  
    
 
}