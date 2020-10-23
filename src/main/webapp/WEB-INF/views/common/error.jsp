<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Page Error</title>
</head>
<body>
	
	<div id="wrapper">
		<div id="page-wrapper">
			<div align="center">
				<c:out value='${msg }'/>
			</div>
		</div>
	</div>
</body>
</html>