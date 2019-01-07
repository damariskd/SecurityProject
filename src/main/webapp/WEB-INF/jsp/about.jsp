<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>


<style>
    * {
        box-sizing: border-box;
    }


    #myInput{
        float: right;
        color: black;
        font-size:10px ;
        border: 0;
        outline: 0;
        background:  white;
        width: 20%;
        line-height: 20px;
        transition: width 0.4s linear;

    }

    #myUL {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    #myUL li a {
        float: right;

        text-decoration: none;
        font-size: 15px;
        color: black;
        display: list-item;
    }

    #myUL li a:hover:not(.header) {
        background-color: #eee;
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



    <input type="text" list="myUL" id="myInput" class="search_input" onkeyup="myFunction()" placeholder="Search keywords, text..">
    <br><br>

    <ul id="myUL" >
        <li style="display:none"><a href="malware">Malware</a></li>
        <li  style="display:none"><a href="phishing">Phishing</a></li>

        <li  style="display:none"><a href="typesOfAttacks">Types of attacks</a></li>
        <li  style="display:none"><a href="trojan_horse.">Trojan Horses</a></li>

        <li  style="display:none"><a href="dos_ddos">Distributed-Denial-of-Service</a></li>
        <li  style="display:none"><a href="dos_ddos">Denial-of-Service</a></li>

    </ul>

</div>

<br><br>






<div class="descr">
    <p class="description">The focus of this website is layed on attacks and threats which occurs in the cyberspace. Why we decided to go in this direction, is the desire to educate people on the dangers that are hiding in the shadows of the internet when not suitable protected against and that remaining oblivious is not a good solution when most of our life informations are online.
    </p>
    <p class="description" >While talking about remaining oblivious, it is important to note that not only private people are not fully aware of the dangers, but companies are as well, even with the new norms, they do not see the threat to national security.</p>
</div>
<script>
    function myFunction() {

        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        ul = document.getElementById("myUL");
        li = ul.getElementsByTagName("li");

        for (i = 0; i < li.length; i++) {

            a = li[i].getElementsByTagName("a")[0];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
</script>

</body>
</html>
