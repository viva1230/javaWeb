<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册登录界面Ⅱ</title>
    <link rel="stylesheet" href="assets/css/login.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    <!-- 引入日期控件 -->
    <script src="assets/js/jQuery/jedate.js"></script>
    <link rel="stylesheet" href="assets/js/jQuery/jedate.css">
    <!-- 弹窗信息 -->
    <% if (request.getAttribute("successMessage") != null) { %>
    <script>
        if (confirm("注册成功！点击确定按钮进入主页面。")) {
            window.location.href = "index.jsp";
        }
    </script>
    <% } %>

    <% if (request.getAttribute("errorMessage") != null) { %>
    <script>
        alert("${requestScope.get("errorMessage")}");
    </script>
    <% } %>
</head>
<body>
<div class="container">
    <div class="welcome">
        <div class="pinkbox">
            <!-- 注册 -->
            <div class="signup nodisplay">
                <h1>Register</h1>
                <form autocomplete="off" action="loginInfoController">
                    <input type="hidden" name="type" value="register"/>
                    <input type="text" name="name" placeholder="Username">
                    <input type="email" name="mail" placeholder="Email">
                    <input type="text" name="birth" class="jeinput" id="testred" placeholder="YYYY-MM-DD" readonly="readonly">
                    <input type="password" name="psw" placeholder="Password">
                    <input type="password" name="psw1" placeholder="Confirm Password">
                    <button class="button submit" type="submit" id="btnSignup">Create Account</button>
                </form>
            </div>

            <!-- 登录 -->
            <div class="signin">
                <h1>Sign In</h1>
                <form class="more-padding" autocomplete="off" action="loginInfoController">
                    <input type="hidden" name="type" value="login"/>
                    <input type="text" name="name" placeholder="Username">
                    <input type="password" name="psw" placeholder="Password">
                    <div class="checkbox">
                        <input type="checkbox" id="remember" /><label for="remember">Remember Me</label>
                    </div>
                    <button class="buttom sumbit" type="submit" id="btnLogin">Login</button>
                </form>
            </div>
        </div>

        <div class="leftbox">
            <h2 class="title"><span>BLOOM</span>&<br>BOUQUET</h2>
            <p class="desc">Pick your perfect <span>bouquet</span></p>
            <img class="flower smaller" src="assets/images/login1.png" />
            <p class="account">Have an account?</p>
            <button class="button" id="signin">Login</button>
        </div>

        <div class="rightbox">
            <h2 class="title"><span>BLOOM</span>&<br>BOUQUET</h2>
            <p class="desc">Pick your perfect <span>bouquet</span></p>
            <img class="flower" src="assets/images/login2.png" />
            <p class="account">Don't have an account?</p>
            <button class="button" id="signup">Sign Up</button>
        </div>
    </div>
</div>

<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script><script src="assets/js/login.js"></script>

<script>
    $(function(){
//选择生日时的时间控件调用
        jeDate("#testred",{
            /* theme:{bgcolor:"#eac7cc",pnColor:"#000000"}, */
            theme:{bgcolor:"#eac7cc",pnColor:"#000000",color:"#FF0000"},
            multiPane:true,
            format:"YYYY-MM-DD",
            language:{
                name   : "en",
                month  : ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"],
                weeks  : [ "SUN","MON","TUR","WED","THU","FRI","SAT" ],
                times  : ["Hour","Minute","Second"],
                timetxt: ["Time","Start Time","End Time"],
                backtxt: "Back",
                clear  : "Clear",
                today  : "Now",
                yes    : "Confirm",
                close  : "Close"
            }

        });

    })
</script>
</body>
</html>
