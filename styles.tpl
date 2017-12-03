<head>
<style> 
    input[type=text] {
        width: 40%;
		top: 50%;
    	left: 50%;
		position: fixed
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        background-color: white;
        background-image: url("http://www.pvhc.net/img207/bydtkmqbpsmeqcgkgidx.png");
        background-position: 10px 10px; 
        background-repeat: no-repeat;
        background-size: 25px 25px;
        padding: 12px 20px 12px 40px;
        -webkit-transition: width 0.4s ease-in-out;
        transition: width 0.4s ease-in-out;
    }

    input[type=text]:focus {
        width: 50%;
        background-color: #fff;
        border-color: #7598c1;
        -webkit-box-shadow: 0 0 5px rgba(109,207,246,.5);
        -moz-box-shadow: 0 0 5px rgba(109,207,246,.5);
        box-shadow: 0 0 5px rgba(109,207,246,.5);
    }
</style>
</head>



<head>
<style>
    @import url(https://fonts.googleapis.com/css?family=Jura);
    body{
        font-family:'Jura';
        background:#f2f2f2;
        margin:0;
        padding:25px;
    }
    section{
        height:100vh;
        width:100vw;
    }
    .content{
        position:relative;
        left:50%;
        top:50%;
        transform:translate(-50%, -50%);
        -webkit-transform:translate(-50%, -50%);
    }
    .desc{
        font-size:1em;
        color:#000;
        padding:20;
        text-align:center;
        text-transform:uppercase;
        opacity:0;
        letter-spacing:-5px;
        animation: letterSpacing 2s ease-in-out 0.2s;
        -webkit-animation: letterSpacing 2s ease-in-out 0.2s;
        animation-fill-mode:forwards;
        -webkit-animation-fill-mode:forwards;
    }
    @keyframes letterSpacing{
        0%{
            letter-spacing:-5px;
            opacity:0;
        }
        100%{
            letter-spacing:1px;
            opacity:1;
        }
        }
        @-webkit-keyframes letterSpacing{
        0%{
            letter-spacing:-5px;
            opacity:0;
        }
        100%{
            letter-spacing:1px;
            opacity:1;
        }
    }
</style>
</head>



<head>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700);

@font-face {
	font-family: 'loveloblack';
	src:    url('http://www.netnibbl.es/wp-content/themes/netnibbles/fonts/lovelo_black-webfont.eot');
	src:    url('http://www.netnibbl.es/wp-content/themes/netnibbles/fonts/lovelo_black-webfont.eot?#iefix') format('embedded-opentype'),
			url('http://www.netnibbl.es/wp-content/themes/netnibbles/fonts/lovelo_black-webfont.woff') format('woff'),
			url('http://www.netnibbl.es/wp-content/themes/netnibbles/fonts/lovelo_black-webfont.ttf') format('truetype'),
			url('http://www.netnibbl.es/wp-content/themes/netnibbles/fonts/lovelo_black-webfont.svg#loveloblack') format('svg');
	font-weight: normal;
	font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
	@font-face {
	font-family: 'loveloblack';
	src: url('http://www.netnibbl.es/wp-content/themes/netnibbles/fonts/lovelo_black-webfont.svg#loveloblack') format('svg');
	}
}

