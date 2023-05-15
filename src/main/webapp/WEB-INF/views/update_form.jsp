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

	<form action="${pageContext.request.contextPath}/handle-product" method="post"
		class="container col-md-4 my-5 py-3 bg-light"
		style="border-radius: 5%;">
		<h3 class="text-center">Change Product Details</h3>
		<hr>
		<div class="" style="display: grid; align-items: center;">
			<div class="form-outline mb-2">
			<input type="hidden" id="id" class="form-control "
					name="id"
					placeholder="Enter Product Id"
					value="${product.id}"
					 />
				<label class="form-label " for="name" aria-required="true">Product
					Name</label> <input type="text" id="name" class="form-control "
					name="name"
					placeholder="Enter Product Name"
					value="${product.name}"
					 />

			</div>

			<!-- Description input -->
			<div class="form-outline mb-2">
				<label class="form-label" for="description" aria-required="true">Product
					Description</label>

				<textarea class="form-control" name="description" id="description" rows="5" cols="5"
				placeholder="Enter Product Description">${product.description}</textarea>

			</div>

			<!-- Price input -->
			<div class="form-outline mb-2">
				<label class="form-label" for="price" aria-required="true">Product
					Price</label> <input type="number" id="price" class="form-control"
					name="price" placeholder="Enter Product Price"
					value="${product.price}" />

			</div>

			<!-- Submit button -->
			<div class="container text-center mt-4">
				<button type="submit" class="btn btn-warning ">Update</button>
				<a href="${pageContext.request.contextPath} " class="btn btn-outline-danger">Back</a>
			</div>
		</div>
	</form>
</body>
</html>