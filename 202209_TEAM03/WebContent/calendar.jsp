<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>FullCalendar Example</title>
    <link rel=" shortcut icon" href="${pageContext.request.contextPath }/image/favicon.ico">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='${pageContext.request.contextPath }/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='${pageContext.request.contextPath }/vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/main.css">

<style type="text/css">

@font-face {
	font-family: 'NanumSquareNeo-Variable';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

ul, li, h2, h3, button, span, input, label, textarea, a, div, table, p {
	font-family: 'NanumSquareNeo-Variable';
}

header {
	border-bottom: 1px solid white;
	background: #3CB371;
}

body{
	background: #F5F5F5;
}

.leftdiv {
	width:300px; 
	height:880px; 
	border:1px solid #DCDCDC; 
	margin-left: 70px; 
	background: white;
	border-radius: 5px;
	float: left;
}

.profile {
	margin-top: 20px;
	margin-left: 20px;
	width : 260px;
	height: 150px;
	border : 1px solid #DCDCDC; 
	background: #F0FFF0;
	border-radius: 5px;
}

.category {
	width : 260px;
	height:40px;
	border: 1px solid #DCDCDC;
	border-radius: 5px;
	margin-top: 20px;
	margin-left : 15px; 
	margin-right : 50px;
	padding-top: 5px;
	padding-left: 10px;
}

.rightdiv {
	width : 1400px;
	height : 880px;
	border : 1px solid #DCDCDC;
	margin-left : 400px;
	background: white;
	border-radius: 5px;
	
}

.fc-header-toolbar{
	height: 0;
}

</style>

</head>
<body>

	<header>
			<div style="height: 170px;">
			</div>
		<br>
	</header><br>
	
		<section>
		<div>
			<div class="leftdiv">
				<div class="profile">
				</div>
				<div class="category"><a href="">withme friends</a></div>
				<div class="category"><a href="">????????????</a></div>
				<div class="category"><a href="">??????</a></div>
				<div class="category"><a href="">?????????</a></div>
				<div class="category"><a href="">????????????</a></div>
			</div>
			
			
			<div class="rightdiv">
				
				
				<div class="container" style="height: 800px;"> 
		
			        <!-- ?????? ????????? ???????????? -->
			        <div id="contextMenu" class="dropdown clearfix">
			            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
			                style="display:block;position:static;margin-bottom:5px;">
			                <li><a tabindex="-1" href="#">??????</a></li>
			                <li class="divider"></li>
			                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
			            </ul>
			        </div>
			        <div id="wrapper">
			            <div id="loading"></div>
			            <div id="calendar"></div>
			        </div>
			        <!-- ?????? ?????? MODAL -->
			        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
			            <div class="modal-dialog" role="document">
			                <div class="modal-content">
			                    <div class="modal-header">
			                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
			                                aria-hidden="true">&times;</span></button>
			                        <h4 class="modal-title"></h4>
			                    </div>
			                    <div class="modal-body">
			
			                        <div class="row">
			                            <div class="col-xs-12">
			                                <label class="col-xs-4" for="edit-allDay">????????????</label>
			                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
			                            </div>
			                        </div>
			
			                        <div class="row">
			                            <div class="col-xs-12">
			                                <label class="col-xs-4" for="edit-title">?????????</label>
			                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
			                                    required="required" />
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-xs-12">
			                                <label class="col-xs-4" for="edit-start">??????</label>
			                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-xs-12">
			                                <label class="col-xs-4" for="edit-end">???</label>
			                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-xs-12">
			                                <label class="col-xs-4" for="edit-color">??????</label>
			                                <select class="inputModal" name="color" id="edit-color">
			                                    <option value="#D25565" style="color:#D25565;">?????????</option>
			                                    <option value="#9775fa" style="color:#9775fa;">?????????</option>
			                                    <option value="#ffa94d" style="color:#ffa94d;">?????????</option>
			                                    <option value="#74c0fc" style="color:#74c0fc;">?????????</option>
			                                    <option value="#f06595" style="color:#f06595;">?????????</option>
			                                    <option value="#63e6be" style="color:#63e6be;">?????????</option>
			                                    <option value="#a9e34b" style="color:#a9e34b;">?????????</option>
			                                    <option value="#4d638c" style="color:#4d638c;">??????</option>
			                                    <option value="#495057" style="color:#495057;">?????????</option>
			                                </select>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-xs-12">
			                                <label class="col-xs-4" for="edit-desc">??????</label>
			                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
			                                    id="edit-desc"></textarea>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="modal-footer modalBtnContainer-addEvent">
			                        <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
			                        <button type="button" class="btn btn-primary" id="save-event">??????</button>
			                    </div>
			                    <div class="modal-footer modalBtnContainer-modifyEvent">
			                        <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
			                        <button type="button" class="btn btn-danger" id="deleteEvent">??????</button>
			                        <button type="button" class="btn btn-primary" id="updateEvent">??????</button>
			                    </div>
			                </div><!-- /.modal-content -->
			            </div><!-- /.modal-dialog -->
			        </div><!-- /.modal -->
			    </div>
			    <!-- /.container -->
				
				
				
				
				
				
			</div>
		</div>	
	</section>
	
	
	<script src="${pageContext.request.contextPath }/vendor/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/vendor/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/vendor/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath }/vendor/js/fullcalendar.min.js"></script>
    <script src="${pageContext.request.contextPath }/vendor/js/ko.js"></script>
    <script src="${pageContext.request.contextPath }/vendor/js/select2.min.js"></script>
    <script src="${pageContext.request.contextPath }/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/main.js"></script>
    <script src="${pageContext.request.contextPath }/js/addEvent.js"></script>
    <script src="${pageContext.request.contextPath }/js/editEvent.js"></script>
    <script src="${pageContext.request.contextPath }/js/etcSetting.js"></script>

</body>
</html>