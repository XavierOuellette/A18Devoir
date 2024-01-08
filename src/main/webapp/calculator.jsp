<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculatrice</title>

    <script>
        function addToDisplay(value) {
            document.getElementById("display").value += value;
        }

        function clearDisplay() {
            document.getElementById("display").value = "";
        }

        function evaluate() {
            const expression = document.getElementById("display").value;
            const result = eval(expression);

            document.getElementById("display").value = result;
        }
    </script>

</head>
<body>
<h2>Calculator</h2>

<form>
    <!-- Plus ou moins similaire au style de la calculatrice Google -->
    <input type="text" id="display" readonly placeholder="0" minlength="200px"><br>

    <button type="button" onclick="addToDisplay('(')">(</button>
    <button type="button" onclick="addToDisplay(')')">)</button>
    <button type="button" onclick="addToDisplay('%')">%</button>
    <button type="button" onclick="clearDisplay()">AC</button><br>

    <button type="button" onclick="addToDisplay('7')">7</button>
    <button type="button" onclick="addToDisplay('8')">8</button>
    <button type="button" onclick="addToDisplay('9')">9</button>
    <button type="button" onclick="addToDisplay('/')">/</button><br>

    <button type="button" onclick="addToDisplay('4')">4</button>
    <button type="button" onclick="addToDisplay('5')">5</button>
    <button type="button" onclick="addToDisplay('6')">6</button>
    <button type="button" onclick="addToDisplay('x')">*</button><br>

    <button type="button" onclick="addToDisplay('1')">1</button>
    <button type="button" onclick="addToDisplay('2')">2</button>
    <button type="button" onclick="addToDisplay('3')">3</button>
    <button type="button" onclick="addToDisplay('-')">-</button><br>

    <button type="button" onclick="addToDisplay('0')">0</button>
    <button type="button" onclick="addToDisplay('.')">.</button>
    <button type="button" onclick="evaluate()">=</button>
    <button type="button" onclick="addToDisplay('+')">+</button><br>

</form>
</body>
</html>
