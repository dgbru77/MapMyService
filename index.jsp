<%@page import="map.beans.FeedBack"%>
<%@page import="java.util.ArrayList"%>
<%@page import="map.dao.CommonDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Map My Service</title>
  <%@ include file="/common/common_css.html" %>
  <%@ include file="/common/header.html" %>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background-color: #0B1120; /* Dark base background */
      color: #f1f5f9;
      margin: 0;
    }

/*     .hero {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 80px 20px;
      background: linear-gradient(to right, #1e293b, #0f172a); /* Dark gradient */
      color: #ffffff;
      text-align: center;
      box-shadow: 0 0 30px rgba(56, 189, 248, 0.3); /* subtle glow */
    }

    .hero h1 {
      font-size: 3rem;
      font-weight: 600;
      margin-bottom: 20px;
      text-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
    }

    .hero p {
      font-size: 1.25rem;
      max-width: 700px;
      color: #cbd5e1;
    } */

    .feedback-div {
      display: flex;
      flex-wrap: wrap;
      margin-left: 50px;
      margin-top: 30px;
     
    }

    .feedback-card {
      background-color: #1e293b;
      width: 350px;
      height: 300px;
      margin: 15px;
      border-radius: 10px;
      transition: transform 0.5s;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.8);
      margin-bottom: 90px;
      margin-top: 150px;
      
    }

    .feedback-card img {
      width: 40%;
      height: 45%;
      margin-top: 10px;
      margin-left: 80px;
      border-radius: 10px;
      border: 2px solid #22d3ee;
      display: inline;
      margin-right: 10px;
    }

    .feedback-card:hover {
      transform: scale(1.05);
      box-shadow: 0 0 20px #22d3ee;
      z-index: 10;
    }
    .carousel-inner {
  background-color: #151c28;
  border-radius: 10px;
  overflow: hidden;
}

.carousel-item img {
  object-fit: contain;
  max-height: 500px;
}
    
  </style>
</head>
<body class="d-flex flex-column min-vh-100">
<%
CommonDao dao=new CommonDao();
ArrayList<FeedBack> feedbacklist=dao.allFeedBacks();
String picpath=request.getContextPath();
String projectPath=request.getContextPath();
%>
  <div class="main-div" style="flex: 1;">
<div id="carouselExample" class="carousel slide" data-bs-ride="carousel" style="margin-top: 40px;">
  <div class="carousel-inner" style="height: 500px;">
    <div class="carousel-item active">
      <img src="/MapMyService/images/Chatgpt1.png" class="d-block mx-auto" alt="..." style="height: 100%; width: auto;">
    </div>
    <div class="carousel-item">
      <img src="/MapMyService/images/Chatgpt2.png" class="d-block mx-auto" alt="..." style="height: 100%; width: auto;">
    </div>
    <div class="carousel-item">
      <img src="/MapMyService/images/Chatgpt3.png" class="d-block mx-auto" alt="..." style="height: 100%; width: auto;">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

  
  
  
  
  
  <div class="feedback-div" style="display: flex;">
  <%
  for(FeedBack f:feedbacklist)
  {
	String picPath=f.getUser().getProfile_pic();
	String imageUrl=projectPath+"/"+picPath;
  %>
  <div class=feedback-card>
  <img alt="" src="<%=imageUrl%>" style="border-radius: 40%">
  <h6 style="margin-left: 100px;margin-top: 10px;">Rating: <%=f.getRating()%></h6>
  <h6 style="margin-left: 50px;margin-top: 10px;">Review: <%=f.getReview()%></h6>
  <h6 style="margin-left: 70px;margin-top: 10px;">Posted by:<%=f.getName()%></h6>
  </div>
  <%} %>
  </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <%@ include file="/common/footer.jsp" %>
</body>
</html>