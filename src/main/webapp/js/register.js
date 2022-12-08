

// // form validation
// let id = (id) => document.getElementById(id);
// let classes = (classes) => document.getElementById(classes);

// let first_name = id("user_fname");
// let last_name = id("user_lname");
// let emp_id = id("emp_id");
// let email = id("emp_id");
// let password = id("emp_pass");
// let form_check = id("form-regi"); 

// // form-regi
// // let f = document.getElementById('');

// let engine = (id, serial, message) => {
// 	if (id.value.trim() === "") {

// 		id.className += " form-error";
// 	} else {
// 		id.classList.remove('form-error');
// 	}
// }


// $(document).ready(function() {
// 	console.log('jquery loading');
// 	$('#form-regi').on('submit', function(e) {
// 		e.preventDefault();
// 		// loading btn hide and show code 
// 		let form = new FormData(this);
// 		console.log(form);
		
// 		for (var [key, value] of form.entries()) { 
//         console.log(key, value);
//   		  }
		
		
// 		$.ajax({
// 			type: 'POST',
// 			url: "SaveRegistDataServlet",
// 			data: "first_name="+ 'jittu',
// 			success: function(data, textStatus, jqXHR) {
				
// 				console.log(data);
// 				if (data.trim() === 'data have been saved in DB') {
// 					window.location = "login_page.jsp"
// 				}
// 			},
// 			error: function(data, textStatus, jqXHR) {
// 				console.log("data not saved in db");
// 				console.log(data);
// 			},
// 			processData: false,
// 			contentType: false
// 		});


// 	})
// });
$(document).ready(function () {
	 console.log('loading...');	
	 $('#form-regi').on('submit', function(event){
		event.preventDefault();

		$('#submit_btn').hide();
		$('#loader').show();

		
		let form_data = new FormData(this);

		$.ajax({
			type: "post",
			url: "SaveRegistDataServlet",
			data: form_data,
			success: function (response) {
				console.log(response);
				$('#submit_btn').show();
				$('#loader').hide();

				if (response.trim()==="data have been saved in DB") {
					swal("Done", "Registered Successfully", "success").then((value)=>{
						window.location = "login_page.jsp"		
					})
				}else{
					swal(response)
				}

				

			},
			error: function(response){
				 console.log(response);
				$('#submit_btn').show();
				$('#loader').hide();
				swal("Something Went Wrong, Try Again..")
			},
			processData: false,
			contentType : false
		});


	 });
});
