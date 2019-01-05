<!DOCTYPE html>
<html lang="ro" dir="ltr">
<%@ page import = "org.apache.poi.openxml4j.opc.OPCPackage"%>
<%@ page import = "org.apache.poi.xwpf.extractor.XWPFWordExtractor"%>
<%@ page import = "org.apache.poi.xwpf.usermodel.XWPFDocument"%>
<%@ page import="java.io.FileInputStream" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<style>
    table {
        border-collapse: collapse;
        border: 1px solid black;
    }
    th, td {
        text-align: left;
        padding: 8px;
    }
    tr:nth-child(even){background-color: #E6E6E6}
    th {
        background-color: #EFF8FB;
    }
</style>
<head>
    <meta charset="utf-8">
    <title>About</title>

    <link href="../css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
<select data-placeholder="Alegeti o limba..." onchange="location = this.value;" >
    <option value="typesOfAttacksRO">Romanian</option>
    <option value="typesOfAttacks">  English</option>
    <option value="typesOfAttacksDE">German</option>
</select>
<h1>Tipuri de atacuri si amenintati</h1>


<div class="topnav">
    <a href="indexRO">Acasa</a>
    <a href="aboutRO">Despre noi</a>
    <a href="#questions">FAQ</a>
    <input type="text" placeholder="Search keywords, text..">
    <button type="searchbutton" name="button">search</button>
</div>

<br>

<div class = "descrTopics" >
    <%
        FileInputStream fis = new FileInputStream("TypesOfAttacks_ro.docx");
        XWPFDocument xdoc = new XWPFDocument(OPCPackage.open(fis));
        XWPFWordExtractor extractor = new XWPFWordExtractor(xdoc);
        String string = extractor.getText();
        String[] data = string.split("\n");
        for(int i = 0; i< 3; i++) {
            out.println(data[i]); %> <br>
    <% }%>
    <br>
    <table>
        <tr>
            <th>BAZ? DE COMPARARE</th>
            <th>ATACURI ACTIVE</th>
            <th>ATACURI PASIVE</th>
        </tr>
        <tr>
            <td>De baza</td>
            <td>Atacul activ încearc? s? modifice resursele de sistem sau s? le afecteze func?ionarea.</td>
            <td>Atacul pasiv încearc? s? citeasc? sau s? utilizeze informa?iile din sistem,
                dar nu influen?eaz? resursele sistemului.</td>
        </tr>
        <tr>
            <td>Modificarea informa?iilor</td>
            <td>Are loc</td>
            <td>Nu are loc</td>
        </tr>
        <tr>
            <td>Afectarea sistemului</td>
            <td>Întotdeauna provoac? daune sistemului.</td>
            <td>Nu provoca nici un r?u.</td>
        </tr>
        <tr>
            <td>Amenin?are pentru</td>
            <td>Integritate ?i disponibilitate</td>
            <td>Confiden?ialitate</td>
        </tr>
        <tr>
            <td>Constientizarea atacului</td>
            <td>Entitatea (victim?) este constient? despre acest atac.</td>
            <td>Entitatea nu constientizeaza atacul.</td>
        </tr>
        <tr>
            <td>Sarcina efectuat? de atacator</td>
            <td>Transmisia este captat? prin controlul fizic al por?iunii unei leg?turi.</td>
            <td>Trebuie doar s? observa?i transmisia.</td>
        </tr>
        <tr>
            <td>Accentul este pus pe</td>
            <td>Detectare</td>
            <td>Prevenire</td> <br>
        </tr>
    </table>
    <br>
    <% for(int i = 3; i<data.length; i++) {
        out.println(data[i]); %> <br>
    <% }%>
    <br>
    <br>

    <h4>Referinte:</h4>
    [1] (2018, March 15) Common Types of Cybersecurity Attacks A look at the various types of hacking techniques [Web blog post]. Retrived 02. January, 2019 from https://www.rapid7.com/fundamentals/types-of-attacks/ <br>
    [2] ACORN / Attacks on computer systems [web blog post]. Retrived 01. January, 2019 from https://www.acorn.gov.au/learn-about-cybercrime/attacks-computer-systems <br>
    [3] (2018, February 02) Difference Between Active and Passive Attacks [web blog post]. Retrived 30. December, 2018 from https://techdifferences.com/difference-between-active-and-passive-attacks.html <br>
    [4] Surface, Jeanne L. "Not all threats are equal." The Clearing House: A Journal of Educational Strategies, Issues and Ideas 84.4 (2011). <br>

</div>
</body>