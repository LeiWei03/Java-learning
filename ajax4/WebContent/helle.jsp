<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src = "js\jquery-1.8.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>
email : <input type="text" name="email" id="eid"><label></label>
<br/>
password : <input type="password" name="pwd">



<!--
 -->
<script type="text/javascript">
 $(function(){
	$('#eid').blur( function(){
		var value = $('#eid').val();
		 $.ajax({
			    url:"/ajax/src/com/prosay/AjaxServlet", // 请求地址
				data:{email:value}, 
				type:"POST", // 请求方式
				dataType:"json", //服务器返回的数据类型
				success: function(result) {  请求成功后进入的函数
					if(result){ // 判断后台返回的数据
						$("label").text(result); //将后台返回的数据打印到前台的label标签中显示
					}else{
					 //将后台返回的数据打印到前台的label标签中显示
						 $("label").text(result);
					}
				}
			})
	})
 });
</script>







</body>

</html>