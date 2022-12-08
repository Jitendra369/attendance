/**
 * 
 */
$(document).ready(function () {
	

    console.log('admin login check....');
    console.log('inside the admin login Page');
   
    $('#form-data').on('submit', function(e){
        e.preventDefault();
        
       $('#submit-btn').hide();
       $('#loader').show();

        let from_date = new FormData(this);

        $.ajax({
            type: "post",
            url: "AdminLoginServlet",
            data: from_date,
            success: function (response) {
                console.log(response);
                var adminStatus = $.parseJSON(response);
                if (adminStatus.message==="pending") {
                    $('#submit-btn').show();
                    $('#loader').hide();

                    swal("your Request is Pending ", "Wating to get Approved from SuperUser");
                    console.log(adminStatus.message);



                }else if (adminStatus.message==="cancle") {
                    $('#submit-btn').show();
                    $('#loader').hide();
                    console.log(adminStatus.message);

                    swal("your Request has been cancle!", "Please Contact Department.");


                }else if(adminStatus.message==="approved"){
                    
                    console.log(adminStatus.message);
                    $('#submit-btn').show();
                    $('#loader').hide();
                    
                    window.location ="admin_homePage.jsp";
                //     swal("Done", "Login Successfully", "success").then((value)=>{
                //         window.location = "admin_homePage.jsp"		
                //    })
                }
            },
            error: function (response) { 
                console.log(response);
                $('#submit-btn').show();
                $('#loader').hide();
                
                swal("Something Went Wrong, Try Again..")
                
             }, 
            processData: false,
			contentType : false
             
        });


    })
});


//   var deleteRequest = $.parseJSON(response);
//                 if (deleteRequest.message ==='deleted') {
//                     swal({
//                         title: "Deleted",
//                         text: "Admin Request has been Deleted",
//                         icon: "success",
//                         button: "Close",
//                       });
    
//                       setTimeout(() => {
//                         location.reload(true);  
//                       }, 2000);
//                 }