<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Calculatrice</title>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        form {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 255px; /* Set the maximum width of the calculator */
            margin: 20px; /* Add margin to the left */
        }

        h2 {
            color: #333333;
        }

        input {
            width: 100%;
            height: 40px;
            font-size: 18px;
            text-align: right;
            margin-bottom: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            padding: 5px;
            box-sizing: border-box;
        }

        button {
            width: 50px;
            height: 50px;
            font-size: 18px;
            margin: 5px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            background-color: #f8f8f8;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #e6e6e6;
        }

        button.operator {
            background-color: #757575;
            color: #ffffff;
        }

        button.operator:hover {
            background-color: #555555;
        }

        button.number {
            background-color: #CCCCCC;
            color: #ffffff;
        }

        button.number:hover {
            background-color: #999999;
        }

        button.calculate {
            background-color: #3498db;
            color: #ffffff;
        }

        button.calculate:hover {
            background-color: #2980b9;
        }
    </style>
    <!-- CDN pour MathJS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjs/12.2.1/math.js" integrity="sha512-ekTDuSaAE9sFxbDUSIgOT0OK+iInxoziYIA03oVHFWC7edmuSwngpR/FTu7ome+sfcZgFePphvGDkRTav62lMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>

        function addToDisplay(value) {
            document.getElementById("display").value += value;
        }

        function clearDisplay() {
            document.getElementById("display").value = "";
        }

        function calculate() {
            const expression = document.getElementById("display").value;
            const result = math.evaluate(expression);

            document.getElementById("display").value = result;

        }
    </script>

</head>
<body>
<h2>Calculatrice</h2>

<form>
    <!-- Plus ou moins similaire au style de la calculatrice Google -->
    <input type="text" id="display" readonly placeholder="0"><br>

    <button type="button" onclick="addToDisplay('(')" class="operator">(</button>
    <button type="button" onclick="addToDisplay(')')" class="operator">)</button>
    <button type="button" onclick="addToDisplay('%')" class="operator">%</button>
    <button type="button" onclick="clearDisplay()" class="operator">AC</button><br>

    <button type="button" onclick="addToDisplay('7')" class="number">7</button>
    <button type="button" onclick="addToDisplay('8')" class="number">8</button>
    <button type="button" onclick="addToDisplay('9')" class="number">9</button>
    <button type="button" onclick="addToDisplay('/')" class="operator">/</button><br>

    <button type="button" onclick="addToDisplay('4')" class="number">4</button>
    <button type="button" onclick="addToDisplay('5')" class="number">5</button>
    <button type="button" onclick="addToDisplay('6')" class="number">6</button>
    <button type="button" onclick="addToDisplay('*')" class="operator">*</button><br>

    <button type="button" onclick="addToDisplay('1')" class="number">1</button>
    <button type="button" onclick="addToDisplay('2')" class="number">2</button>
    <button type="button" onclick="addToDisplay('3')" class="number">3</button>
    <button type="button" onclick="addToDisplay('-')" class="operator">-</button><br>

    <button type="button" onclick="addToDisplay('0')" class="number">0</button>
    <button type="button" onclick="addToDisplay('.')" class="number">.</button>
    <button type="button" onclick="calculate()" class="calculate">=</button>
    <button type="button" onclick="addToDisplay('+')" class="operator">+</button><br>

</form>
</body>
</html>
