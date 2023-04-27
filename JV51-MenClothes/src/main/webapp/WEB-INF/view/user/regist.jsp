<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 30/12/2022
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <title>Bootstrap Simple Registration Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body {
            font-family: 'Varela Round', sans-serif;
        }

        .modal-login {
            width: 350px;
        }

        .modal-login .modal-content {
            padding: 20px;
            border-radius: 5px;
            border: none;
        }

        .modal-login .modal-header {
            border-bottom: none;
            position: relative;
            justify-content: center;
        }

        .modal-login .close {
            position: absolute;
            top: -10px;
            right: -10px;
        }

        .modal-login h4 {
            color: #636363;
            text-align: center;
            font-size: 26px;
            margin-top: 0;
        }

        .modal-login .modal-content {
            color: #999;
            border-radius: 1px;
            margin-bottom: 15px;
            background: #fff;
            border: 1px solid #f3f3f3;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 25px;
        }

        .modal-login .form-group {
            margin-bottom: 20px;
        }

        .modal-login label {
            font-weight: normal;
            font-size: 13px;
        }

        .modal-login .form-control {
            min-height: 38px;
            padding-left: 5px;
            box-shadow: none !important;
            border-width: 0 0 1px 0;
            border-radius: 0;
        }

        .modal-login .form-control:focus {
            border-color: #ccc;
        }

        .modal-login .input-group-addon {
            max-width: 42px;
            text-align: center;
            background: none;
            border-bottom: 1px solid #ced4da;
            padding-right: 5px;
            border-radius: 0;
        }

        .modal-login .btn, .modal-login .btn:active {
            font-size: 16px;
            font-weight: bold;
            background: #232015 !important;
            border-radius: 3px;
            border: none;
            min-width: 140px;
        }

        .modal-login .btn:hover, .modal-login .btn:focus {
            background: #232015 !important;
        }

        .modal-login .hint-text {
            text-align: center;
            padding-top: 5px;
            font-size: 13px;
        }

        .modal-login .modal-footer {
            color: #999;
            border-color: #dee4e7;
            text-align: center;
            margin: 0 -25px -25px;
            font-size: 13px;
            justify-content: center;
        }

        .modal-login a {
            color: #fff;
            text-decoration: underline;
        }

        .modal-login a:hover {
            text-decoration: none;
        }

        .modal-login a {
            color: #232015;
            text-decoration: none;
        }

        .modal-login a:hover {
            text-decoration: underline;
        }

        .modal-login .fa {
            font-size: 21px;
            position: relative;
            top: 6px;
        }

        .trigger-btn {
            display: inline-block;
            margin: 100px auto;
        }
    </style>

</head>
<body>
<div class="text-center">
    <!-- Button HTML (to Trigger Modal) -->
    <a href="#myModalRegist" class="trigger-btn" data-toggle="modal">Click to login</a>
</div>
<div id="myModalRegist" class="modal fade">
    <mvc:form modelAttribute="account" action="addAccountUser" method="post">
        <div class="modal-dialog modal-login">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Register</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <mvc:input path="username" type="text" class="form-control" name="account name"
                                       placeholder="Account Name" required="required" pattern="[A-Za-z0-9_]{1,15}"
                                       title="Username should only contain lowercase letters and contains no special characters . e.g. John123 "/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <mvc:input path="password" type="password" class="form-control" name="pw1"
                                       placeholder="Password" required="required"
                                       pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                                       title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"/>
                            <mvc:hidden path="enabled" value="1"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-check-label"><input type="checkbox" required="required"> I accept the <a
                                href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
                    </div>
                    <p style="color: red;font-style: italic">${message}</p>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block btn-lg">Register Now</button>
                    </div>
                </div>
                <div class="text-center">Already have an account? <a href="login">Sign in</a></div>
            </div>
        </div>
    </mvc:form>
</div>
<script>
    function checker() {
        var result = confirm('Are you sure?');
        if (result == false) {
            event.preventDefault();
        }
    }
</script>
</body>
</html>
