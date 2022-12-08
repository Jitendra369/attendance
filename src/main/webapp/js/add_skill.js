/**
 * 
 */

$(document).ready(function () {
    $('#loader').hide();
    $('#form_data').on('submit', function(e){
        e.preventDefault();
        $('#submit_btn').hide();
        $('#loader').show();

        let fromdata = new FormData(this);

        $.ajax({
            type: "post",
            url: "AddskillServlet",
            data: fromdata,
            success: function (response) {
                if (response==="saved") {
                    $('#submit-btn').show();
                    $('#loader').hide();
                    swal("Skill is Added to Database ", "Please check ");
                    setTimeout(() => {
                   
                        location.reload();
                    }, 2000);
                }else if(response==="not saved"){
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