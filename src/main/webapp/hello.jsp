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
	<p>Greetings.</p>

	<div id="calc">
		Number: <input type="text" id="n1">

		<button id="b1">
			x<sup>2</sup>
		</button>
	</div>

	<footer> I'm Pablo </footer>
</body>
</html>