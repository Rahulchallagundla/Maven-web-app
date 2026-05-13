<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login App</title>

  <style>
    *{
      margin:0;
      padding:0;
      box-sizing:border-box;
      font-family:Arial, sans-serif;
    }

    body{
      height:100vh;
      display:flex;
      justify-content:center;
      align-items:center;
      background:linear-gradient(135deg,#4facfe,#00f2fe);
    }

    .login-box{
      background:white;
      padding:40px;
      width:350px;
      border-radius:15px;
      box-shadow:0 10px 25px rgba(0,0,0,0.2);
    }

    .login-box h2{
      text-align:center;
      margin-bottom:25px;
      color:#333;
    }

    .input-box{
      margin-bottom:20px;
    }

    .input-box input{
      width:100%;
      padding:12px;
      border:1px solid #ccc;
      border-radius:8px;
      outline:none;
      font-size:16px;
    }

    .input-box input:focus{
      border-color:#4facfe;
    }

    button{
      width:100%;
      padding:12px;
      border:none;
      border-radius:8px;
      background:#4facfe;
      color:white;
      font-size:16px;
      cursor:pointer;
      transition:0.3s;
    }

    button:hover{
      background:#00c6fb;
    }

    .message{
      margin-top:15px;
      text-align:center;
      font-size:14px;
    }
  </style>
</head>

<body>

  <div class="login-box">
    <h2>Login</h2>

    <div class="input-box">
      <input type="text" id="username" placeholder="Enter Username">
    </div>

    <div class="input-box">
      <input type="password" id="password" placeholder="Enter Password">
    </div>

    <button onclick="login()">Login</button>

    <div class="message" id="message"></div>
  </div>

  <script>
    function login() {
      let username = document.getElementById("username").value;
      let password = document.getElementById("password").value;
      let message = document.getElementById("message");

      // Demo credentials
      let validUser = "admin";
      let validPass = "12345";

      if(username === "" || password === "") {
        message.style.color = "red";
        message.innerText = "Please fill all fields!";
      }
      else if(username === validUser && password === validPass) {
        message.style.color = "green";
        message.innerText = "Login Successful!";
      }
      else {
        message.style.color = "red";
        message.innerText = "Invalid Username or Password";
      }
    }
  </script>

</body>
</html>
