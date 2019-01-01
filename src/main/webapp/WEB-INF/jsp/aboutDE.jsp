<!DOCTYPE html>
<style>
    .searchbar{
        margin-bottom: auto;
        margin-top: auto;
        height: 60px;
        width: 100%;
        background-color: #EFF8FB;
        border-radius: 30px;
        padding: 10px;
    }

    .search_input{
        color: black;
        border: 0;
        outline: 0;
        background:  #E6E6E6;
        width: 60%;
        line-height: 40px;
        transition: width 0.4s linear;
    }

    .searchbar:hover > .search_input{
        padding: 0 10px;
        width: 450px;
        transition: width 0.4s linear;
    }
</style>

<html lang="de" dir="ltr">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>

<head>
    <meta charset="utf-8">
    <title>About</title>

    <link href="../../css/about_style.css" type="text/css" rel="stylesheet">
</head>
<body>
<select data-placeholder="Choose a Language..." onchange="location = this.value;" >

    <option value="aboutDE">German</option>
    <option value="about"> English</option>
    <option value="aboutRO">Romanian</option>
</select>
<h1>Unser Konzept und wie alles begann</h1>

<div class="topnav">
    <a href="indexDE">Startseite</a>
    <a class="active">Uber uns</a>
    <a href="#questions">FAQ</a>
</div>
<br><br>

<div style="text-align: left" class="searchbar">
    <input type="text" class="search_input" placeholder="Keywords, text suchen...">
    <button style="width: 100px; height: 30px" type="searchbutton" name="button">Suchen</button>
</div>

<div class="descr">
    <p class="description">Der Schwerpunkt dieser Website liegt auf Angriffen und Bedrohungen, die im Cyberspace auftreten. Warum wir uns entschieden haben, in diese Richtung zu gehen, ist der Wunsch, die Menschen über die Gefahren aufzuklären, die sich im Schatten des Internets verstecken, wenn sie nicht geeignet sind, vor denen sie geschützt sind, und dass es keine gute Lösung ist, wenn die meisten unserer Lebensinformationen online sind.
    </p>
    <p class="description" >Wenn man davon spricht, dass man ignorant bleibt, ist es wichtig zu beachten, dass nicht nur Privatpersonen sich der Gefahren nicht voll bewusst sind, sondern auch Unternehmen, die selbst mit den neuen Normen die Bedrohung für die nationale Sicherheit nicht sehen.</p>

</div>

<div>
    <p th:text="name"></p>
</div>

</body>
</html>
