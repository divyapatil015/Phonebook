<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="Component/allCSS.jsp"%>
</head>
<body style="background-color: #ebf2eb">
	<%@include file="Component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Login Page</h4>

						<%
						String invalidMsg = (String) session.getAttribute("invalidMsg");
						if (invalidMsg != null) {
						%>

						<p class="text-danger text-center">
							<%=invalidMsg%></p>
						<%
						session.removeAttribute("invalidMsg");
						}
						%>

						<%
						String logMsg = (String) session.getAttribute("logMsg");
						if (logMsg != null) {
						%>

						<p class="text-success text-center">
							<%=logMsg%></p>
						<%
						session.removeAttribute("logMsg");
						}
						%>
						<form action="login" method="post">

							<div class="form-group">
								<label for="exampleInputPassword1">Email address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputPassword1">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="password" type="password" class="form-control"
									id="exampleInputPassword1">
							</div>


							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
		<div style="margin-top: 180px">
			<%@include file="Component/footer.jsp"%>>

		</div>
</body>

</html>