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
				<div class="accordion" id="contentPanel">
					<h3>
						<a href="#">每日例單</a>
					</h3>
					<div>
						<form class="jqtransform">
							<span align="center"><label for="date">日期: </label><input
								type="text" name="date" id="datepicker" value="10/06/2011" />&nbsp; &nbsp;
								<input type="submit" value="&gt;移至" />&nbsp; &nbsp; &nbsp; &nbsp;
								&nbsp; <input type="submit" value="移至今天" />
								</span> <br />
							<br />
							<br />
							<table class="ui-jqgrid-htable" style="width: 747px;"
								cellspacing="0" cellpadding="0" border="1">
								<thead>
									<tr class="ui-jqgrid-labels">
										<th class="ui-state-default ui-th-column ui-th-ltr"><label>序號</label></th>
										<th class="ui-state-default ui-th-column ui-th-ltr"><label>寶號</label></th>
										<th class="ui-state-default ui-th-column ui-th-ltr"><label>單價</label></th>
										<th class="ui-state-default ui-th-column ui-th-ltr"><label>貨品／數量</label></th>
									</tr>
								</thead>
								<tbody>
									<!-- Item -->
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td rowspan="3"><p>1</p></td>
										<td rowspan="3"><p>美富</p></td>
										<td align="right"><p>3.5</p></td>
										<td><label for="quantity">炒粉: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>4.0</p></td>
										<td><label for="quantity">油麵: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>5.5</p></td>
										<td><label for="quantity">黑炒: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<!-- Item -->
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td rowspan="3"><p>2</p></td>
										<td rowspan="3"><p>富群</p></td>
										<td align="right"><p>3.5</p></td>
										<td><label for="quantity">腸粉: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>3.5</p></td>
										<td><label for="quantity">炒粉: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>4.5</p></td>
										<td><label for="quantity">油麵: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<!-- Item -->
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td rowspan="3"><p>3</p></td>
										<td rowspan="3"><p>康華</p></td>
										<td align="right"><p>3.0</p></td>
										<td><label for="quantity">湯粉: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>3.0</p></td>
										<td><label for="quantity">炒粉: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>8.5</p></td>
										<td><label for="quantity">生麵: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<!-- Item -->
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td rowspan="2"><p>4</p></td>
										<td rowspan="2"><p>亞蘇</p></td>
										<td align="right"><p>3.5</p></td>
										<td><label for="quantity">湯粉: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>5.5</p></td>
										<td><label for="quantity">生麵: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<!-- Item -->
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td rowspan="3"><p>5</p></td>
										<td rowspan="3"><p>皇家 （飯）</p></td>
										<td align="right"><p>3.3</p></td>
										<td><label for="quantity">腸粉: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>3.3</p></td>
										<td><label for="quantity">炒粉: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>6</p></td>
										<td><label for="quantity">蝦腸: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<!-- Item -->
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td rowspan="1"><p>6</p></td>
										<td rowspan="1"><p>皇家 （中娛－點心）</p></td>
										<td align="right"><p>8.5</p></td>
										<td><label for="quantity">大白皮: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<!-- Item -->
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td rowspan="3"><p>7</p></td>
										<td rowspan="3"><p>新武二新口岸</p></td>
										<td align="right"><p>4.5</p></td>
										<td><label for="quantity">湯粉: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>9.0</p></td>
										<td><label for="quantity">幼生: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td align="right"><p>9.0</p></td>
										<td><label for="quantity">粗生: </label><input type="text"
											name="quantity" /></td>
									</tr>
									<!-- Item -->
									<tr class="ui-widget-content jqgrow ui-row-ltr ui-state-highlight">
										<td rowspan="1"><p>8</p></td>
										<td rowspan="1"><p>華都 （點）</p></td>
										<td align="right"><p>3.9</p></td>
										<td><label for="quantity">炸麵: </label><input type="text"
											name="quantity" /></td>
									</tr>
								</tbody>
							</table>
							<br />
							<div class="rowElem">
								<input type="submit" value="儲存" />&nbsp; &nbsp; &nbsp; &nbsp;
								&nbsp; <input type="submit" value="單個列印" />&nbsp;<input
									type="submit" value="全部列印" />
							</div>
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
				collapsible : false,
				autoHeight : false

			});
			$("#tabs").tabs();
			$("form.jqtransform").jqTransform();
			$("#datepicker").datepicker();
		});
	</script>
</body>
</html>