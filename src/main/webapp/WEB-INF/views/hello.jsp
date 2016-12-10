<%@ include file="/WEB-INF/views/include.jsp"%>

<html>
<head>
<title>Hello :: Spring Application</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#n1").on("click", function() {
			$("#n1").val("");
		});

		$("#b1").on("click", function() {
			var num = $("#n1");
			num.val(num.val() * num.val());
		});
	});
</script>

</head>
<body>
	<h1>Hello - Spring Application</h1>
	<p>
		Greetings, it is now
		<c:out value="${now}" />
	</p>

	<div id="calc">
		Number: <input type="text" id="n1">

		<button id="b1">
			x<sup>2</sup>
		</button>
	</div>

	<footer>
		I'm Pablo <a href="https://pdelho-springv4.herokuapp.com/">Heroku</a>

	</footer>
</body>
</html>