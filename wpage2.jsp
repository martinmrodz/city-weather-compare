<%@ page import="com.grossmont.ws.WeatherServiceManager"%>
<%@ page import="com.grossmont.ws.Weather"%>
<%@ page import="com.grossmont.ws.Weather_main"%>
<html>
<%
	WeatherServiceManager city = new WeatherServiceManager();
	String sCity = request.getParameter("cityone");
	sCity = sCity.replaceAll(" ","%20");
	city.callWeatherWebService(sCity);
%>
<a href="wpage1.jsp">back to submit page</a>
	<br>
	<br>
<table>
		<tr>
			<td>
				<%out.println(city.getCityName());%>
				Current temp:
				<%out.println(city.getCurrentTemp());%>
		</tr>
		<tr>
			<td>
				<% out.println(city.getCityName());%>
				Highest temp:
				<% out.println(city.getHighTemp());%>
			</td>
		</tr>
		<tr>
			<td>
				<% out.println(city.getCityName());%>
				Lowest temp:
				<% out.println(city.getLowTemp());%>
			</td>
		</tr>
</table>

<body>

</body>
</html>