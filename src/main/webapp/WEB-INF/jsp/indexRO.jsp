<!DOCTYPE html>
<html lang="ro" dir="ltr">
<head>
    <meta charset= "utf-8" />
    <title>Bachelor Project</title>

    <link href="../../css/style.css" type="text/css" rel="stylesheet">
</head>
<body>

<select data-placeholder="Choose a Language..." onchange="location = this.value;" >
    <option value="indexRO">Romanian</option>
    <option value="indexDE">German</option>
    <option value="index">  English</option>

</select>

<h1>Ontologie multilingvistica pentru cautarea atacurilor si a amenintarilor</h1>


<div class="topnav">
    <a class="active" href="#home">Acasa</a>
    <a href="aboutRO">Despre noi</a>



</div>

<div class="intro">
    <p class="introduction">Pe masură ce Internetul se extinde, inclusiv o mare parte din viețile noastre, cum ar fi aspectele economice și sociale, securitatea cibernetică devine o preocupare majoră pentru toată lumea și abordează confidențialitatea, confidențialitatea și alte aspecte ale slăbiciunilor internetului.  </p>
    <p class="introduction">Prin urmare, această platformă oferă o abordare teoretică a diferitelor tipuri de atacuri și amenințări, atât în viața de zi cu zi a oamenilor, cât și în rețelele corporative, cu speranța că educă și informează oamenii despre cele de mai sus.</p>
</div>


<h2 class="list">Lista temelor:</h2>
<input type="text" list="myUL" id="myInput" class="search_input" onkeyup="myFunction()" placeholder="Search keywords, text..">

<br><br>

<ul id="myUL" >
    <li><a href="malwareRO">Malware</a></li>
    <br>
    <li><a href="phishingRO">Phishing</a></li>
    <br>
    <li><a href="typesOfAttacksRO">Types of attacks</a></li>
    <br>
    <li><a href="trojan_horseRO">Trojan Horses</a></li>
    <br>
    <li><a href="dos_ddosRO">Distributed-Denial-of-Service</a></li>
    <br>
    <li><a href="dos_ddosRO">Denial-of-Service</a></li>
    <br>
    <li><a href="#">Man-in-the-middle attack</a></li>
    <br>
    <li><a href="#">Man-in-the-browser attack</a></li>
    <br>
    <li><a href="ransomwareRO">Ransomware</a></li>
    <br>
    <li><a href="#">IP Spoofing</a></li>
    <br>
    <li><a href="#">Ping of death</a></li>
    <br>
    <li><a href="smurfattackRO">Smurf attack</a></li>

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
