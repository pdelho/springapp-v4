$(function() {
	$("#n1").on("click", function() {
		$("#n1").val("");
	});

	$("#b1").on("click", function() {
		var num = $("#n1");
		num.val(num.val() * num.val());
	});
});