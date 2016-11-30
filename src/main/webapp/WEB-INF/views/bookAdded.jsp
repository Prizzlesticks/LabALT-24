<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/Main.css"/>
	<title>Enrollment Request</title>
	<script> DAO.addBook</script>
</head>
<body class="bookadded">
<h1>
	Your Book Was Added
</h1>

<p> The Title is is:
 ${ Title } </p>
 
 <p>
The Author is:  ${ Author }
 </p>
 <p>
 The Number of Copies Sold is:  ${ Sales }
 </p>
 <p>
 The Imprint is: ${Imprint}
 </p>
 <p>
 The Publisher is: ${Publisher}
 </p>
 <p>
 The Year Published is: ${YearPublished}
 </p>
 <p>
 The Genre is: ${Genre}
 </p>
 
 
</body>
</html>
 