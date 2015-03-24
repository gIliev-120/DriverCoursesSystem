var balance;
var coursePrice;
var res;
$(document).ready(function () {
    $('#courses').on("change",function(){
        coursePrice=$('#courses').find(":selected").attr("value");
        coursePrice=parseInt(coursePrice);
        console.log(coursePrice)
    });

        $('#paidSum').keyup(function(){
            balance =$('#paidSum').val();
            balance=parseInt(balance)
            console.log(balance);
            res=coursePrice-balance;
            $('#restOfSum').val(res);
          });





});
