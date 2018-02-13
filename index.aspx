<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {

            $.ajax({
                type:'POST',
                url:'index.aspx',
                data: JSON.stringify({S:$(this).text()}),
                contentType: 'application/json; charset=utf-8',
                dataType:'json',
                success: function (values) { Console.log(values); }
            });

        });
    </script>
    <link href="Content/Sheets/index.css" rel="stylesheet" />
</head>
<body>
    <form id="mainform" runat="server">
        <div class="maindiv">
            <div>
                <div>1</div>
                <div>2</div>
                <div>3</div>
                <div>4</div>
                <div>5</div>
                <div>6</div>
                <div>7</div>
                <div>8</div>
                <div>9</div>
                <div>*</div>
                <div>0</div>
                <div>#</div>
            </div>
        </div>
    </form>
</body>
</html>
