<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- SITE TITTLE -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Edit Annonce</title>

    <!--  Bootstrap-->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>

    <!-- Template Main CSS File -->
    <link href="assets/css/list-services.css" rel="stylesheet"/>
    <link href="assets/css/style.css" rel="stylesheet"/>

    <link rel="stylesheet" href="assets/vendor/fonts/ionicons.min.css"/>
</head>

<body class="body-wrapper">
<!--==================================
=            User Profile            =
===================================-->

<%@include file="../components/header.jsp"%>

<section class="user-profile section">
    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1 col-lg-3 offset-lg-0">
                <div class="sidebar">
                    <!-- User Widget -->
                    <div class="widget user">
                        <!-- User Image -->
                        <div class="image d-flex justify-content-center">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Tesla_circa_1890.jpeg/220px-Tesla_circa_1890.jpeg"
                                 alt="" class="icon-image"/>
                        </div>
                        <!-- User Name -->
                        <h5 class="text-center">Jonas Tesla</h5>
                    </div>
                </div>
            </div>

            <div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
                <!-- Edit Personal Info -->
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="widget personal-info">
                            <h3 class="widget-header user">Edit Annonce Information</h3>
                            <form action="updateForUser.annonce?annonceId=${annonce.id}" method="post">
                                <!-- Title -->
                                <div class="form-group">
                                    <label for="title">Titre</label>
                                    <input type="text" class="form-control" id="title" value="${annonce.titre}" name="titre"/>
                                </div>
                                <!-- Description -->
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea type="text" class="form-text p-1" id="description" rows="6"
                                              cols="50" name="description">${annonce.description}</textarea>
                                </div>
                                <!-- File chooser -->
                                <div class="form-group choose-file d-inline-flex">
                                    <i class="fa fa-user text-center px-3"></i>
                                    <input
                                            type="file"
                                            class="form-control-file mt-2 pt-1"
                                            id="input-file"
                                            name="image"
                                    />
                                </div>
                                <div style="color: red;" class="m-1">
                                    <c:if test="${errorMessage != null}">
                                        ${errorMessage}
                                    </c:if>
                                </div>
                                <!-- Checkbox -->
                                <div class="form-check">
                                    <label class="form-check-label" for="hide-profile">
                                        <input
                                                class="form-check-input mt-1"
                                                type="checkbox"
                                                value=""
                                                id="hide-profile"
                                        />
                                        Agree to terms and conditions
                                    </label>
                                </div>

                                <!-- Submit button -->
                                    <button class="btn btn-primary" type="submit">Save My Changes</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Vendor JS Files -->
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
</body>
</html>
