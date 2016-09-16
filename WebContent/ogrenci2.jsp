<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.fatih.Ogrenci , java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
	List<Ogrenci> ogrenci=new ArrayList<>();

	ogrenci.add(new Ogrenci(1,"ferdi","tayfur",true));
	ogrenci.add(new Ogrenci(2,"hakan","taşıyan",false));
	ogrenci.add(new Ogrenci(3,"müslüm","gürses",true));
	ogrenci.add(new Ogrenci(4,"adnan","şenses",false));
	
	pageContext.setAttribute("ogr", ogrenci);
	
%>

<table border="1">

<tr>
<th>Öğrenci No</th>
<th>Ad</th>
<th>Soyad</th>
<th>Ders Geçme</th>

</tr>

<c:forEach var="ogrTemp" items="${ogr}">
	<tr>
	<td>${ogrTemp.ogrenciNo}</td>
	<td> ${ogrTemp.ad}</td>
	<td> ${ogrTemp.soyad }</td>
	<td>
		<c:if test="${ogrTemp.dersGecme }">
			<span style="background-color: green"><b>Geçti</b></span>
		</c:if>
		
		<c:if test="${not ogrTemp.dersGecme }">
			<span style="background-color: red"><b>Kaldı</b></span>
		</c:if>
	
	</td>
	</tr>

</c:forEach>




</table>




</body>
</html>