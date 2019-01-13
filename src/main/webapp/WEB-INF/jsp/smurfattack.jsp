<!DOCTYPE html>
<html lang="en" dir="ltr">
<%@ page import = "org.apache.poi.openxml4j.opc.OPCPackage"%>
<%@ page import = "org.apache.poi.xwpf.extractor.XWPFWordExtractor"%>
<%@ page import = "org.apache.poi.xwpf.usermodel.XWPFDocument"%>
<%@ page import="java.io.FileInputStream" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>

<head>
    <meta charset="utf-8">
    <title>About</title>

    <link href="../css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
<select data-placeholder="Choose a Language..." onchange="location = this.value;" >
    <option value="smurfattack">  English</option>
    <option value="smurfattackDE">German</option>
    <option value="smurfattackRO">Romanian</option>
</select>
<h1>Phishing</h1>


<div class="topnav">
    <a href="index">Home</a>
    <a href="about">About</a>

    <input type="text" placeholder="Search keywords, text..">
    <button type="searchbutton" name="button">search</button>
</div>

<br>

<div class = "descrTopics" >
    <%
        FileInputStream fis = new FileInputStream("Smurfattack_en.docx");
        XWPFDocument xdoc = new XWPFDocument(OPCPackage.open(fis));
        XWPFWordExtractor extractor = new XWPFWordExtractor(xdoc);
        String string = extractor.getText();
        String[] data = string.split("\n");
        for(int i = 0; i< data.length; i++){

            out.println(data[i]);%>

            <br>
      <%
        }
       // out.println(extractor.getText());
    %>
    <h4>References:</h4>
    1. <br>
    2. <br>
</div>
</body>