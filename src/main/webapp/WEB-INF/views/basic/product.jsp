<html xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:spring="http://www.springframework.org/tags">
<jsp:directive.page contentType="text/html;charset=UTF-8" />
<jsp:directive.page pageEncoding="UTF-8" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="../styles/flick/jquery-ui-1.8.16.custom.css" />
<link rel="stylesheet" type="text/css" href="../styles/standard.css" />
<link rel="stylesheet" type="text/css" href="../styles/jqtransform.css" />
<link rel="stylesheet" type="text/css"
	href="../styles/jqGrid/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css"
	href="../styles/jqGrid/ui.multiselect.css" />

<script src="../scripts/jquery-1.6.4.js"></script>
<script src="../scripts/jquery-ui-1.8.16.custom.min.js"></script>
<script src="../scripts/jquery.jqtransform.js"></script>
<script src="../scripts/jqGrid/jquery.jqGrid.min.js"></script>
<script src="../scripts/jqGrid/jquery.tablednd.js"></script>
<script src="../scripts/jqGrid/jquery.contextmenu.js"></script>
<script src="../scripts/jqGrid/ui.multiselect.js"></script>

</head>

<body class="tundra spring">
	<div id="wrapper">
		<jsp:include page="../header.jsp"></jsp:include>
		<jsp:include page="../menu.jsp"></jsp:include>
		<div id="main">
			<div id="body">
				<br />
				<div class="accordion" id="searchPanel">
					<h3>
						<a href="#">搜尋</a>
					</h3>
					<div>
						<form class="jqtransform">
							<div class="rowElem">
								<input type="text" name="name" /> &nbsp; <input type="submit"
									value="查詢" /> <br /> <a href="#">進階搜尋</a>
							</div>
						</form>
					</div>
				</div>
				<div class="accordion" id="listPanel">
					<h3>
						<a href="#">產品資料列表</a>
					</h3>
					<div>
						<table id="list4"></table>
					</div>
				</div>
				<div class="accordion" id="detailPanel">
					<h3>
						<a href="#">產品資料</a>
					</h3>
					<div>
						<form class="jqtransform">
							<div class="rowElem">
								<table>
									<tr>
										<td><label for="name">貨名: </label></td>
										<td><input type="text" name="name" value="湯粉"/></td>

										<td><label for="unit">單位: </label></td>
										<td><select name="unit" value="1">
										<option value="1">斤</option>
										<option value="2">隻</option>
										<option value="3">條</option>
										<option value="4">個</option>
										</select></td>
										<tr>
									
									<tr>
										<td><label for="unitprice">單價: </label></td>
										<td><input type="text" name="unitprice" value="25.00"/></td>

										<td></td>
										<td></td>
									
									<tr>
									
									<tr>
										<td><label for="remark">備註: </label></td>
										<td colspan="3"><textarea cols="60" name="remark"></textarea></td>
									
									<tr>
								
								</table>
							</div>
							<div class="rowElem">
								<input type="submit" value="存儲" />
								</div>
								<br />
						</form>
					</div>
				</div>
			</div>
			<div id="footer"></div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$(".accordion").accordion({
				collapsible : true,
				autoHeight : false

			});
			$("#searchPanel").accordion("activate", false);

			$("form.jqtransform").jqTransform();
		});

		jQuery("#list4").jqGrid({
			datatype : "local",
			width : 765,
			height : 200,
			colNames : [ '編號', '貨名', '單位', '單價', '備註' ],
			colModel : [ {
				name : 'id',
				index : 'id',
				width : 55
			}, {
				name : 'name',
				index : 'name',
				width : 100
			}, {
				name : 'unit',
				index : 'unit',
				width : 80,
				align : "right"
			}, {
				name : 'unitprice',
				index : 'unitprice',
				width : 80,
				align : "right"
			}, {
				name : 'remark',
				index : 'remark',
				width : 150,
				sortable : false
			} ]
		});
		var mydata = [ {
			"name" : "湯粉",
			"id" : 1,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 2,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 3,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 4,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 5,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 6,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 7,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 8,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 9,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 10,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		}, {
			"name" : "湯粉",
			"id" : 49,
			"unitprice" : "25.00",
			"unit" : "斤",
			"remark" : ""
		} ];
		for ( var i = 0; i <= mydata.length; i++)
			jQuery("#list4").jqGrid('addRowData', i + 1, mydata[i]);
	</script>
	</body>
</html>