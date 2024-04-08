<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
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

      <form class="form" action="<%=request.getContextPath()%>/auth?action=manual" method="post">
        <div class="form-group">
          <input type="text" id="loginEmail" name="loginEmail" placeholder="your email address" required>
        </div>
        <div class="form-group">
          <input type="password" id="loginPassword" name="loginPassword" placeholder="password" required>
        </div>
        <div class="notif" style="color: red">${requestScope.notification}</div>
      <p class="signup-link">
        Don't have an account?
        <a href="#" class="signup-link link"> Forgot your password?(???)</a>
      </p>
<!-- Modal bootstrap 5 -->
<!-- Button to Open the Modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
  Open modal
</button>

<!-- The Modal -->
	<div class="modal" id="myModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">Fill account</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	        <div onclick="fillAccountRenter()">Renter</div>
	        <div onclick="fillAccountOwner()">Owner</div>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	
	    </div>
	  </div>
	</div>
<!--  -->
        <button class="form-submit-btn" type="submit">Login</button>
      </form>
	</div>
      
	<div class="register-form col-5">
		<div class="logo-container">
        	NOT A MEMBER YET?
      </div>

      <form class="form" id="registerForm" action="<%=request.getContextPath()%>/auth?action=register" method="post" onsubmit="return check()">
        <div class="form-group">
          <input type="text" id="name" name="name" placeholder="your name" required>
        </div>
        <div class="form-group">
          <input type="email" id="registerEmail" name="registerEmail" placeholder="your email address" required pattern="^[A-Za-z0-9.]+@(gmail.com)$">
        </div>
        <div class="form-group">
          <input type="text" id="phone" name="phone" placeholder="your phone number" required maxlength="10">
        </div>
        <div class="form-group">
          <input type="text" id="nationalId" name="nationalId" placeholder="your nationalID" required>
        </div>
        <div class="form-group">
          <input type="password" id="registerPassword" name="registerPassword" placeholder="password" required>
        </div>
        <div class="form-group">
          <input type="password" id="confirmPassword" name="confirmPassword" placeholder="confirm password" required>
        </div>
        <div class="">
          <input type="radio" id="role1" name="role" value="0" checked>I want to rent a car
          <input type="radio" id="role2" name="role" value="1">I am a car owner
        </div>
        <div class="">
          <input type="checkbox" id="agree" name="agree">
          <span>I have read and argee with the <a href="#">Terms and Conditions</a></span>
        </div>
        <div id="notif" class="notif" style="color: red">${requestScope.notification}</div>
        <button class="form-submit-btn" type="submit">SIGN UP</button>
      </form>
	</div>
    </div>
    
<jsp:include page="../../footer.jsp" />
</main>
<script src="<%=request.getContextPath()%>/resources/js/login.js"></script>
</body>
</html>