/**
 * 
 */

$(document).ready(function () {
    $("#form_data").on("submit", function(e){
        e.preventDefault();
        let formdata  = new FormData(this);

        $("#submit-btn").hide();
        $("#loader").show();

        $.ajax({
            type: "post",
            url: "SaveSessionDetails",
            data: formdata,
            success: function (response) {
                if(response==="saved"){
                    $('#submit-btn').show();
                    $('#loader').hide();
                    swal("your Request is Pending ", "Wating to get Approved from SuperUser");
                    setTimeout(() => {
                   
                        location.reload();
                    }, 2000);

                }else if(response==="not-saved"){
                    swal("Data Not Saved!", "Please Try Again!", "error");
                    setTimeout(() => {
                        location.reload();
                    }, 3000);

                }
                
            }, 
            error: function(response){
                $('#submit_btn').show();
                $('#loader').hide();
                swal("Something Went Wrong!", "Please Try Again!", "error");
   
                setTimeout(() => {
                    location.reload();
   
                }, 2000);

            }, 
            processData: false,
			contentType : false
        });

    })
});