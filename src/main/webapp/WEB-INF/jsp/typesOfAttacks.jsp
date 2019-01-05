<!DOCTYPE html>
<html lang="en" dir="ltr">
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
    <option value="typesOfAttacks">  English</option>
    <option value="typesOfAttacksDE">German</option>
    <option value="typesOfAttacksRO">Romanian</option>
</select>
<h1>Types of attacks and threats</h1>


<div class="topnav">
    <a href="index">Home</a>
    <a href="about">About</a>
    <a href="#questions">FAQ</a>
    <input type="text" placeholder="Search keywords, text..">
    <button type="searchbutton" name="button">search</button>
</div>

<br>

<div class = "descrTopics" >
    <%
        FileInputStream fis = new FileInputStream("TypesOfAttacks_en.docx");
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
                    <th>BASIS FOR COMPARISON</th>
                    <th>ACTIVE ATTACKS</th>
                    <th>PASSIVE ATTACKS</th>
                </tr>
                <tr>
                    <td>Basic</td>
                    <td>Active attack tries to change the system resources or affect their operation.</td>
                    <td>Passive attack tries to read or make use of information from the system but
                        does not influence system resources.</td>
                </tr>
                <tr>
                    <td>Modification in the information</td>
                    <td>Occurs</td>
                    <td>does not take place</td>
                </tr>
                <tr>
                    <td>Harm to the system</td>
                    <td>Always causes damage to the system</td>
                    <td>Do not cause any harm</td>
                </tr>
                <tr>
                    <td>Threat to</td>
                    <td>Integrity and availability</td>
                    <td>Confidentiality</td>
                </tr>
                <tr>
                    <td>Attack awareness</td>
                    <td>The entity (victim) gets informed about the attack</td>
                    <td>The entity is unaware of the attack.</td>
                </tr>
                <tr>
                    <td>Task performed by the attacker</td>
                    <td>The transmission is captured by physically controlling the portion of a link</td>
                    <td>Just need to observe the transmission.</td>
                </tr>
                <tr>
                    <td>Emphasis is on</td>
                    <td>Detection</td>
                    <td>Prevention</td> <br>
                </tr>
            </table>
            <br>
            <% for(int i = 3; i<data.length; i++) {
                out.println(data[i]); %> <br>
            <% }%>
    <br>
    <br>

    <h4>References:</h4>
    [1] (2018, March 15) Common Types of Cybersecurity Attacks A look at the various types of hacking techniques [Web blog post]. Retrived 02. January, 2019 from https://www.rapid7.com/fundamentals/types-of-attacks/ <br>
    [2] ACORN / Attacks on computer systems [web blog post]. Retrived 01. January, 2019 from https://www.acorn.gov.au/learn-about-cybercrime/attacks-computer-systems <br>
    [3] (2018, February 02) Difference Between Active and Passive Attacks [web blog post]. Retrived 30. December, 2018 from https://techdifferences.com/difference-between-active-and-passive-attacks.html <br>
    [4] Surface, Jeanne L. "Not all threats are equal." The Clearing House: A Journal of Educational Strategies, Issues and Ideas 84.4 (2011). <br>

</div>
</body>