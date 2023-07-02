<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/yourcode.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center">Welcome to Product App</h1>
				<table class="table" style="margin-top: 15px;">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Product ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col" style="font-weight: bold;">&#8377; Product
								Price</th>
							<th scope="col">Action</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${product}" var="p">
							<tr>
								<th scope="row">TECH- ${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description}</td>
								<td style="font-weight: bold;">&#8377;${p.price}</td>
								<td>
								<a href="delete/${p.id}"><i
										style="font-size: 20px;" class="fas fa-trash text-danger"></i></a>
								<a href="update/${p.id}"><i
										style="font-size: 20px;" class="fas fa-pen-nib text-primary"></i></a>
										
										</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>



				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-primary">Add
						Product</a>
				</div>

			</div>
		</div>
	</div>


</body>
</html>