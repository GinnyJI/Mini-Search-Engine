% include('styles.tpl')

<center>
<head>
	<title>Word Counter</title>
</head>

<body>  
	<br>
	<br>
	<a href="http://localhost:8080/" class="logo">
		<div class="logo-triangle">
			<div class="logo-triangle-container">
			<span class="logo-site-name">Simple Search</span>
			<span class="left-n">S</span>
			<span class="right-n">S</span>
			</div>
		</div>
	</a>

	<div class="desc">Search engine mini,<br>made with simplicity.</div>

	<h2>Please type in a sentence below</h2>

	<form action="/query" method="post" autocomplete="on">
	        <input name="keywords" type="text" placeholder="Search.." list="browsers" name="browser"/>
	        <input value="Search" type="submit" />
		
                <datalist id="browsers">
                	%for word in keywords:		
		    		<option value={{word}}>
			%end
                </datalist>
	</form>
	
</body>
<center>
