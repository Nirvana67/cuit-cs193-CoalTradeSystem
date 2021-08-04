<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<title>Title</title>
3<link href="jquery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
<script type="text/javascript" src="jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>


	<script>
			$(function (){

				if(window.top!=window){
					window.top.location=window.location;
				}

				//页面刷新后，对文本框的内容进行清空
				$("#loginAct").val("");

				//鼠标放上自动聚焦
				$("#loginAct").focus();

				//点击登录触发事件
				$("#submintBtn").click(function (){

					login();

				})

				//敲击回车触发事件
				//取得敲击的是哪个键
				$(window).keydown(function (event){

					//回车
					if(13 == event.keyCode){
						login();
					}

				})

				//创建按钮绑定事件  打开注册操作的模态窗口
				$("#registerBtn").click(function (){

					$("#createActivityModal").modal("show");
				})


				//保存按钮触发事件
				$("#saveBtn").click(function (){

					$.ajax({

						url : "settings/user/register.do",
						data : {

							"loginNumber": $.trim($("#loginNumber").val()),
							"loginPassword" : $.trim($("#loginPassword").val()),
							"legalPerson" : $.trim($("#legalPerson").val()),
							"legalId" : $.trim($("#legalId").val()),
							"registArea" : $.trim($("#registArea").val()),
							"enterpriseMail" : $.trim($("#enterpriseMail").val()),
							"phoneNuber" : $.trim($("#phoneNuber").val()),
							"faxes" : $.trim($("#faxes").val()),
							"postalCode" : $.trim($("#postalCode").val()),
							"registFund" : $.trim($("#registFund").val()),
							"businessNumber" : $.trim($("#businessNumber").val()),
							"organizCode" : $.trim($("#organizCode").val()),
							"licenseNumber" : $.trim($("#licenseNumber").val()),
							"taxRegistrCode" : $.trim($("#taxRegistrCode").val()),
							"depositBank" : $.trim($("#depositBank").val()),
							"accountNumber" : $.trim($("#accountNumber").val()),
							"suppilerName" : $.trim($("#suppilerName").val()),
							"businessTpye" : $.trim($("#businessTpye").val()),

							"locationQuantityQualityOfStorage" : $.trim($("#locationQuantityQualityOfStorage").val()),
							"transportationOfCapacity" : $.trim($("#transportationOfCapacity").val()),
							"suppilerIntroduction" : $.trim($("#suppilerIntroduction").val())

						},
						type : "post",
						dataType : "json",
						success : function (data){

							if(data.success){
								//添加成功 刷新用户表格
								//清空模态窗口的数据
								$("#activityAddForm")[0].reset();

								//关闭模态窗口
								$("#createActivityModal").modal("hide");

							}else {

							}
						}
					})
				})




			})


			function login(){

				//alert("执行登陆验证操作");

				//验证账号密码不能为空
				//取得账号密码
				//去掉文本中的左右空格 $.trim(文本)
				var loginAct = $.trim($("#loginAct").val());
				var loginPwd = $.trim($("#loginPwd").val());

				if(""==loginAct || ""==loginPwd){

					$("#msg").html("账号密码不能为空");

					return false;
				}

				$.ajax({

					url : "settings/user/login.do",
					data : {

						"loginAct" : loginAct,
						"loginPwd" : loginPwd

					},
					type : "post",
					dataType : "json",
					success : function (data){

						//登录成功
						if(data.success){

							//跳转到工作台的初始页面
							window.location.href = "workbench/index.jsp";


						}else {//如果登录失败

							$("#msg").html(data.msg);

						}
					}
				})
			}

	</script>


</head>
<body>


