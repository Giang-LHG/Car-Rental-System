<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<jsp:include page="../../head.html" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/login.css">
</head>
<body>
<jsp:include page="../../header.jsp" />
<main>
<!-- Forgot password -->
<!-- 
	<div class="form-container">
      <div class="logo-container">
        Forgot Password
      </div>

      <form class="form">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="text" id="email" name="email" placeholder="Enter your email" required="">
        </div>

        <button class="form-submit-btn" type="submit">Send Email</button>
      </form>

      <p class="signup-link">
        Don't have an account?
        <a href="#" class="signup-link link"> Sign up now</a>
      </p>
    </div>
-->
<!-- Login form -->
	<div class="form-container">
	<div class="login-form col-5">
		<div class="logo-container">
        LOGIN USING YOUR ACCOUNT
      </div>

      <form class="form" action="" method="post">
        <div class="form-group">
          <input type="text" id="loginEmail" name="loginEmail" placeholder="your email address" required>
        </div>
        <div class="form-group">
          <input type="text" id="loginPassword" name="loginPassword" placeholder="password" required>
        </div>

      <p class="signup-link">
        Don't have an account?
        <a href="#" class="signup-link link"> Forgot your password?(???)</a>
      </p>
      	<button class="btn-fill" id="btn-fill" onclick="fillAccount()">fill account</button>
        <button class="form-submit-btn" type="submit">Login</button>
      </form>
	</div>
      
	<div class="register-form col-5">
		<div class="logo-container">
        	NOT A MEMBER YET?
      </div>

      <form class="form" action="" method="post">
        <div class="form-group">
          <input type="text" id="name" name="name" placeholder="your name" required>
        </div>
        <div class="form-group">
          <input type="email" id="registerEmail" name="registerEmail" placeholder="your email address" required>
        </div>
        <div class="form-group">
          <input type="text" id="phone" name="phone" placeholder="your phone number" required>
        </div>
        <div class="form-group">
          <input type="password" id="registerPassword" name="registerPassword" placeholder="password" required>
        </div>
        <div class="form-group">
          <input type="password" id="confirmPassword" name="confirmPassword" placeholder="confirm password" required>
        </div>
        <div class="">
          <input type="radio" id="role1" name="role" value="rent">I want to rent a car
          <input type="radio" id="role2" name="role" value="owner">I am a car owner
        </div>
        <div class="">
          <input type="checkbox" id="argee" name="argee">
          <span>I have read and argee with the <a href="#">Terms and Condititions</a></span>
        </div>
        <button class="form-submit-btn" type="submit">SIGN UP</button>
      </form>
	</div>
    </div>
    <!-- Modal bootstrap 5 -->
    <div class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</main>
<script src="<%=request.getContextPath()%>/resources/js/login.js"></script>
</body>
</html>