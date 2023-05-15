<html>
<head>
<%@include file="./base.jsp"%>
</head>
<body>


	<div class="container mt-4">
		<div class="row">
			<div class="col-md-10 mx-auto ">
				<h1 class="text-center mb-4">Welcome to Product App</h1>
				<div class="border border-light m-2 p-2 rounded shadow ">
				<table class="table ">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<%int i=1; %>
					<c:forEach items="${products}" var="p">
						<tr>
							<th scope="row"><%=i%> </th>
							<td>${p.name}</td>
							<%i++; %>
							<td>${p.description}</td>
							<td>&#8377 ${p.price}</td>
							<td> 
							<a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger " style="font-size:25px;margin-right:8px;"></i></a>
							<a href="update/${p.id}"><i class="fa-sharp fa-solid fa-file-pen" style="font-size:25px;"></i></a>
							
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="container text-center mt-4">
			<a href="add-product" class="btn btn-success rounded-pill shadow-sm">Add Product</a>
			
			</div>

			</div>
		</div>
	</div>

</body>
</html>
