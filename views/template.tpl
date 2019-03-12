<!DOCTYPE html>
<html>
<head>
	<title>Гороскоп на сегодня</title>
	<meta charset="utf-8">
	<link 
		rel="stylesheet" 
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		crossorigin="anonymous"
		/>
		<link rel="stylesheet" type="text/css" href="/css/styles.css">
		<script
  			src="https://code.jquery.com/jquery-3.3.1.min.js"
  			integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  			crossorigin="anonymous">
  		</script>
  	</head>
<body>
	<div class="container bordered">
			<h1 id="main_header">Что нам день {{ date }} готовит?</h1>
			<div class="row">
				<div class="col bordered" id="p-0"></div>
				<div class="col bordered" id="p-1"></div>
				<div class="col bordered" id="p-2"></div>
			</div>
			<div class="row">
				<div class="col bordered" id="p-3"></div>
				<div class="col bordered" id="p-4"></div>
				<div class="col bordered" id="p-5"></div>
			</div>
		</div>
</body>
<script src="/js/helpers.js" type="text/javascript" language="javascript"></script>
</html>