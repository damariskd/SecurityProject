<!DOCTYPE html>
<html lang="de" dir="ltr">
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
<select data-placeholder="Choose a Language..." onchange="location = this.value;" >
    <option value="typesOfAttacksDE">German</option>
    <option value="typesOfAttacks">  English</option>
    <option value="typesOfAttacksRO">Romanian</option>
</select>
<h1>Arten von Angriffen und Bedrohungen</h1>


<div class="topnav">
    <a href="indexDE">Startseite</a>
    <a href="aboutDE">Uber uns</a>
    <a href="#questions">FAQ</a>
    <input type="text" placeholder="Search keywords, text..">
    <button type="searchbutton" name="button">search</button>
</div>

<br>

<div class = "descrTopics" >
    <%
        FileInputStream fis = new FileInputStream("TypesOfAttacks_de.docx");
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
            <th>BASIS FÜR DEN VERGLEICH</th>
            <th>AKTIVER ANGRIFF</th>
            <th>PASSIVER ANGRIFF</th>
        </tr>
        <tr>
            <td>Grundlegend</td>
            <td>Aktive Angriffe versuchen, die Systemressourcen zu ändern oder ihren Betrieb zu beeinflussen.</td>
            <td>Passive Angriffe versuchen, Informationen aus dem System zu lesen oder zu verwenden,
                beeinflussen jedoch nicht die Systemressourcen.</td>
        </tr>
        <tr>
            <td>Änderung der Informationen</td>
            <td>Tritt ein</td>
            <td>Tritt nicht ein</td>
        </tr>
        <tr>
            <td>Schaden für das System</td>
            <td>Schädigt das System immer.</td>
            <td>Verursache keinen Schaden.</td>
        </tr>
        <tr>
            <td>Drohen zu</td>
            <td>Integrität und Verfügbarkeit</td>
            <td>Vertraulichkeit</td>
        </tr>
        <tr>
            <td>Angriffsbewusstsein</td>
            <td>Die Entität (das Opfer) wird über den Angriff informiert.</td>
            <td>Die Entität kennt den Angriff nicht.</td>
        </tr>
        <tr>
            <td>Aufgabe des Angreifers</td>
            <td>Die Übertragung wird erfasst, indem der Teil einer Verbindung physisch gesteuert wird.</td>
            <td>Sie müssen nur die Übertragung beobachten.</td>
        </tr>
        <tr>
            <td>Der Schwerpunkt liegt auf</td>
            <td>Erkennung</td>
            <td>Verhinderung</td> <br>
        </tr>
    </table>
    <br>
    <% for(int i = 3; i<data.length; i++) {
        out.println(data[i]); %> <br>
    <% }%>
    <br>
    <br>

    <h4>Bezug:</h4>
    [1] (2018, March 15) Common Types of Cybersecurity Attacks A look at the various types of hacking techniques [Web blog post]. Retrived 02. January, 2019 from https://www.rapid7.com/fundamentals/types-of-attacks/ <br>
    [2] ACORN / Attacks on computer systems [web blog post]. Retrived 01. January, 2019 from https://www.acorn.gov.au/learn-about-cybercrime/attacks-computer-systems <br>
    [3] (2018, February 02) Difference Between Active and Passive Attacks [web blog post]. Retrived 30. December, 2018 from https://techdifferences.com/difference-between-active-and-passive-attacks.html <br>
    [4] Surface, Jeanne L. "Not all threats are equal." The Clearing House: A Journal of Educational Strategies, Issues and Ideas 84.4 (2011). <br>

</div>
</body>