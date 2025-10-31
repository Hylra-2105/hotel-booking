<%-- 
    Document   : create
    Created on : Jun 23, 2025, 4:28:05 PM
    Author     : Pham Mai The Ngoc - CE190901
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Discount</title>
        <link href="<%= request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%= request.getContextPath()%>/assets/css/general.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="body-wrapper">
            <%@ include file="/WEB-INF/include/header.jsp" %>

            <main class="min-vh-100 d-flex flex-column justify-content-center align-items-center">
                <c:choose>
                    <c:when test="${param.error == 'missing-params'}">
                        <p class="alert alert-danger text-center">
                            Missing parameters in the form. Please try again.
                        </p>
                    </c:when>
                    <c:when test="${param.error == 'name-exist'}">
                        <p class="alert alert-danger text-center">
                            The room name you entered is already exist. Please edit it or try another name.
                        </p>
                    </c:when>
                    <c:when test="${param.error == 'number-format'}">
                        <p class="alert alert-danger text-center">
                            Try enter only positive numbers in these following field: Price Per Night, Beds, Capacity.
                        </p>
                    </c:when>
                    <c:when test="${param.error == 'missing-image'}">
                        <p class="alert alert-danger text-center">
                            A room type must have an image. Please try again.
                        </p>
                    </c:when>
                </c:choose>
                <form action="discounts" method="post"
                      class="bg-white p-5 rounded shadow-lg w-100" style="max-width: 600px;">

                    <h2 class="mb-4 text-center text-dark">Create New Discount</h2>


                    <div class="mb-3">
                        <label for="code" class="form-label fs-5 fw-semibold">Discount Code</label>
                        <input type="text" id="code" name="code" class="form-control form-control-lg" required>
                    </div>

                    <div class="mb-3">
                        <label for="quantity" class="form-label fs-5 fw-semibold">Quantity</label>
                        <input type="number" id="quantity" name="quantity" class="form-control form-control-lg" min="1" required>
                    </div>

                    <div class="mb-3">
                        <label for="sale-off" class="form-label fs-5 fw-semibold">Sale Off</label>
                        <input type="number" step="0.01" id="sale-off" name="sale-off"
                               class="form-control form-control-lg" min="1" required>
                    </div>

                    <!-- Submit Button -->
                    <div class="text-end">
                        <input type="hidden" name="action" value="create">
                        <button type="submit" class="btn btn-primary btn-lg px-4 rounded-3">Create</button>
                        <a href="./discounts" class="btn btn-secondary btn-lg rounded-3">Cancel</a>
                    </div>
                </form>
            </main>

            <%@ include file="/WEB-INF/include/footer.jsp" %>
        </div>

        <script src="<%= request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
    </body>

</html>



