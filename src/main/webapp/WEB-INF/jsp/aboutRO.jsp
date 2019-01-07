<!DOCTYPE html>
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
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <title>About</title>

    <link href="../../css/about_style.css" type="text/css" rel="stylesheet">
</head>
<body>
<select data-placeholder="Choose a Language..." onchange="location = this.value;" >
    <option value="aboutRO">Romanian</option>
    <option value="aboutDE">German</option>
    <option value="about">  English</option>

</select>
<h1>Conceptul nostru și cum a început totul</h1>

<div class="topnav">
    <a href="indexRO">Acasa</a>
    <a class="active">Despre noi</a>

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
    <p class="description">Obiectivul acestui site este acela de atacurile și amenințările care apar în spațiul cibernetic. De ce am decis să mergem în această direcție este dorința de a educa oamenii despre pericolele care se ascund în umbra Internetului, dacă acestea nu sunt adecvate, unde sunt protejate și că nu este o soluție bună când majoritatea informațiilor despre viață sunt online.
    </p>
    <p class="description" >Când vorbim despre ignoranță, este important de reținut că nu numai persoanele particulare nu sunt pe deplin conștiente de pericolele, dar și companiile care nu văd amenințarea la adresa securității naționale chiar și cu noile standarde.</p>
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
