

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <style>
            .error{
                position: absolute;
                top: 50%;
                left:50%;
                transform: translate(-50%, -50%);
                text-align: center;
            }

            .error h1{
                font-size: 80px;
                font-weight: 900;
                margin-bottom: 10px;
                background: -webkit-linear-gradient(
                    #2dd4bf, #333);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }
            .error p{
                font-size: 16px;
                color: #6b7280;
            }
        </style>
    </head>
    <body>
        <div class="error">
            <h1>Oops!</h1>
            <p>Error: <%= session.getAttribute("ERROR_MESSAGE")%></p>
        </div>
    </body>
</html>