.logo {
	display: block;
	position: relative;
	width: 220px;
	height: 220px;
	margin: 0 auto;
	padding: 0;
	line-height: 1;
  text-decoration: none;
}

	.logo * {
		line-height: 1;
		padding: 0;
		margin: 0;
	}

	.logo-roundel {
		width: 200px;
		height: 200px;
		-webkit-border-radius: 150px;
		border-radius: 150px;
		border: 10px solid #000000;
		-webkit-transition: all 500ms ease;
		-moz-transition: all 500ms ease;
		-ms-transition: all 500ms ease;
		-o-transition: all 500ms ease;
		transition: all 500ms ease;
	}

    .logo-triangle {
		margin: auto;
		top: -70px;
		left: 0;
		right: 0;
		width: 180px;
		height: 180px;
		transform: rotate(225deg);
		-webkit-transform: rotate(225deg);
		-moz-transform: rotate(225deg);
		-o-transform: rotate(225deg);
		-ms-transform: rotate(225deg);
		border-right: 4px solid #3d5169;
		border-bottom: 4px solid #3d5169;
		margin-top:10vh;
	}

	.logo-triangle-container {
    	position: absolute;
		width: 200px;
		height: 200px;
		top: 100px
		border-top: 4px solid #3d5169;
		transform: rotate(-225deg);
		-webkit-transform: rotate(-225deg);
		-moz-transform: rotate(-225deg);
		-o-transform: rotate(-225deg);
		-ms-transform: rotate(-225deg);
	}

	.left-n {
		color: #000000;
		font-size: 80px;
		font-family: "loveloblack";
		text-shadow: -1px 1px 0px rgba(255, 255, 255, 1);
		position: absolute;
		left: 54px;
		top: 54px;
	}

	.right-n {
		color: #000000;
		font-size: 80px;
		font-family: "loveloblack";
		text-shadow: -1px 1px 0px rgba(255, 255, 255, 1);
		position: absolute;
		right: 54px;
		top: 54px;
        -moz-transform: scaleX(-1);
        -o-transform: scaleX(-1);
        -webkit-transform: scaleX(-1);
        transform: scaleX(-1);
        filter: FlipH;
        -ms-filter: "FlipH";
	}

	.logo-site-name {
		font-family: "loveloblack";
		color: #333333;	
		text-transform: uppercase;
		letter-spacing: 3px;
		font-size: 12px;
		position: relative;
		top: 134px;
		left: 1px;
		-webkit-transition: all 500ms ease;
		-moz-transition: all 500ms ease;
		-ms-transition: all 500ms ease;
		-o-transition: all 500ms ease;
		transition: all 500ms ease;
	}

	.logo:hover .logo-roundel {
		background-color: #FFFFFF;
		-webkit-box-shadow:  0px 1px 0px 1px rgba(255, 255, 255, 1);
        box-shadow:  0px 1px 0px 1px rgba(255, 255, 255, 1);
		-webkit-transition: all 500ms ease;
		-moz-transition: all 500ms ease;
		-ms-transition: all 500ms ease;
		-o-transition: all 500ms ease;
		transition: all 500ms ease;
	}

	.logo:hover .left-n {
		position: absolute;
		left: inherit;
		right: 54px;
		top: 54px;
	}

	.logo:hover .right-n {
		position: absolute;
		right: inherit;
		left: 54px;
		top: 54px;
	}

	.logo:hover .logo-site-name {
		position: relative;
		top: 142px;
		-webkit-transition: all 500ms ease;
		-moz-transition: all 500ms ease;
		-ms-transition: all 500ms ease;
		-o-transition: all 500ms ease;
		transition: all 500ms ease;
	}
</style>
</head>



