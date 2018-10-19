<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户列表</title>
<script src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$(function() {
	loadData();
	function loadData(){
		$.ajax({
			type : "POST",
			url : "../user/select",
			data : {
				"name" : $("#name").val()
			},
			success : function(result) {
				$("#tbody").html("");
				var tbody;
				for (var i = 0; i < result.length; i++) {
					tbody+="<tr>";
					tbody+="<td><input name='radioId' type='radio' value='"+result[i].id+"'/></td>";
					tbody+="<td>"+result[i].id+"</td>";
					tbody+="<td>"+result[i].username+"</td>";
					tbody+="<td>"+result[i].birthday+"</td>";
					tbody+="<td>"+result[i].sex+"</td>";
					tbody+="<td>"+result[i].address+"</td>";
					tbody+="</tr>";
				}
				$("#tbody").html(tbody);
			}
		});
	}
	$("#select").click(function(){
		loadData();
	});	
	$("#delete").click(function(){
		$.ajax({
			type : "POST",
			url : "../user/delete",
			data : {
				"id" : $("input[name='radioId']:checked").val()
			},
			success : function(result) {
				alert(result);
				loadData();
			}
		});
	});
	$("#update").click(function(){
		loadData();
	});

	$("#save").click(function(){
		$.ajax({
			url : "../user/save",
			async : false,
			type : "POST",
			contentType : 'application/json',
			dataType : 'json',
			data : JSON.stringify($("#addForm").serializeJson()),
			success : function(result) {
				alert(result);
				loadData();
			}
		});
	});
	//定义serializeJson方法，序列化表单
	$.fn.serializeJson = function () {
        var serializeObj = {};
        $(this.serializeArray()).each(function () {
            serializeObj[this.name] = this.value;
        });
        return serializeObj;
    };

});
</script>
</head>
<body>
姓名关键字(模糊查询)：<input id="name" type="text"/>&nbsp;&nbsp;<input id="select" type="button" value="查询"/>
<br/>
<br/>
	<table border="1" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
				<td>选择框</td>
				<td>id</td>
				<td>用户名</td>
				<td>生日</td>
				<td>性别</td>
				<td>地址</td>
			</tr>
		</thead>
		<tbody id="tbody">
		</tbody>
	</table>
<br/>
<input id="delete" type="button" value="删除选中项"/>
<h1>新增或修改</h1>
<h4>id存在就修改，不存在就新增</h4>
<form id="addForm">
ID：<input name="id" type="text"/><br/>
用户名：<input name="username" type="text"/><br/>
生日：<input name="birthday" type="date"/><br/>
性别：<input name="sex" type="radio" value="0" checked="checked"/>男 <input name="sex" type="radio" value="1"/>女<br/>
地址：<input name="address" type="text"/><br/>

<input id="save" type="button" value="提交"/>
</form>
</body>
</html>