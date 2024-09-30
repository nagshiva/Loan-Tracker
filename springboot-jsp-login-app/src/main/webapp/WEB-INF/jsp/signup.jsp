<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Loan Track</title>
    <link rel="stylesheet" href="styles.css">
    <!-- Add FontAwesome for the eye icon -->
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

    <section id="signup">
        <h2>Create Your Loan Track Account</h2>
        <div class="account">
            <form id="signupForm" action="signup.jsp" method="POST">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required><br>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="password">Password:</label>
                <div class="password-wrapper">
                    <input type="password" id="password" name="password" required><br><br><br><br>
                    <i class="fas fa-eye" id="togglePassword"></i>
                </div>
                <label for="confirm_password">Confirm Password:</label>
                <div class="password-wrapper">
                    <input type="password" id="confirm_password" name="confirm_password" required><br>
                    <i class="fas fa-eye" id="toggleConfirmPassword"></i>
                </div>
                <button type="submit">Sign Up</button>
                <p id="passwordError" style="color:red;"></p>
            </form>
        </div>
        <p>If you already have an account? <a href="login.jsp">Login here</a>.</p>
    </section>

    <footer>
        <p>&copy; 2024 Loan Track. All rights reserved.</p>
    </footer>

    <script>
        document.getElementById('togglePassword').addEventListener('click', function () {
            togglePasswordVisibility('password', this);
        });

        document.getElementById('toggleConfirmPassword').addEventListener('click', function () {
            togglePasswordVisibility('confirm_password', this);
        });

        function togglePasswordVisibility(inputId, iconElement) {
            const passwordInput = document.getElementById(inputId);
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            iconElement.classList.toggle('fa-eye');
            iconElement.classList.toggle('fa-eye-slash');
        }

        document.getElementById('signupForm').addEventListener('submit', function (event) {
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirm_password').value;
            const passwordError = document.getElementById('passwordError');

            if (password !== confirmPassword) {
                passwordError.textContent = "Passwords do not match.";
                event.preventDefault();
                return;
            }

            const passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$/;
            if (!passwordRegex.test(password)) {
                passwordError.textContent = "Password must be at least 8 characters long, include an uppercase letter, a number, and a symbol.";
                event.preventDefault();
                return;
            }

            passwordError.textContent = "";
        });
    </script>
</body>
</html>