<!-- 创建市场活动的模态窗口 -->
<div class="modal fade" id="createActivityModal" role="dialog">
	<div class="modal-dialog" role="document" style="width: 85%;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel1">注册信息</h4>
			</div>
			<div class="modal-body">

				<form id="activityAddForm" class="form-horizontal" role="form">



					<div class="form-group">
						<label for="create-startTime" class="col-sm-2 control-label">登录账号</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="loginNumber" >
						</div>
						<label for="create-endTime" class="col-sm-2 control-label">登录密码</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="loginPassword" >
						</div>
					</div>

					<div class="form-group">
						<label for="create-startTime" class="col-sm-2 control-label">法人代表</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="legalPerson" >
						</div>
						<label for="create-endTime" class="col-sm-2 control-label">法人身份证</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="legalId" >
						</div>
					</div>

					<div class="form-group">
						<label for="create-startTime" class="col-sm-2 control-label">注册地区</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="registArea" >
						</div>
						<label for="create-endTime" class="col-sm-2 control-label">企业邮箱</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="enterpriseMail" >
						</div>
					</div>

					<div class="form-group">
						<label for="create-startTime" class="col-sm-2 control-label">联系电话</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="phoneNuber" >
						</div>
						<label for="create-endTime" class="col-sm-2 control-label">传真</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="faxes" >
						</div>
					</div>


					<div class="form-group">
						<label for="create-startTime" class="col-sm-2 control-label">邮政编码</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="postalCode" >
						</div>
						<label for="create-endTime" class="col-sm-2 control-label">注册资金</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="registFund" >
						</div>
					</div>

					<div class="form-group">
						<label for="create-startTime" class="col-sm-2 control-label">营业执照号</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="businessNumber" >
						</div>
						<label for="create-endTime" class="col-sm-2 control-label">组织机构代码</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="organizCode" >
						</div>
					</div>


					<div class="form-group">
						<label for="create-startTime" class="col-sm-2 control-label">经营许可证编号</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="licenseNumber" >
						</div>
						<label for="create-endTime" class="col-sm-2 control-label">税务登记代码</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="taxRegistrCode" >
						</div>
					</div>

					<div class="form-group">
						<label for="create-startTime" class="col-sm-2 control-label">开户银行</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="depositBank" >
						</div>
						<label for="create-endTime" class="col-sm-2 control-label">账号</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="accountNumber" >
						</div>
					</div>

					<div class="form-group">
						<label for="create-startTime" class="col-sm-2 control-label">供应商名称</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="suppilerName" >
						</div>
						<label for="create-endTime" class="col-sm-2 control-label">企业类型</label>
						<div class="col-sm-10" style="width: 300px;">
							<input type="text" class="form-control time" id="businessTpye" >
						</div>
					</div>



					<div class="form-group">
						<label for="create-describe" class="col-sm-2 control-label">煤源存放地点、数量、质量</label>
						<div class="col-sm-10" style="width: 81%;">
							<textarea class="form-control" rows="3" id="locationQuantityQualityOfStorage"></textarea>
						</div>
					</div>

					<div class="form-group">
						<label for="create-describe" class="col-sm-2 control-label">运输方式及保障能力</label>
						<div class="col-sm-10" style="width: 81%;">
							<textarea class="form-control" rows="3" id="transportationOfCapacity"></textarea>
						</div>
					</div>

					<div class="form-group">
						<label for="create-describe" class="col-sm-2 control-label">供应商介绍</label>
						<div class="col-sm-10" style="width: 81%;">
							<textarea class="form-control" rows="3" id="suppilerIntroduction"></textarea>
						</div>
					</div>

				</form>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" id="saveBtn">保存</button>
			</div>
		</div>
	</div>
</div>


	<div style="position: absolute; top: 0px; left: 0px; width: 60%;">
		<img src="image/IMG_7114.JPG" style="width: 100%; height: 90%; position: relative; top: 50px;">
	</div>
	<div id="top" style="height: 50px; background-color: #3C3C3C; width: 100%;">
		<div style="position: absolute; top: 5px; left: 0px; font-size: 30px; font-weight: 400; color: white; font-family: 'times new roman'">CRM &nbsp;<span style="font-size: 12px;">&copy;2021&nbsp;lsq</span></div>
	</div>
	
	<div style="position: absolute; top: 120px; right: 100px;width:450px;height:400px;border:1px solid #D5D5D5">
		<div style="position: absolute; top: 0px; right: 60px;">
			<div class="page-header">
				<h1>登录</h1>
			</div>
			<form action="workbench/index.jsp" class="form-horizontal" role="form">
				<div class="form-group form-group-lg">
					<div style="width: 350px;">
						<input class="form-control" type="text" placeholder="用户名" id="loginAct">
					</div>
					<div style="width: 350px; position: relative;top: 20px;">
						<input class="form-control" type="password" placeholder="密码" id="loginPwd">
					</div>
					<div class="checkbox"  style="position: relative;top: 30px; left: 10px;">
						
							<span id="msg"></span>
						
					</div>
					<!--
						type 设置为button才能局部刷新 如果是submit的话就是整个提交
					-->






					<button type="button" id="submintBtn" class="btn btn-primary btn-lg btn-block"  style="width: 350px; position: relative;top: 45px;">登录</button>
					<button type="button" id="registerBtn" class="btn btn-primary btn-lg btn-block"  style="width: 350px; position: relative;top: 45px;">注册</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>