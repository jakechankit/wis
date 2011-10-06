
<jsp:directive.page contentType="text/html;charset=UTF-8" />
<jsp:directive.page pageEncoding="UTF-8" />
<script type="text/javascript">
	$(function() {
		$("#menu1").click(function() {
			if ($("#menu1").hasClass("bt")) {
				$("#menu1").removeClass("bt");
				$("#menu1").addClass("clicked");
				$("#submenu1").show();

				$("#menu2").addClass("bt");
				$("#menu3").addClass("bt");
				$("#submenu2").hide();
				$("#submenu3").hide();
			} else {
				$("#menu1").removeClass("clicked");
				$("#menu1").addClass("bt");
				$("#submenu1").hide();
			}
		});
		$("#menu2").click(function() {
			if ($("#menu2").hasClass("bt")) {
				$("#menu2").removeClass("bt");
				$("#menu2").addClass("clicked");
				$("#submenu2").show();

				$("#menu1").addClass("bt");
				$("#menu3").addClass("bt");
				$("#submenu1").hide();
				$("#submenu3").hide();
			} else {
				$("#menu2").removeClass("clicked");
				$("#menu2").addClass("bt");
				$("#submenu2").hide();
			}
		});
		$("#menu3").click(function() {
			if ($("#menu3").hasClass("bt")) {
				$("#menu3").removeClass("bt");
				$("#menu3").addClass("clicked");
				$("#submenu3").show();

				$("#menu1").addClass("bt");
				$("#menu2").addClass("bt");
				$("#submenu1").hide();
				$("#submenu2").hide();
			} else {
				$("#menu3").removeClass("clicked");
				$("#menu3").addClass("bt");
				$("#submenu3").hide();
			}
		});
	});
</script>
<div id="box">
	<a href="#" id="menu1" class="bt btleft">&nbsp;&nbsp;&nbsp;例單管理&nbsp;&nbsp;&nbsp;<span>&#9660;</span></a>
	<a href="#" id="menu2" class="bt btmiddle">&nbsp;&nbsp;&nbsp;基本資料&nbsp;&nbsp;&nbsp;<span>&#9660;</span></a>
	<a href="#" id="menu3" class="bt btright">&nbsp;&nbsp;&nbsp;每月報表&nbsp;&nbsp;&nbsp;<span>&#9660;</span></a>
</div>
<div id="submenu1" class="submenu">
	<div class="submenutriangle"></div>
	<div class="tooltip_menu">
		<br /> <a href="/wis/invoice/standardInvoice">&nbsp;&nbsp;每日例單 </a> <a
			href="/wis/invoice/miscInvoice">&nbsp;&nbsp;每日散單 </a> <a
			href="/wis/invoice/invoiceTemplate">&nbsp;&nbsp;例單模版 </a> <br />
	</div>
</div>
<div id="submenu2" class="submenu">
	<div class="submenutriangle"></div>
	<div class="tooltip_menu">
		<br /> <a href="/wis/basic/customer">&nbsp;&nbsp;客戶資料 </a> <a
			href="/wis/basic/product">&nbsp;&nbsp;產品資料 </a> <br />
	</div>
</div>
<div id="submenu3" class="submenu">
	<div class="submenutriangle"></div>
	<div class="tooltip_menu">
		<br /> <a href="/wis/report/monthlyStatement">&nbsp;&nbsp;月結單 </a> <a
			href="/wis/report/monthlyTurnover">&nbsp;&nbsp;每月營業總額 </a> <br />
	</div>
</div>

