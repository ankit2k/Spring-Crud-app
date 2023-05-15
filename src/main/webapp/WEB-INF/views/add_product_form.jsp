<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
</head>
<body>


	<!-- As a heading -->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid justify-content-center">
			<span class="navbar-brand mb-0 h1"><c:out value="${title}">Product CRUD APP</c:out></span>
		</div>
	</nav>

	<form action="handle-product" method="post"
		class="container col-md-4 my-5 py-3 bg-light shadow"
		style="border-radius: 5%;">
		<h3 class="text-center">Fill the Product Details</h3>
		<hr>
		<div class="" style="display: grid; align-items: center;">
			<div class="form-outline mb-2">
				<label class="form-label " for="name" >Product
					Name</label> <input type="text" id="name" class="form-control "
					name="name"
					placeholder="Enter Product Name"
					required
					 />

			</div>

			<!-- Email input -->
			<div class="form-outline mb-2">
				<label class="form-label" for="description" >Product
					Description</label>

				<textarea class="form-control" name="description" id="description" rows="5" cols="5"
				placeholder="Enter Product Description" required
				 ></textarea>

			</div>

			<!-- Password input -->
			<div class="form-outline mb-2">
				<label class="form-label" for="price"  >Product
					Price</label> <input type="number" id="price" class="form-control"
					name="price" placeholder="Enter Product Price" 
					required="true"/>

			</div>

			<!-- Submit button -->
			<div class="d-flex justify-content-center gap-3 mt-4">
				<button type="submit" class="btn btn-primary px-4  ">Add</button>
				<a href="${pageContext.request.contextPath} " class="btn btn-outline-danger px-4">Back</a>
			</div>
		</div>
	</form>
</body>
</html>