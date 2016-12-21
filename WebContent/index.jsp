<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Tabs - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="resources/demos/style.css">
<link rel="stylesheet" href="resources/css/main.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script>
	var numberofPage = 5;
	$(function() {
		$("#tabs").tabs();

		/*     $.get("postperpage/"+numberofPage).done(perpagesuccess).fail(ajaxfailure);
		 */
		loaduserposts();
	});
	function perpagesuccess(data) {
		var posts = JSON.parse(data);
		console.log(posts);
		var content = "<table class=\"table table-hover\"><tbody>";
		$.each(posts, function(i, post) {
			content = content + "<tr><td><p>" + post.postText + "</p><p> <em style = \"color: lightblue\"> Last updated" + post.dateCreated +"</em></p></td></tr>";
		});
		content = content + "</tbody></table>";
		$("#tabs-1").append(content);
	}
	function loaduserposts() {
		$.get("postperpage/" + numberofPage).done(perpagesuccess).fail(
				ajaxfailure);
	}
	function ajaxfailure(error) {
		console.log(error)
	}
	function logResults(data) {
		var x
	}
	$(window).scroll(
			function() {
				if ($(window).scrollTop() + $(window).height() > $(document)
						.height() - 100) {
					numberofPage = numberofPage + 5;
					$("#tabs-1").empty();
					loaduserposts();
				}
			});
</script>
</head>
<body>
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">Need a ride?</a></li>
			<li><a href="#tabs-2">Provide a ride?</a></li>
			<li><a href="#tabs-3">Check weather before you plan</a></li>
		</ul>
		<div id="tabs-1">
			<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a,
				risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris.
				Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem.
				Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo.
				Vivamus sed magna quis ligula eleifend adipiscing. Duis orci.
				Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam
				molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut
				dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique
				tempus lectus.</p>
		</div>
		<div id="tabs-2">
			<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus
				gravida ante, ut pharetra massa metus id nunc. Duis scelerisque
				molestie turpis. Sed fringilla, massa eget luctus malesuada, metus
				eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet
				fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam.
				Praesent in eros vestibulum mi adipiscing adipiscing. Morbi
				facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut
				posuere viverra nulla. Aliquam erat volutpat. Pellentesque
				convallis. Maecenas feugiat, tellus pellentesque pretium posuere,
				felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris
				consectetur tortor et purus.</p>
		</div>
		<div id="tabs-3">
			<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse
				potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque
				rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante.
				Class aptent taciti sociosqu ad litora torquent per conubia nostra,
				per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim
				commodo pellentesque. Praesent eu risus hendrerit ligula tempus
				pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a,
				lacus.</p>
			<p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at,
				semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra
				justo vitae neque. Praesent blandit adipiscing velit. Suspendisse
				potenti. Donec mattis, pede vel pharetra blandit, magna ligula
				faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque.
				Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi
				lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean
				vehicula velit eu tellus interdum rutrum. Maecenas commodo.
				Pellentesque nec elit. Fusce in lacus.
</body>
</html>