<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="Component/allCSS.jsp"%>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>

	<%
	if (user == null) {
		session.setAttribute("invalidMsg", "Please Login..");
		response.sendRedirect("login.jsp");
	}
	%>
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Add Contact Page</h4>

						<%
						String sucssMsg = (String) session.getAttribute("succMsg");
						String errorMsg = (String) session.getAttribute("failedMsg");
						if (sucssMsg != null) {
						%>
						<p class="text-success text-center"><%=sucssMsg%></p>
						<%
						}
						if (errorMsg != null) {
						%>
						<p class="text-danger text-center"><%=errorMsg%></p>
						<%
						session.removeAttribute("failedMsg");
						}
						%>

						<form action="addContact" method="post">

							<%
							if (user != null) {
							%>

							<input type="hidden" value="<%=user.getId()%> " name="userid">

							<%
							}
							%>

							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Email address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputPassword1">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Phone No.</label> <input
									name="phno" type="number" class="form-control"
									id="exampleInputPassword1">
							</div>

							<div class="form-group">
								<textarea rows="3" cols="" placeholder="Enter About"
									name="about" class="form-control">
							</textarea>

							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">Save
									Contact</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
</body>
</html>