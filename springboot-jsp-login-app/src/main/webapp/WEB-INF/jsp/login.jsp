<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Loan Track App</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style><%@include file="/WEB-INF/Css/login.css"%></style>
</head>
<body>
    <header>
        <div class="header-left">
            <img src="img/loan-track-logo.png" alt="Loan Track Logo" height="50px" width="50px">
            <h1>Loan Track</h1>
        </div>
    </header>

    <section id="login">
        <h2>Login to Your Account</h2>
        <div class="form">
            <!-- Form posts to Spring Boot login endpoint -->
            <form action="/login" method="POST">
                <label for="username">Username:</label>
                <input type="text" id="username" name="name" required><br>
                
                <label for="password">Password:</label>
                <div class="password-wrapper">
                    <input type="password" id="password" name="password" required>
                    <i class="fas fa-eye" id="togglePassword"></i>
                </div>
                
                <!-- Show error message if login fails -->
                <font color="red">${errorMessage}</font><br>

                <button type="submit">Login</button>
            </form>
            <p><a href="#" id="forgotPasswordLink">Forgot Password?</a></p>
        </div>
        <div id="signup-section">
            <p>Don't have an account? <a href="/signup" class="signup-link">Sign Up</a>.</p>
            <p>Sign up now to enjoy all the benefits of Loan Track!</p>
        </div>
    </section>

    <div id="forgotPasswordModal" class="modal">
        <!-- Forgot password form -->
        <!-- same as before -->
    </div>

    <footer>
        <p>&copy; 2024 Loan Track. All rights reserved.</p>
    </footer>

    <script>
        document.getElementById('togglePassword').addEventListener('click', function () {
            const passwordInput = document.getElementById('password');
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.classList.toggle('fa-eye');
            this.classList.toggle('fa-eye-slash');
        });

        // Forgot password modal JS
    </script>
</body>
</html>
