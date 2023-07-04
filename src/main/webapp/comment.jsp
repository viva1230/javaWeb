<%@ page import="com.example.web.entity.LoginInfo" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>comment</title>
</head>
<style>
    div{
        width: 600px;
        height:1000px;
        margin: 0 auto;
    }
    .center{
        text-align: center;
    }
    .div1{
        width: 600px;
        height:50px;
        margin: 0 auto;
    }
    body{
        background-image: url(assets/images/background.jpg);
    }
</style>
<body>

<div>
    <% if (((LoginInfo)session.getAttribute("loginInfo")).getLevel() == 2) { %>
    <form action="commentController">
        <input type="hidden" name="type" value="find">
        <input type="text" placeholder="please input user's name" id="admin" name="name">
        <input type="submit" value="submit">
    </form>
    <% } %>
    <br> <!-- 当用户等级为2的管理员才能使用这个提交按钮不然禁用 -->
    <table border="1" width="600" height="100">
        <h1 style="font-weight: bold" class="center" >Comments</h1>
        <thead>
        <tr>
            <td>comment_id</td><!-- 评论的id -->
            <td>user_name</td><!-- 用户的名字 -->
            <td>content</td><!-- 评论的内容 -->
            <td>operation</td><!-- 操作 -->
        </tr></thead>

        <tbody>
        <c:forEach items="${requestScope.get('commentList')}" var="comment"> <%--jstl标签库，其实for循环--%>
            <script>
                console.log(${comment.commentId});
            </script>
            <tr>
                <td>${comment.commentId}</td>
                <td>${comment.name}</td>
                <td>${comment.content}</td>
                <td><a href="commentController?type=delete&id=${comment.commentId}">delete</a></td>
            </tr>
        </c:forEach>
        <!--  第N个评论 -->
        </tbody>
        <tfoot>
        </tfoot>
    </table>
</div>
</body>
</html>
