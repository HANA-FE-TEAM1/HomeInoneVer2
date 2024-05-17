<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="icon" href="images/logo.svg" />
    <title>HomeInOne</title>
</head>
<body>
<div class="login-container">
    <form>
        <h1><div class="header-inner">
            <img id="logo-image" src="images/logo.svg" alt="" />
            <img
                    id="hovered-logo-image"
                    src="images/hoveredLogo.svg"
                    alt="" />
        </div></h1>
        <input placeholder="Username" type="text" id="id" required>
        <input placeholder="Password" type="password" id="pw" required>
        <button type="submit">로그인</button>
    </form>
</div>
<script src="./javascript/login.js"></script>
</body>
</html>
