$(document).ready(function () {
    $('#form_data').on('submit', function(e){
        e.preventDefault();
        $('#submit_btn').hide();
        $('#loader').show();

        let fromdata = new FormData(this);
        console.log(fromdata);


        $.ajax({
            type: "post",
            url: "SaveTrainerInformation",
            data: fromdata,
            success: function (response) {
                if(response==="data saved"){
                    swal("Good job!", "Trainer Details Saved", "Done");
                }else{
                    swal("Data Not Saved!", "Please Try Again!", "error");
                }
                
                $('#submit_btn').show();
                $('#loader').hide();
                location.reload();
            },
            error: function(response){
                swal("Something Went Wrong, Please Try Again");
                $('#submit_btn').show();
                $('#loader').hide();
                location.reload();
            },
            processData: false,
			contentType : false
        });
    })

   
});