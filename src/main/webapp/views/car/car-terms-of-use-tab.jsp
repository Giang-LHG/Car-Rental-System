<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rent a car today!</title>
    <jsp:include page="../head.html"></jsp:include>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        main {
            padding: 20px;
        }
    </style>
</head>
<body>
        <div>
            <p>Base price: <input type="text" value="900,000"/> VND/Day</p>
            <p>Required deposit: <input type="text" value="15,000,000"/> VND</p>
            <div>
                <p>Terms of use:</p>
                <div>
                    <input type="checkbox" id="no-smoking" checked/>
                    <label for="no-smoking">No smoking</label>
                </div>
                <div>
                    <input type="checkbox" id="no-pet" checked/>
                    <label for="no-pet">No pet</label>
                </div>
                <div>
                    <input type="checkbox" id="no-food"/>
                    <label for="no-food">No food in car</label>
                </div>
                <div>
                    <input type="checkbox" id="other"/>
                    <label for="other">Other</label>
                </div>
            </div>
        </div>

</body>
</html>