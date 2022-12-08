/**
 * 
 */
 $(document).ready(function () {
	 console.log('loading...');	
	 $('#form-regi').on('submit', function(event){
		event.preventDefault();

		$('#submit_btn').hide();
		$('#loader').show();

		
		let form_data = new FormData(this);

		$.ajax({
			type: "post",
			url: "RegisterPageAdmin",
			data: form_data,
			success: function (response) {
				console.log(response);
				$('#submit_btn').show();
				$('#loader').hide();

				if (response.trim()==="data have been saved in DB") {
					swal("Done", "Registered Successfully", "success").then((value)=>{
						window.location = "admin_login.jsp"		
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
