<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.text.*, kr.co.myshop.vo.*, kr.co.myshop.view.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width, initial-scale=1.0, user-scalable=no">
<title>메인 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.in_container { clear:both; width:1400px; margin:0 auto; }
.in_container:after { content:""; display:block; clear:both; }
</style>
</head>
<body>
<%
	GetIndexProductListCtrl indexPro = new GetIndexProductListCtrl();
	ArrayList<Product> bestPro = indexPro.bestProduct();
	ArrayList<Product> hotPro = indexPro.hotProduct();
	ArrayList<Product> newPro = indexPro.newProduct();
%>
<%@ include file="header.jsp" %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class=""></li>
          <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item">
            <img class="first-slide" src="./img/nongshim1.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Example headline.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item active">
            <img class="second-slide" src="./img/nongshim_main2.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Another example headline.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="./img/nongshim_main3.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                <h1>One more for good measure.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
<br><hr><br>
<div class="container" id="content">
	<h2 class="cate_title">NEW</h2>
	<ul class="row" id="new">
		<% for(int i=0;i<newPro.size();i++) { 
			Product vo = newPro.get(i);
		%>	
		<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
			<div class="card" style="width: 18rem;">
			  <img src="upload/<%=vo.getProPic() %>" class="card-img-top" alt="<%=vo.getProName() %>">
			  <div class="card-body">
			    <h5 class="card-title"><%=vo.getProName() %></h5>
			    <p class="card-text"><%=vo.getProSpec() %></p>
			    <a href="<%=request.getContextPath() %>/GetProductDetailCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-primary">자세히 보기</a>
			  </div>
			</div>
		</li>
		<% } %>
	</ul>
	<br><hr><br>
	<h2 class="cate_title">HOT</h2>
	<ul class="row" id="hot">
		<% for(int i=0;i<hotPro.size();i++) { 
			Product vo = hotPro.get(i);
		%>	
		<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
			<div class="card" style="width: 18rem;">
			  <img src="upload/<%=vo.getProPic() %>" class="card-img-top" alt="<%=vo.getProName() %>">
			  <div class="card-body">
			    <h5 class="card-title"><%=vo.getProName() %></h5>
			    <p class="card-text"><%=vo.getProSpec() %></p>
			    <a href="<%=request.getContextPath() %>/GetProductDetailCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-primary">자세히 보기</a>
			  </div>
			</div>
		</li>
		<% } %>
	</ul>
	<br><hr><br>
	<h2 class="cate_title">BEST</h2>
	<ul class="row" id="best">
		<% for(int i=0;i<bestPro.size();i++) { 
			Product vo = bestPro.get(i);
		%>	
		<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
			<div class="card" style="width: 18rem;">
			  <img src="upload/<%=vo.getProPic() %>" class="card-img-top" alt="<%=vo.getProName() %>">
			  <div class="card-body">
			    <h5 class="card-title"><%=vo.getProName() %></h5>
			    <p class="card-text"><%=vo.getProSpec() %></p>
			    <a href="<%=request.getContextPath() %>/GetProductDetailCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-primary">자세히 보기</a>
			  </div>
			</div>
		</li>
		<% } %>
	</ul>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>