<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <title>Hello world</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <article>
            <h1>KURS EURO</h1>
            <table id="rates">
                <tr>
                    <td>Date</td>
                    <td>Rate</td>
                </tr>
            </table>
        </article>
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
            <script>
            var interest_end_of_day = '95932927-c8bc-4e7a-b484-68a66a24edfe';
            var data = {
                resource_id:interest_end_of_day,//the resource id
                limit:10,
                sort:"end_of_day desc",
                fields:"end_of_day,eur_sgd"
            };
            $.ajax({
                url: 'https://eservices.mas.gov.sg/api/action/datastore/search.json',
                data:data,
                dataType:'json',
                success:function(data){
                    var results = $.map(data.result.records, function(record) {
                        return {sor:record.eur_sgd, date:record.end_of_day}
                    })
                    $.each(results, function(i,data) {
                        $("table#rates").append("<tr><td>" + data.date +"</td><td>" + data.sor +"</td></tr>");
                    });
                }
            });
        </script>
    </body>
</html>
