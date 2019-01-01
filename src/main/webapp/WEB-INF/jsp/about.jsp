<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
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
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>About</title>
    <link href="../../css/about_style.css" type="text/css" rel="stylesheet">
</head>
<body>
<select data-placeholder="Choose a Language..." onchange="location = this.value;" >
    <option value="about">  English</option>
    <option value="aboutDE">German</option>
    <option value="aboutRO">Romanian</option>



</select>
<h1>Our Concept and How Everything Started</h1>

<div class="topnav">
    <a href="index">Home</a>
    <a class="active">About</a>
    <a href="#questions">FAQ</a>
</div>

<br><br>

<div style="text-align: left" class="searchbar">
    <input type="text" class="search_input" placeholder="Search keywords, text..">
    <button style="width: 100px; height: 30px" type="searchbutton" name="button">search</button>
</div>

<div class="descr">
    <p class="description">The focus of this website is layed on attacks and threats which occurs in the cyberspace. Why we decided to go in this direction, is the desire to educate people on the dangers that are hiding in the shadows of the internet when not suitable protected against and that remaining oblivious is not a good solution when most of our life informations are online.
    </p>
    <p class="description" >While talking about remaining oblivious, it is important to note that not only private people are not fully aware of the dangers, but companies are as well, even with the new norms, they do not see the threat to national security.</p>
</div>


</body>
</html>
