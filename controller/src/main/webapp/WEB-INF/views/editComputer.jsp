<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Computer Database</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./static/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="./static/css/font-awesome.css" rel="stylesheet" media="screen">
<link href="./static/css/main.css" rel="stylesheet" media="screen">
</head>
<body>
    	<header class="navbar navbar-inverse navbar-fixed-top">
				<div class="container">
					<a class="navbar-brand" href="dashboard"><spring:message code="app.title"/></a>
				
				<div class="collapse navbar-collapse navbar-right col-lg-2 col-md-3">
					<a class="navbar-brand" href="${pageContext.request.contextPath}/listUser">List user</a>
				</div>
				
				<div>
					<form id="logout" action="${pageContext.request.contextPath}/login?logout=" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</div>
				
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<div class="collapse navbar-collapse navbar-right col-lg-2 col-md-3">
						<a class="navbar-brand"
							href="login?logout">Logout</a>
							</div>
					</c:if>
				
				<div class="collapse navbar-collapse navbar-right col-lg-2 col-md-3">
					<a class="navbar-brand" href="?language=en">English</a>|<a class="navbar-brand" href="?language=fr">French</a>
				</div>
				
				</div>
			
	</header>
    <section id="main">
        <div class="container">
            <div class="row">
                <div class="col-xs-8 col-xs-offset-2 box">
                    <div class="label label-default pull-right">
                        id: ${idComputer}
                    </div>
                    <h1>Edit Computer</h1>

                    <form action="editComputer" method="POST">
                        <input type="hidden" value="${idComputer}" id="id" name= "id"/> <!-- TODO: Change this value with the computer id -->
                        <fieldset>
                            <div class="form-group">
                                <label for="computerName">Computer name</label>
                                <input type="text" class="form-control" id="name" value="${name}" name= "name" placeholder="Computer name">
                            </div>
                            <div class="form-group">
                                <label for="introduced">Introduced date</label>
                                <input type="date" class="form-control" id="introduced" value="${introduced}" name="introduced" placeholder="Introduced date">
                            <c:if test = "${erreurIntroduced != null}">      
									<div class="alert alert-danger" role="alert">${ erreurIntroduced }</div>
								</c:if>
                            </div>
                            <div class="form-group">
                                <label for="discontinued">Discontinued date</label>
                                <input type="date" class="form-control" id="discontinued" value="${discontinued}" name="discontinued" placeholder="Discontinued date">
                            <c:if test = "${erreurDiscontinued != null}">      
  										<div class="alert alert-danger" role="alert">${ erreurDiscontinued }</div>  
									</c:if>
                            </div>
                            <span class="erreur">${ erreur }</span>
                            <div class="form-group">
                                <label for="companyId">Company</label>
                                <select
									class="form-control" id="companyId" name="companyId">
									<option value="-1" selected="selected">${nameCompany}</option>
									<c:forEach var="element" items="${ list }">
										<option value="${element.getId()}">${element.getName()}</option>
									</c:forEach>
								</select>
                            </div>            
                        </fieldset>
                        <div class="actions pull-right">
                            <input type="submit" value="Edit" class="btn btn-primary">
                            or
                            <a href="dashboard" class="btn btn-default">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>