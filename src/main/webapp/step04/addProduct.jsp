<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<jsp:useBean id="productDAO" class = "dao.ProductRepository" scope = "session"></jsp:useBean>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<style>
    	input[type="file"]{
    	opacity:0}
    	.file-label{
    	backgoround-color:lightgray;
    	padding: 10px 20px;
    	border-radius: 5px;
    	cursor: pointer;}
    	#file-name{
    	position:relative;
    	top: -100px;
    	right: -180px;
    	display: block;}
    </style>
    <script>
    function updateFileName(){
    	const input = document.getElementById("background")
    	const fileNameLabel = document.getElementById("file-name")
    	if(input.files.length > 0){
    		fileNameLabel.textContent = input.files[0].name;
    		
    	}else{
    		fileNameLabel.textContent = "선택된 파일 없음"
    	}
    }
    	function changeLanuage(lang){
    		const fileLabelText = document.getElementById("file-label-text");
    		const fileNameLabel = document.getElementById("file-name");
    		
    		if(lang === "ko"){
    			fileLabelText.textContent = "파일 선택"
        		fileLabelText.textContent = "선택된 파일 없음"
    		}else{
    			fileLabelText.textContent = "Choose File"
            	fileLabelText.textContent = "No file chosen"
    		}
    	}
    </script>
  <head>
    <title>Clark - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="../resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/animate.css">
    
    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../resources/css/magnific-popup.css">

    <link rel="stylesheet" href="../resources/css/aos.css">

    <link rel="stylesheet" href="../resources/css/ionicons.min.css">
    
    <link rel="stylesheet" href="../resources/css/flaticon.css">
    <link rel="stylesheet" href="../resources/css/icomoon.css">
    <link rel="stylesheet" href="../resources/css/style.css">
  </head>
<body>

	<fmt:setLocale value = '<%= request.getParameter("language") %>'/>
 	<fmt:bundle basename = "bundle.message">
	  <!-- header include-->
	<%@ include file = "navi.jsp" %>

<div class="container mt-5 pt-5">
   <div class="jumbotron">
		<form class="needs-validation" action="./processAddProduct.jsp" method="post" 
		name ="registerNewProduct"enctype = "multipart/form-data" novalidate >
		<div class="row m-3">
				<div class="col-6">
					<h1><fmt:message key="title" /></h1>
					<br />
				</div>
			<div class="col-6">
			<h3>
				<a href="?language=ko">Korean</a> |
				<a href="?language=en">English</a>
			</h3>
		</div>
		</div>
		
  <div class="form-row">
  test
    <div class="col-md-4 mb-3">
      <label for="addProduct"><fmt:message key="productId" /></label>
      <input type="text" class="form-control" id="addProduct" name="addProduct" >
    </div>
    <div class="col-md-4 mb-3">
      <label for="gameName"><fmt:message key="pname" /></label>
      <input type="text" class="form-control" id="gameName" name ="gameName">
    </div>
    <div class="col-md-4 mb-3">	
      <label for="programerName"><fmt:message key="programName" /></label>
      <input type="text" class="form-control" id="programerName" name = "programerName" >
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="genre"><fmt:message key="description" /></label>
      <input type="text" class="form-control" id="genre" name="genre" >
    </div>
    
    <div class="col-md-3 mb-3">
      <label for="background" class="file-label"><fmt:message key="filename" /><span id="file-label-text"></span></label>
      <input type="file" class="form-control" id="background" name="background" onchange="updateFileName()">
      <span id="file-name"><fmt:message key="file" /></span>
     
    </div>
  </div>
  <div class="row m-3">
		<div class="col-6">
			<input type="button" class="btn btn-primary mb-3 btn-block" value=<fmt:message key="send" /> onclick="form_check_addProduct()">
		</div>
	</div>
	
</form>
  
   </div>
   
</div>

<!-- footer include -->
    <%@ include file = "footer.jsp" %>
  
  </fmt:bundle>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>



  <script src="../resources/js/jquery.min.js"></script>
  <script src="../resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../resources/js/popper.min.js"></script>
  <script src="../resources/js/bootstrap.min.js"></script>
  <script src="../resources/js/jquery.easing.1.3.js"></script>
  <script src="../resources/js/jquery.waypoints.min.js"></script>
  <script src="../resources/js/jquery.stellar.min.js"></script>
  <script src="../resources/js/owl.carousel.min.js"></script>
  <script src="../resources/js/jquery.magnific-popup.min.js"></script>
  <script src="../resources/js/aos.js"></script>
  <script src="../resources/js/jquery.animateNumber.min.js"></script>
  <script src="../resources/js/scrollax.min.js"></script>
  
  <script src="../resources/js/main.js"></script>
  <!-- 유효성 검증 js -->
  <script src="../resources/js/validation.js?v=2"></script>    

  </body>
</html>