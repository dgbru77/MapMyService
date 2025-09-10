<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Know About Us</title>
<%@ include file="/common/common_css.html" %>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<style>
  body {
    background-color: #0B1120;
    margin: 0;
    font-family: 'Poppins', sans-serif;
    color: #f1f5f9;
  }

  .top-bar {
    background-color: #1e293b;
    width: 100%;
    height: 60px;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 0 10px #22d3ee;
  }

  .top-bar h1 {
    margin: 0;
    font-family: cursive;
    font-size: 1.8rem;
    color: #60A5FA;
    text-shadow: 0 0 5px #60A5FA;
  }

  .section-title {
    text-align: center;
    color: #22d3ee;
    font-family: cursive;
    margin-top: 30px;
  }

  .founder-image {
    width: 30%;
    height: 200px;
    border-radius: 10%;
    margin: 20px auto;
    overflow: hidden;
  }

  .founder-image img {
    width: 100%;
    height: 100%;
    border-radius: 10%;
    border: 2px solid #22d3ee;
  }

  .founder-desc {
    width: 30%;
    margin: 10px auto;
    border-radius: 10px;
    border: 1px solid #22d3ee;
    padding: 10px 20px;
    text-align: center;
    background-color: #1e293b;
    box-shadow: 0 0 15px #0ea5e9;
  }

  .vision-box {
    width: 20%;
    height: 170px;
    border-radius: 10px;
    border: 1px solid #22d3ee;
    background-color: #1e293b;
    float: left;
    margin: 30px 3% 0 5%;
    box-shadow: 0 0 10px #22d3ee;
    text-align: center;
    padding-top: 10px;
  }

  .vision-box img {
    width: 80px;
    height: 80px;
    border-radius: 100%;
    border: 2px solid #22d3ee;
    margin-bottom: 10px;
  }

  .contact-strip {
    width: 100%;
    height: 50px;
    background-color: #1e293b;
    color: #f8fafc;
    display: flex;
    justify-content: space-around;
    align-items: center;
    margin-top: 60px;
    font-size: 0.9rem;
    box-shadow: 0 0 8px #0ea5e9;
  }

  .footer-bar {
    width: 100%;
    height: 40px;
    background-color: #0f172a;
    color: #60A5FA;
    text-align: center;
    line-height: 40px;
    font-size: 0.95rem;
    text-shadow: 0 0 5px #60A5FA;
  }
</style>
</head>

<body>
  <div class="top-bar">
    <h1>Know About Us</h1>
  </div>

  <h1 class="section-title">Our Founder</h1>

  <div class="founder-image">
    <img src="/CollegePortal/images/3828-founder.png" alt="Founder">
  </div>

  <div class="founder-desc">
    <p>The founder is a passionate and visionary leader who started this journey with a mission to create meaningful impact. Guided by innovation and purpose, they continue to shape the path forward with dedication and integrity.</p>
  </div>

  <div class="vision-box">
    <img src="/MapMyService/images/about.jpeg" alt="">
    <p>This is our Vision</p>
  </div>

  <div class="vision-box">
    <img src="/MapMyService/images/about.jpeg" alt="">
    <p>This is our Vision</p>
  </div>

  <div class="vision-box">
    <img src="/MapMyService/images/about.jpeg" alt="">
    <p>This is our Vision</p>
  </div>

  <div style="clear: both;"></div>
  <hr style="border: none; border-top: 1px solid #22d3ee; width: 90%; margin: 40px auto;">

  <div class="contact-strip">
    <span>📞 Phone: 971378437</span>
    <span>📧 Email: abc@gmail.com</span>
    <span>📍 Address: Lucknow</span>
  </div>

  <div class="footer-bar">
    Created By Udbhav
  </div>

  <%@ include file="/common/header.html" %>
</body>
</html>
