<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Page d'accueil</title>

  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f8f8f8;
      text-align: center;
      margin: 0;
      padding: 50px;
    }

    h1 {
      color: #333333;
    }

    h3 {
      color: #555555;
    }

    a {
      display: inline-block;
      padding: 10px 20px;
      margin-top: 20px;
      text-decoration: none;
      background-color: #3498db;
      color: #ffffff;
      font-size: 18px;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }

    a:hover {
      background-color: #2980b9;
    }
  </style>
</head>
<body>
<h1><%= "Bienvenue!" %></h1>
<h3><%= "Pour basculer vers la calculatrice, cliquez sur le bouton."%></h3>
<br/>
<a href="calculator">Calculatrice!</a>
</body>
</html>