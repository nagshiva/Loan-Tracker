<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Loan Track App</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style><%@include file="/WEB-INF/Css/signup.css"%></style>
</head>
<body>
    <header>
        <div class="header-left">
            <img src="img/loan-track-logo.png" alt="Loan Track Logo" height="50px" width="50px">
            <h1>Loan Track</h1>
        </div>
    </header>

    <section id="signup">
        <h2>Create Your Account</h2>
        <div class="form">
            <!-- Form posts to Spring Boot signup endpoint -->
            <form action="/signup" method="POST">
                <label for="name">Username:</label>
                <input type="text" id="name" name="name" required><br>
                
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required><br>
                
                <!-- Show error and success messages -->
                <font color="red">${errorMessage}</font><br>
                <font color="green">${successMessage}</font><br>

                <button type="submit">Sign Up</button>
            </form>
            <p>Already have an account? <a href="/login" class="login-link">Login</a>.</p>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Loan Track. All rights reserved.</p>
    </footer>
</body>
</html>
