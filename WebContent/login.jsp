<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        form {    
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-left: 500px;
            width :500px;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        label {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        label span {
            margin-right: 10px;
        }
        input[type="text"],
        input[type="password"] 
        {
            margin-top: 10px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Login</h1>
    <form action="login" method="post">
        <label>
            <span>User ID : </span>
            <input type="text" name="username" required>
        </label>
        <label>
            <span>Password:</span>
            <input type="password" name="password" required>
        </label>
        <input type="submit" value="Login">
    </form>
    <script>
		$(document).ready(function() {
			$("#login-form").submit(function(e) {
				e.preventDefault();
				var username = $("input[name='username']").val();
				var password = $("input[name='password']").val();
				// Validate the input fields
				if (!username || !password) {
					alert("Please enter both username and password.");
					return false;
				}
				
			});
		});
	</script>
</body>
</html>
