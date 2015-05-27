$(document).ready(function () {
    var courseID=$("#course").val();
    console.log(courseID);
    $("#course").on("change", function () {
        courseID = $('#course').find(":selected").attr("value")

        $.ajax({
            method: "GET",
            data: {
                coursesId: courseID
            }
        }).done(function (response) {
            $('#students').empty();
            var optionsForSelect="";

            for (var i = 0; i < response['results'].length; i++) {
                console.log(response['results'][i]);
                optionsForSelect+="<option"+" student-id="+"\""+response['results'][i].id+"\""+">"+response['results'][i].firstName+" "+response['results'][i].lastName+"</option>"

            }
            $('#students').append(optionsForSelect);


        });
        console.log(courseID);
    });



});
