<!DOCTYPE html>



<html lang="de" dir="ltr">
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
    <p class="description">Der Schwerpunkt dieser Website liegt auf Angriffen und Bedrohungen, die im Cyberspace auftreten. Warum wir uns entschieden haben, in diese Richtung zu gehen, ist der Wunsch, die Menschen über die Gefahren aufzuklären, die sich im Schatten des Internets verstecken, wenn sie nicht geeignet sind, vor denen sie geschützt sind, und dass es keine gute Lösung ist, wenn die meisten unserer Lebensinformationen online sind.
    </p>
    <p class="description" >Wenn man davon spricht, dass man ignorant bleibt, ist es wichtig zu beachten, dass nicht nur Privatpersonen sich der Gefahren nicht voll bewusst sind, sondern auch Unternehmen, die selbst mit den neuen Normen die Bedrohung für die nationale Sicherheit nicht sehen.</p>

</div>

<div>
    <p th:text="name"></p>
</div>


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
