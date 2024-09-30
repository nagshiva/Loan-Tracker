<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Tracking App</title>

    <!-- Linking the external CSS file -->
    <link rel="stylesheet" href="home.css">
    <style><%@ include file="/WEB-INF/Css/home.css"%></style>
</head>
<body>

    <header>
        <nav class="navbar">
            <div class="logo">
                <h1>Loan Tracker</h1>
            </div>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="loantrack.jsp" id="track-loans-link">Track Loans</a></li>
                <li><a href="#contact">Contact Us</a></li>
            </ul>

            <!-- Profile Dropdown -->
            <div class="profile-dropdown">
                <button class="profile-btn">
                    <img src="profile-icon.png" alt="Profile" class="profile-icon"> <!-- Use an image for profile -->
                </button>
                <div class="dropdown-content">
                    <a href="profile.jsp">Profile</a>
                    <a href="mypayments.jsp">My Payments</a>
                    <a href="settings.jsp">Settings</a>
                    <a href="logout.jsp">Logout</a>
                </div>
            </div>
        </nav>
    </header>

    <section id="home" class="home-section">
        <div class="home-content">
            <h2>Welcome to the Loan Tracking App</h2>
            <p>Manage and track all your loans with ease and stay updated on your payments, interest rates, and loan statuses.</p>
            <!-- Button redirecting to loantrack.jsp -->
            <a href="loantrack.jsp" class="cta-button" id="track-loans-btn">Track My Loans</a>
        </div>
    </section>

    <section id="services" class="services-section">
        <h2>Our Services</h2>
        <div class="services-container">

            <!-- Loan Tracking module as a button -->
            <a href="Loan-Tracking" class="service-box">
                <div>
                    <h3>Loan Tracking</h3>
                    <p>Track your loan history, payments, and status in real-time.</p>
                </div>
            </a>

            <!-- Payment Reminders module as a button -->
            <a href="paymentReminders.jsp" class="service-box">
                <div>
                    <h3>Payment Reminders</h3>
                    <p>Get automatic notifications for upcoming payment due dates.</p>
                </div>
            </a>

            <!-- Interest Rate Management module as a button -->
            <a href="interestRateManagement.jsp" class="service-box">
                <div>
                    <h3>Interest Rate Management</h3>
                    <p>Monitor your loan’s interest rates and manage adjustments.</p>
                </div>
            </a>

        </div>
    </section>

    <footer id="contact" class="footer">
        <h2>Contact Us</h2>
        <p>Email: support@loantracker.com</p>
        <p>Phone: +123 456 7890</p>
        <p>Address: 123 Loan Street, Finance City</p>
    </footer>

    <script>
        // JavaScript to handle redirection to the loan tracking page
        document.getElementById('track-loans-btn').addEventListener('click', function() {
            window.location.href = 'loantrack.jsp'; // Redirects to loantrack.jsp
        });

        // JavaScript to toggle dropdown visibility
        document.querySelector('.profile-btn').addEventListener('click', function() {
            const dropdown = document.querySelector('.dropdown-content');
            dropdown.classList.toggle('show'); // Toggle show/hide the dropdown
        });

        // Close the dropdown if the user clicks outside of it
        window.onclick = function(event) {
            if (!event.target.matches('.profile-btn') && !event.target.matches('.profile-icon')) {
                const dropdowns = document.getElementsByClassName('dropdown-content');
                for (let i = 0; i < dropdowns.length; i++) {
                    const openDropdown = dropdowns[i];
                    if (openDropdown.classList.contains('show')) {
                        openDropdown.classList.remove('show');
                    }
                }
            }
        }
    </script>

    

</body>
</html>
