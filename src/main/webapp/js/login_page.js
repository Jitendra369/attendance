/**
 * 
 */
let adminLogin = document.getElementById("adminlogin_btn");
let userlogin = document.getElementById("userlogin_btn");


$(document).ready(function () {
    $('#userlogin').show();
    
    $("#userlogin_btn").click(function (e) { 
        console.log(this);
        // this.setAttribute("aria-expanded", true);
        $('#userlogin').show();
        $("#admin_login").hide();
        // adminLogin.setAttribute("aria-expanded", false);
        // adminLogin.setAttribute("display", "none");
        // $("#adminlogin_btn").setAttribute("aria-expasnded", false);
   
    });


    $("#adminlogin_btn").click(function (e) { 
       
        $('#userlogin').hide();
        $("#admin_login").show();
      
     });
});
