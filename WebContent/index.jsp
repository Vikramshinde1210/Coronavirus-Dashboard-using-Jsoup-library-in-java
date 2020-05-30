<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.jsoup.Jsoup"%>
    
<%@ page import="org.jsoup.nodes.Document"%>
<%@ page import="org.jsoup.select.Elements"%>
<!DOCTYPE html>
<html>
<head>
<script data-ad-client="ca-pub-4438533133351128" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<meta charset="ISO-8859-1">
<title>Coronavirus Updates</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style type="text/css">
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 100%;
  background: #f1f1f1;
}


form.example::after {
  content: "";
  clear: both;
  display: table;
}

</style>
</head>
<body>
<div class="container p-3 text-center">
<h1>Conoravirus Dashboard</h1>
</div>
<header class="w3-display-container w3-content w3-center" style="max-width:1500px">
  <img class="w3-image" src="https://img.medscape.com/thumbnail_library/is_200224_earth_globe_coronavirus_800x450.jpg" alt="corona" width="1500" height="600">
    </div>
  

<br>


<div class="container p-3 text-center">
<h3>Total Cases Worldwide:</h3>
<%
String url1="https://www.worldometers.info/coronavirus/";
Document doc1=Jsoup.connect(url1).get();
//maincounter-wrap
Elements elements1= doc1.select("#maincounter-wrap");
out.println(elements1);

//elements.forEach((e)->{
	//String text=e.select("h1").text();
	//String count=e.select(".maincounter-number>span").text();
	%>
</div>

<hr>
<h3>View By Country:</h3>
<form class="example" action="index.jsp" method="post">
  
<input type="text" placeholder="Enter Country Name" name="search" required list="names">
               <datalist id="names">
               <option value="USA">
               <option value="spain">
               <option value="italy">
               <option value="germany">
               <option value="france">
               <option value="china">
               <option value="iran">
               <option value="UK">
               <option value="turkey">
               <option value="switzerland">
               <option value="belgium">
               <option value="netherlands">
               <option value="canada">
               <option value="austria">
               <option value="portugal">
               <option value="brazil">
               <option value="S.korea">
               <option value="israel">
               <option value="sweden">
               <option value="australia">
               <option value="norway">
               <option value="russia">
               <option value="ireland">
               <option value="czechia">
               <option value="denmark">
               <option value="chile">
               <option value="poland">
               <option value="romania">
               <option value="malaysia">
               <option value="india">
               <option value="ecuador">
               <option value="philippines">
               <option value="japan">
               <option value="pakistan">
               <option value="luxembourg">
               <option value="saudi arabia">
               <option value="indonesia">
               <option value="thailand">
               <option value="finaland">
               <option value="serbia">
               <option value="mexico">
               <option value="panama">
               <option value="peru">
               <option value="dominican republic">
               <option value="greece">
               <option value="south africa">
               <option value="uae">
               <option value="iceland">
               <option value="argentina">
               <option value="colombia">
               <option value="qatar">
               <option value="singapore">
               <option value="algeria">
               <option value="ukraine">
               <option value="croatia">
               <option value="estonia">
               <option value="egypt">
               <option value="new zealand">
               <option value="iraq">
               <option value="hong kong">
              
               <option value="kuwait">
               <option value="taiwan">
               <option value="afganistan">
               <option value="oman">
               <option value="vietnam">
               <option value="sri lanka">
               <option value="bangladesh">
               <option value="syria">
               <option value="fiji">
               <option value="zimbabwe">
               <option value="nepal">
               
               
               
               </datalist>
                
        
  <br>
  <br>
  <button type="submit" onchange="this.form.submit()">Search</button>
</form>
<br>
</div>
<div class="container p-3 text-center">
<%
StringBuffer br=new StringBuffer();
String url="https://www.worldometers.info/coronavirus/country/"+request.getParameter("search")+"/";
Document doc=Jsoup.connect(url).get();
//maincounter-wrap
Elements elements= doc.select("#maincounter-wrap");
if(elements.isEmpty())
{

	out.println("No Data Found");
	
}
out.println(elements);

//elements.forEach((e)->{
	//String text=e.select("h1").text();
	//String count=e.select(".maincounter-number>span").text();
	%>
</div>

<div class="container p-3 text-center">
<footer>
  <p>Created by: Vikram Shinde</p>
  <p>Contact information: <a href="mailto:shindevikram1210@gmail.com">shindevikram1210@gmail.com</a>.</p>
</footer>
</div>
</body>
</html>