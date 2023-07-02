<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</style>
</head>
<body>


	<form action="handle-product" method="post">

		<div>
			<h2 class="text-center" style="margin-top: 20px">Fill the
				Product Detail</h2>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1"
			style="margin-left: 12px">
			Product Name</label>
				 <input type="text"
				  class="form-control"
				style="margin-left: 12px" 
				id="exampleInputEmail1"
				aria-describedby="emailHelp" 
				name="name"
				placeholder="Enter Product name">
		</div>
		 <div class="form-group">
    <label for="exampleFormControlTextarea1" style="margin-left: 12px">Product Description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" style="margin-left: 12px"  name="description" placeholder="Enter the Product Description"  rows="5"></textarea>
  </div>
		<div class="form-group">
			<label for="exampleInputPassword1" 
			style="margin-left: 12px">
			Product	Price</label> 
			<input type="text"
			 style="margin-left: 12px"
				class="form-control" 
				id="exampleInputPassword1"
				name="price"
				placeholder=" Enter Product Price">
		</div>
			

			<a href="${pageContext.request.contextPath }/home" 
			class="btn btn-outline-danger" style="margin-left: 25px">
				Back
			</a>
			
		<button style="margin-left: 50px" type="submit"
			class="btn btn-outline-primary">Submit</button>
			
		<button type="reset"
			class="btn btn-outline-primary">Reset</button>
			
			
	</form>

</body>
</html>