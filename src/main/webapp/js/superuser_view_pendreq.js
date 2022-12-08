/**
 * 
 */

	function viewAdminPendDeta(userID) {
		// alert(userID);

        const adminData={
            adminID : userID
        }

        $.ajax({
            type: "POST",
            url: "HandleAdminRequest?action=view",
            data: adminData,
            header:{
                Accept: "application/json; charset=utf-8",
                "Content-Type" :"application/json; charset=utf-8" 
            },
            success: function(response) {
                console.log(response);
                var adminData = $.parseJSON(response);
                console.log("admin_ID");
                console.log(adminData.adminID);

                // $("#f_name")
                // $("#f_name").val(adminData.adminID); 
                document.getElementById("f_name").innerHTML =adminData.firstName;
                document.getElementById("l_name").innerHTML =adminData.lastName;
                document.getElementById("age").innerHTML =adminData.age;
                document.getElementById("gender").innerHTML =adminData.gender;
                document.getElementById("mobile").innerHTML =adminData.mobile_no;
                document.getElementById("status").innerHTML =adminData.status;
                //alert("request send ")
            },error: function(response){
                alert("request not send ")
                console.log(response);
            }, 
            
        });
	}


    function approvePendReq(userID){
        const admiObj={
            adminID : userID
        }

        $.ajax({
            type: "POST",
            url: "HandleAdminRequest?action=update",
            data: admiObj,
            header:{
                Accept: "application/json; charset=utf-8",
                "Content-Type" :"application/json; charset=utf-8" 
            },
            success: function (response) {
                var pendingRequest = $.parseJSON(response);
                console.log(pendingRequest);
                // pendingRequest.message
            if ( pendingRequest.message === 'Approved') {
                swal({
                    title: "Approved",
                    text: "Admin can Login to System",
                    icon: "success",
                    button: "Close",
                  });

                  setTimeout(() => {
                    location.reload(true);  
                  }, 2000);
                  
            }
                
            },
            error : function(response){
                swal("Something Went Wrong!", "Please try After some time.");
                console.log("error in approving the admin request ");
                console.log(response);
            }
        });
    }


    function canclePendingReq(userID){
        const admiObj={
            adminID : userID
        }

        $.ajax({
            type: "POST",
            url: "HandleAdminRequest?action=delete",
            data: admiObj,
            header:{
                Accept: "application/json; charset=utf-8",
                "Content-Type" :"application/json; charset=utf-8" 
            },
            success: function (response) {
                var deleteRequest = $.parseJSON(response);
                if (deleteRequest.message ==='deleted') {
                    swal({
                        title: "Deleted",
                        text: "Admin Request has been Deleted",
                        icon: "success",
                        button: "Close",
                      });
    
                      setTimeout(() => {
                        location.reload(true);  
                      }, 2000);
                }

                
            }, error: function(response){
                console.log(response);
            }
        });
    }

$(document).ready(function() {

	// viewAdminPendDeta() -->  view_details_btn
	// approvePendReq() -->     approve_btn
	// canclePendingReq() -->   cancle_btn
	// HandleAdminRequest

    



	//alert("superuser");
	// $("#view_details_btn").on('click', function(event){
	//     event.preventDefault();
	//     var btn = $(this).val();
	//     alert(btn);

	// })






});