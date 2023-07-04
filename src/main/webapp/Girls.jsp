<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="100000000">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script language="javascript" type="text/javascript" src="assets/js/jQuery/jquery-1.8.2.js"></script>

    <title>少女革命</title>
    <style>
        article{
            width: 800px;
            height:600px;
            margin: 0 auto;
        }
        .center{
            text-align: center;
        }
        .color1{
            color: #808080;
        }
        .color2{color: #87ceeb;font-weight: bold;}
        p{
            text-indent: 2em;
            font-family: "Times New Roman";
            font-style:italic;
            font-size: medium;
            font-weight: bold;
        }
        body{
            background-image: url(assets/images/background.jpg);
        }
    </style>
</head>
<body>
<% if (request.getAttribute("errorMessage") != null) { %>
<script>
    alert("${requestScope.get("errorMessage")}");
</script>
<% } %>

<article>
    <h1 class="center">Girls'revolution</h1>
    <p style="text-indent: 0em;text-align: center;" >
        <span class="color1" >2023-07-01 14:58</span> <span class="color2" >Home of Cartoon</span> <span><a style="text-decoration: none;" href="#">Collect this article</a></span> <hr>
    </p>
    <p>The characters of Shoujo Kakumei Utena compare themselves, harshly and unfairly or confusedly and unfairly, against one another, constantly. As you do in school. As you do in life. They may find themselves lacking on a cosmic scale because they are missing some small happiness or ease they perceive in another student. They may find themselves to be superior based on an abstract principle or their closeness or affiliation with another student. But, they all feel, in the pit of their being, that they are insufficient.</p>
    <p>Everyone in Utena plays to lose until Tenjou Utena, and then Himemiya Anthy after, have something to win. But, they are not the only ones, nor can they ever be the only ones. In Adolescent Apocalypse, Wakaba and Shiori can also transform into world-crossing motor vehicles. In Adolescent Apocalypse, or The Adolescence of Utena, Saionji half-threatens to escape, to win, to change just to be the same young guy he always is. A White Rosebud – the 2017 stage musical – and its sequel, both put multiple characters’ growth, maturation and revolution to the fore of the narrative. The manga, After the Revolution makes the ability for all to change, all to escape, to grow, to be explicit.</p>
    <p>The revolution in the first comic and the television series is arguably not Utena’s, at all, though her name is in the title. That revolution belongs, foremost, to Anthy in her decision to break from immemorial timeless behavior, natural law for their universe, reaffirmed in the theatrical film with Anthy in the driver’s seat once Utena becomes a car, a vehicle for her to leave into change. In After the Revolution, Utena and Anthy form a narrative for launch, an elemental expression a spiritual lesson to initiate others into their own personal and the promise of a universal</p>
    <p>The microcosm Utena is placed into can be a maze specifically to ensnare Utena without it degrading the value of anyone else caught in or harmed by that trap. Especially because Anthy’s achievement is so closely tied to Utena’s, their escapes in tandem in spirit and development if not completion, the potential is open to us and to anyone. Even the dead.</p>
    <h1>Comment Area：</h1>
    <!-- 每个评论放在p标签中 -->
    <c:forEach items="${requestScope.get('commentList')}" var="comment">
        <p style="margin: auto">
            ${comment.name} : ${comment.content}
        </p>
        <br>
    </c:forEach>
    <h4>Post your comment！</h4>
    <textarea name="result" id="comment" cols="100" rows="10" style="background-color:rgb(245,212,217,0.3)"></textarea>
    <br>
    <input type="submit" value="submit" onclick="submit()">
    <input value="reset" onclick="resetText()" type="submit">
    <a class="nav-link" href="login.jsp">Login</a>
</article>
<div style="display: none">
    <form id="form" action="commentController" method="post">
        <input type="hidden" name="type" value="add">
        <input type="text" id="content" name="content">
        <input type="submit">
    </form>
</div>
<script>
    function resetText() {
        document.getElementById("comment").value = "";
    }
    function submit() {
        var comment = document.getElementById("comment").value;
        if (comment == "") {
            alert("评论不能为空");
            return;
        }
        document.getElementById("content").value = comment;
        document.getElementById("form").submit();
    }
</script>

</body>
</html>
