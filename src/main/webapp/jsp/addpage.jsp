<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>addPage</title>
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
<form class="well" action="/handleinseart" method="post">
  <label>Add user</label>
  <input type="hidden" name="id" value="100000"/>
    name:<input type="text" class="span3" name="name" placeholder="Type name..."><br>
    age:<input type="text" class="span3" name="age" placeholder="Type age..."><br>
      sex:man<input type="radio" name="sex" value="man">
  woman<input type="radio" name="sex" value="woman"><br>
  <button type="submit" class="btn">add</button>
</form>
</body>
<div align="left"><a href="/">go back</a></div>
    </div>
</html>