<head>
<style>

	b {
	  position: relative;
	  cursor: pointer;
	  top: 2vh;
	  left: 8vw;
	  color: #004870;
	  transform: translate3d(-50%, -50%, 0);
	  padding: 0.7em calc(0.7em * 1.2);
	  display: inline-block;
	  border: 3px solid transparent;
	  position: relative;
	  font-size: 1.2em;
	  letter-spacing: 0.07em;
	}
	b.text {
	  font-family: proxima-nova;
	  transform: translate3d(0, 0.7em, 0);
	  display: block;
	  transition: transform 0.4s cubic-bezier(0.2, 0, 0, 1) 0.4s;
	}
	b:after {
	  position: absolute;
	  content: '';
	  bottom: -3px;
	  left: calc(0.7em * 1.2);
	  right: calc(0.7em * 1.2);
	  height: 3px;
	  background: #333333;
	  z-index: -1;
	  transition: transform 0.8s cubic-bezier(1, 0, 0.37, 1) 0.2s, right 0.2s cubic-bezier(0.04, 0.48, 0, 1) 0.6s, left 0.4s cubic-bezier(0.04, 0.48, 0, 1) 0.6s;
	  transform-origin: left;
	}

	.line {
	  position: absolute;
	  background: #333333;
	}
	.line.-right, .line.-left {
	  width: 3px;
	  bottom: -3px;
	  top: -3px;
	  transform: scale3d(1, 0, 1);
	}
	.line.-top, .line.-bottom {
	  height: 3px;
	  left: -3px;
	  right: -3px;
	  transform: scale3d(0, 1, 1);
	}
	.line.-right {
	  right: -3px;
	  transition: transform 0.1s cubic-bezier(1, 0, 0.65, 1.01) 0.23s;
	  transform-origin: top;
	}
	.line.-top {
	  top: -3px;
	  transition: transform 0.08s linear 0.43s;
	  transform-origin: left;
	}
	.line.-left {
	  left: -3px;
	  transition: transform 0.08s linear 0.51s;
	  transform-origin: bottom;
	}
	.line.-bottom {
	  bottom: -3px;
	  transition: transform 0.3s cubic-bezier(1, 0, 0.65, 1.01);
	  transform-origin: right;
	}

	b:hover.text,
	b:active.text {
	  transform: translate3d(0, 0, 0);
	  transition: transform 0.6s cubic-bezier(0.2, 0, 0, 1) 0.4s;
	}
	b:hover:after,
	b:active:after {
	  transform: scale3d(0, 1, 1);
	  right: -3px;
	  left: -3px;
	  transform-origin: right;
	  transition: transform 0.2s cubic-bezier(1, 0, 0.65, 1.01) 0.17s, right 0.2s cubic-bezier(1, 0, 0.65, 1.01), left 0s 0.3s;
	}
	b:hover .line,
	b:active .line {
	  transform: scale3d(1, 1, 1);
	}
	b:hover .line.-right,
	b:active .line.-right {
	  transition: transform 0.1s cubic-bezier(1, 0, 0.65, 1.01) 0.2s;
	  transform-origin: bottom;
	}
	b:hover .line.-top,
	b:active .line.-top {
	  transition: transform 0.08s linear 0.4s;
	  transform-origin: right;
	}
	b:hover .line.-left,
	b:active .line.-left {
	  transition: transform 0.08s linear 0.48s;
	  transform-origin: top;
	}
	b:hover .line.-bottom,
	b:active .line.-bottom {
	  transition: transform 0.5s cubic-bezier(0, 0.53, 0.29, 1) 0.56s;
	  transform-origin: left;
}


</style>
</head>



<head>
<style>
input[type=submit]{
	  position: relative;
	  cursor: pointer;
	  top: 2vh;
	  left: 6vw;
	  color: #004870;
	  transform: translate3d(-50%, -50%, 0);
	  padding: 0.7em calc(0.7em * 1.2);
	  display: inline-block;
	  border: 2px solid #004870;
	  border-radius: 5px;
	  position: relative;
	  font-size: 1em;
	  letter-spacing: 0.07em;
	  background: transparent;
	}
input[type=submit].text {
	  font-family: proxima-nova;
	  transform: translate3d(0, 0.7em, 0);
	  display: block;
	  transition: transform 0.4s cubic-bezier(0.2, 0, 0, 1) 0.4s;
	}

</style>
</head>

<head>
<style>
/* Change container width */
@media (min-width: 900px) {
.container {
    max-width: 900px;
  }
}
.result-summary {
  color: #777;
  margin-bottom: .2em;
}
.result-summary hr {
  margin: 5px 0;
}
.result-notice {
  font-size: 130%;
  margin: 0.2em 0 0.7em 0;
  padding: 0.6em;
  border: 1px solid #eee;
  border-left-color: #fbc229;
  border-left-width: 5px;
  border-radius: 3px;
}
.no-results-found {
  font-size: 1.5em;
  margin: 2em 0;
  text-align: center;
}
.result {
  margin-bottom: 1.5em;
}
.result .result-title {
  font-size: 150%;
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden;
  max-height: 2em;
}
.result .result-url {
  color: #777;
  text-overflow: ellipsis;
  overflow: hidden;
  max-height: 2em;
  white-space: nowrap;
}
.result .result-text {
  overflow: hidden;
  max-height: 4.5em;
  margin-bottom: 1.5em;
}
.notice {
  color: #777;
}

</style>
</head>

<head>
<style>

</style>
</head>

