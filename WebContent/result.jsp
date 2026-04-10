<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Result</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #000428, #004e92);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }

        .card {
            padding: 30px;
            border-radius: 15px;
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(10px);
            text-align: center;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
        }

        .btn-again {
            background-color: #28a745;
            border: none;
        }

        .btn-again:hover {
            background-color: #218838;
        }
    </style>
</head>

<body>

<div class="card col-md-4">
    <h2>🎯 Result</h2>

    <h4 class="my-3">${result}</h4>

    <a href="index.html" class="btn btn-again w-100">Play Again</a>
</div>

</body>
</html>
