
$(document).ready(function () {
    $("#cours").on("change", function () {
        var courseCategoryValue = $('#cours').find(":selected").text();
        var courseID = $('#cours').find(":selected").attr("data-cours-id");
        var courseStartDate=$('#cours').find(":selected").attr("cours-startDate");
        var courseEndDate=$('#cours').find(":selected").attr("cours-endDate");
        var parsedStartDate=new Date(courseStartDate.split(" ")[0]);
        var parsedEndDate=new Date(courseEndDate.split(" ")[0]);

        $.ajax({
            method: "GET",
            data: {
                courseValue: courseCategoryValue,
                coursesId: courseID
            }
        }).done(function (response) {
            console.log(response['results']);
            var studTable=document.getElementById("studentsTable");
                while(studTable.rows.length>1)
                    studTable.deleteRow(studTable.rows.length-1);
            var htmlTable = "";
            var datesDiv = "";

            $("div").remove("#courseDuration")
            for (var i = 0; i < response['results'].length; i++) {
                htmlTable += "<tr>"
                htmlTable += "<td>" + response['results'][i].firstName + "</td>"
                htmlTable += "<td>" + response['results'][i].lastName + "</td>"
                htmlTable += "<td>" + response['results'][i].email + "</td>"
                htmlTable += "<td>" + response['results'][i].mobilePhone + "</td>"
                htmlTable += "</tr>"

            }

            var startDate= parsedStartDate.getDate()+"."+ parsedStartDate.getMonth()+"."+parsedStartDate.getFullYear();
            var endDate= parsedEndDate.getDate()+"."+ parsedEndDate.getMonth()+"."+parsedEndDate.getFullYear();
            datesDiv+="<div id='courseDuration'>"
            datesDiv+="<p>Начална Дата-"+startDate+"</p>"
            datesDiv+="<p>Крайна Дата-"+endDate+"</p></div>"
            console.log(htmlTable);
            $('#tableTarget').append(htmlTable);
            $('.teacherInformation').append(datesDiv);


        });

    });

});
