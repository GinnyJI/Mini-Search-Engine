% include('styles.tpl')

<!-- center the results -->
<center>
<head>
	<title>Word Counter result</title>
</head>

<body>
	
	<a href="http://localhost:8080/" class="logo">
		<span class="logo-site-name">Simple Search</span>
	</a>

	<div class="desc">Search engine mini,<br>made with simplicity.</div>

	<form action="/query" method="post" autocomplete="on">
	        <input name="keywords" type="text" placeholder="Search.." list="browsers" name="browser"/>
	        <input value="Search" type="submit" />
		
                <datalist id="browsers">
                	%for word in keywords:		
		    		<option value={{word}}>
			%end
                </datalist>
	</form>
	<!-- display the user input -->
	<h2>Search for "{{ sentence }}"</span></h2>
	<h2>{{first_word}}</span></h2>
	
</body>
<center>
