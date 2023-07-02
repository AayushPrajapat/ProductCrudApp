<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>

</head>
<body>


	<form action="${pageContext.request.contextPath}/updateHandle"
		method="post">

		<div>
			<h2 class="text-center" style="margin-top: 20px">Change Product
				Detail</h2>
		</div>
		<div class="form-group">
			<label style="margin-left: 12px">Product Id</label> <input
				class="form-control" style="margin-left: 12px" type="text" name="id"
				value="${product.id}"> <label for="exampleInputEmail1"
				style="margin-left: 12px"> Product Name</label> <input type="text"
				class="form-control" style="margin-left: 12px"
				id="exampleInputEmail1" aria-describedby="emailHelp" name="name"
				value="${product.name }" placeholder="Enter Product name">
		</div>
		<div class="form-group">
			<label for="exampleFormControlTextarea1" style="margin-left: 12px">Product
				Description</label>
			<textarea class="form-control" id="exampleFormControlTextarea1"
				style="margin-left: 12px" name="description"
				<%--       value="${singleProduct.description }"  --%>
      placeholder="Enter the Product Description"
				rows="5">${product.description } </textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1" style="margin-left: 12px">
				Product Price</label> <input type="text" style="margin-left: 12px"
				class="form-control" id="exampleInputPassword1" name="price"
				value="${product.price }" placeholder=" Enter Product Price">
		</div>


		<a href="${pageContext.request.contextPath}/home"
			class="btn btn-outline-danger" style="margin-left: 50px"> Back </a>

		<button style="margin-left: 50px" type="submit"
			class="btn btn-outline-primary">Update</button>

		<!-- <button type="reset" class="btn btn-outline-primary">Reset</button> -->


	</form>

</body>
</html>