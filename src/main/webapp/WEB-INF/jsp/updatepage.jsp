<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>updatePage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">     
</head>
<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand">Hello,SinaAppEngine is welcome you!</a>
        </div>
    </div>
<form class="well" action="/handleupdate" method="post">
  <label>Update user.</label>
id:<input type="text" class="span3" name="id" value='<%=request.getParameter("id")%>'  readonly="readonly"><br>
  name:<input type="text" class="span3" name="name" value='<%=request.getParameter("name")%>' placeholder='<%=request.getParameter("name")%>'><br>
  age：<input type="text" class="span3" name="age" value='<%=request.getParameter("age")%>' placeholder='<%=request.getParameter("age")%>'><br>
  sex：man<input type="radio" name="sex" value="man" checked=true>
  woman<input type="radio" name="sex" value="woman"><br>
  <button type="submit" class="btn">Update</button>
</form>
<div align="left"><a href="/">go back</a></div>
 </div>
</body>
</html>