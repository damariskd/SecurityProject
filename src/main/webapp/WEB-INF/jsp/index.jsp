<!DOCTYPE html>

<html lang="en" dir="ltr">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<head>
    <meta charset="utf-8">
    <title>Bachelor Project</title>

    <link href="../../css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
<select data-placeholder="Choose a Language..." onchange="location = this.value;" >
    <option value="index">English</option>
    <option value="indexDE">German</option>
    <option value="indexRO">Romanian</option>
</select>

<h1 id="title">Multilingual Search Ontology for Attack and Threat Hunting</h1>


<div class="topnav">
    <a class="active" href="#home">Home</a>
    <a href="about">About</a>




 <!--   <ul id="myUL" >
        <li style="display:none "><a href="malware">Malware</a></li>
        <li style="display:none"><a href="phishing">Phishing</a></li>
        <li style="display:none" ><a href="trojan_horse">Trojan Horse</a></li>
        <li style="display:none" ><a href="dos_ddos">Denial-of-Service</a></li>
        <li style="display:none"><a href="typesOfAttacks">Types of Attacks</a></li>

    </ul> -->
 </div>
<div class="intro">

    <p class="introduction">As long as the internet expands, including broader parts of our life, like the economic and social aspects, the cybersecurity is developed into a major concern for everyone and it deals with privacy, confidentiality and more aspects of the weaknesses of the internet.  </p>
    <p class="introduction">Therefore, this platform offers a theoretical approach on the different types of attacks and threats, both in the everyday lives of people as well as in corporate networks with the hope that it will educate and inform the people about the above mentioned.</p>

</div>

<h2 class="list">List of Topics:</h2>
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
    <li><a href="ransomware">Ransomware</a></li>
    <br>
    <li><a href="#">IP Spoofing</a></li>
    <br>
    <li><a href="#">Ping of death</a></li>
    <br>
    <li><a href="smurfattack">Smurf attack</a></li>

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
