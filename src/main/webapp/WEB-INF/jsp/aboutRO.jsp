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
    <a href="#questions">FAQ</a>
</div>
<br><br>

<div style="text-align: left" class="searchbar">
    <input type="text" class="search_input" placeholder="Cautati cuvinte cheie, text...">
    <button style="width: 100px; height: 30px" type="searchbutton" name="button">Cautati</button>
</div>

<div class="descr">
    <p class="description">Obiectivul acestui site este acela de atacurile și amenințările care apar în spațiul cibernetic. De ce am decis să mergem în această direcție este dorința de a educa oamenii despre pericolele care se ascund în umbra Internetului, dacă acestea nu sunt adecvate, unde sunt protejate și că nu este o soluție bună când majoritatea informațiilor despre viață sunt online.
    </p>
    <p class="description" >Când vorbim despre ignoranță, este important de reținut că nu numai persoanele particulare nu sunt pe deplin conștiente de pericolele, dar și companiile care nu văd amenințarea la adresa securității naționale chiar și cu noile standarde.</p>
</div>
</body>
</html>
