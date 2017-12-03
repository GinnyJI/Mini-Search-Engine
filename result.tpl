% include('styles.tpl')

<head>
	<title>Word Counter result</title>
</head>

<body>
	
	<a href="http://localhost:8080/" class="logo">
		<span class="logo-site-name">Simple Search</span>
	</a>

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

	<div id="results" class="container">
		<div class="result-summary clearfix">{{numResults}} results in {{duration}} seconds<hr/></div>
		%if max_ratio < 100 and sug_word is not None:
        	<p class="result-notice">Did you mean "{{sug_word}}"?</p>
		%end
	%for item in urls:	
		%if item in titles:
			<div class="result">
			<div class="result-title"><a href={{item}}>{{titles[item]}}</a></div>
		%end
			<div class="result-url">{{item}}</div>
		%if item in summaries:
			<div class="result-text">{{summaries[item]}}</div>
		%end
		%if item not in summaries:
			<br>
		%end
	%end

	</div>

	<div align="Middle">
		<form action="/Next" method="post">

    		<input id="next" type="submit" value="Next">
		</form>
	</div>
	
</body>




