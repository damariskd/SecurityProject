<!DOCTYPE html>

<html lang="de" dir="ltr">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<head>
    <meta  charset= "utf-8">
    <title>Bachelor Project</title>

    <link href="../css/style.css" type="text/css" rel="stylesheet">
</head>
<body style = "font-family: Arial; font-weight: normal;">

<select data-placeholder="Choose a Language..." onchange="location = this.value;" style ="font-family: Arial; font-weight: normal;">

    <option value="indexDE">German</option>
    <option value="index"> English</option>
    <option value="indexRO">Romanian</option>
</select>

<h1 id="title">Mehrsprachige Such-Ontologie für Angriffe und Bedrohungssuche</h1>


<div class="topnav">
    <a class="active" href="#home">Startseite</a>
    <a href="aboutDE">Uber uns</a>

  <!--  <input type="text" placeholder="Suchen Schlüsselwort, text..">
    <button type="searchbutton" name="button" style ="font-family: Arial; font-weight: normal;">suchen</button>
-->

</div>


<div class="intro" >
    <p class="introduction">Solange sich das Internet ausdehnt, einschließlich weiter Teile unseres Lebens, wie die wirtschaftlichen und sozialen Aspekte, entwickelt sich die Cybersicherheit zu einem großen Anliegen für alle, und sie befasst sich mit der Privatsphäre, der Vertraulichkeit und weiteren Aspekten der Schwächen des Internets.  </p>
    <p class="introduction">Daher bietet diese Plattform einen theoretischen Ansatz zu den verschiedenen Arten von Angriffenund Bedrohungen, sowohl im Alltag von Menschen als auch in Unternehmensnetzwerken, mit der Hoffnung, dass sie die Menschen über das oben genannte aufklärt und informiert.</p>
</div>



<h2 class="list">Themenliste:</h2>
<input type="text" list="myUL" id="myInput" class="search_input" onkeyup="myFunction()" placeholder="Search keywords, text..">

<br><br>

<ul id="myUL" >
    <li><a href="malware">Malware</a></li>
    <br>
    <li><a href="phishing">Phishing</a></li>
    <br>
    <li><a href="typesOfAttacks">Types of attacks</a></li>
    <br>
    <li><a href="trojan_horse.">Trojan Horses</a></li>
    <br>
    <li><a href="dos_ddos">Distributed-Denial-of-Service</a></li>
    <br>
    <li><a href="dos_ddos">Denial-of-Service</a></li>
    <br>
    <li><a href="#">Man-in-the-middle attack</a></li>
    <br>
    <li><a href="#">Man-in-the-browser attack</a></li>
    <br>
    <li><a href="#">Ransomware</a></li>
    <br>
    <li><a href="#">IP Spoofing</a></li>
    <br>
    <li><a href="#">Ping of death</a></li>
    <br>
    <li><a href="#">Smurf attack</a></li>

</ul>



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


<style>




    * {
        box-sizing: border-box;
    }


    #myInput{
        color: black;
        font-size:15px ;
        border: 0;
        outline: 0;
        background:  white;
        width: 100%;
        line-height: 40px;
        transition: width 0.4s linear;

    }
    #myInput:hover > .search_input{
        padding: 0 10px;
        width: 450px;
        transition: width 0.4s linear;
    }
    #myUL {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    #myUL li a {

        text-decoration: none;
        font-size: 20px;
        color: black;
        display: list-item;
    }

    #myUL li a:hover:not(.header) {
        background-color: #eee;
    }





</style>


</body>
</html>
