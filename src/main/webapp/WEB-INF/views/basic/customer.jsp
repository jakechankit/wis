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
						<a href="#">客戶資料列表</a>
					</h3>
					<div>
						<table id="list4"></table>
					</div>
				</div>
				<div class="accordion" id="detailPanel">
					<h3>
						<a href="#">客戶資料</a>
					</h3>
					<div>
						<div id="tabs">
							<ul>
								<li><a href="#tabs-1">一般資料</a></li>
								<li><a href="#tabs-2">客戶產品價格</a></li>
							</ul>
							<div id="tabs-1">
								<form class="jqtransform">
									<div class="rowElem">
										<table>
											<tr>
												<td><label for="name">客戶名稱: </label></td>
												<td><input type="text" name="name" value="湯粉" /></td>

												<td><label for="unit">類型: </label></td>
												<td><select name="unit" value="1">
														<option value="1">酒店</option>
														<option value="2">其他</option>
												</select></td>
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
							<div id="tabs-2">
								<form class="jqtransform">
									<a href="#"><img src="../images/add.png" /></a>&nbsp;<a
										href="#"><img src="../images/delete.png" /></a>
									<table class="ui-jqgrid-htable" width="100%" cellspacing="0" cellpadding="0" border="1">
										<thead>
											<tr class="ui-jqgrid-labels">
												<th class="ui-state-default ui-th-column ui-th-ltr"
													width="50%"><label>貨品</label></th>
												<th class="ui-state-default ui-th-column ui-th-ltr"
													width="50%"><label>單價</label></th>
											</tr>
										</thead>
										<tbody>
											<tr
												class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">

												<td><label for="price">炒粉: </label></td>
												<td><input type="text" name="price" value="3.5" /></td>
											</tr>
											<tr
												class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
												<td><label for="price">油麵: </label></td>
												<td><input type="text" name="price" value="4.0" /></td>
											</tr>
											<tr
												class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
												<td><label for="price">黑炒: </label></td>
												<td><input type="text" name="price" value="5.5" /></td>
											</tr>
										</tbody>
									</table>
									<br />
									<div class="rowElem">
										<input type="submit" value="儲存" />
									</div>
								</form>
							</div>
						</div>
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
			$("#tabs").tabs();
			$("form").jqTransform();
		});

		jQuery("#list4").jqGrid({
			datatype : "local",
			width : 765,
			height : 160,
			colNames : [ '編號', '客戶名稱', '類型', '備註' ],
			colModel : [ {
				name : 'id',
				index : 'id',
				width : 55
			}, {
				name : 'name',
				index : 'name',
				width : 150
			}, {
				name : 'type',
				index : 'type',
				width : 50,
				align : "right"
			}, {
				name : 'remark',
				index : 'remark',
				width : 130,
				sortable : false
			} ]
		});
		var mydata = [ {
			"name" : "威尼斯人",
			"id" : 1,
			"type" : "酒店",
			"remark" : ""
		}, {
			"name" : "金沙",
			"id" : 2,
			"type" : "酒店",
			"remark" : ""
		}, {
			"name" : "葡京",
			"id" : 3,
			"type" : "酒店",
			"remark" : ""
		}, {
			"name" : "茶餐廳",
			"id" : 4,
			"type" : "其他",
			"remark" : ""
		}, {
			"name" : "茶餐廳",
			"id" : 5,
			"type" : "其他",
			"remark" : ""
		}, {
			"name" : "茶餐廳",
			"id" : 6,
			"type" : "其他",
			"remark" : ""
		}, {
			"name" : "茶餐廳",
			"id" : 7,
			"type" : "其他",
			"remark" : ""
		} ];
		for ( var i = 0; i <= mydata.length; i++)
			jQuery("#list4").jqGrid('addRowData', i + 1, mydata[i]);
	</script>
</body>
</html>