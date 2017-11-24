<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.util.List, nl.rickhurkens.music.noteFinder.Key, nl.rickhurkens.music.noteFinder.Note" %>

    

<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8">

        <title>Piano</title>
        <meta name="description" content="A html piano">
        <meta name="author" content="Rick Hurkens">

        <link rel="stylesheet" href="style.css">

        <style>
            
            	<%
            		if (response.getHeader("initial-load") == null) {
            			Key key = (Key)request.getAttribute("key");
                    	List<Note> scale = key.getScale();

                    	for(Note note : scale) {
                        	StringBuilder noteString = new StringBuilder(note.getName().substring(0,1).toLowerCase());
                        	if (note.getName().length() > 1) {
    	        					String modifier = note.getName().substring(1,2);
    	        					if (modifier.equals("\u266D")) {
    	        						noteString.append("f");
    	        					} else if (modifier.equals("\u266F")){
    	        						noteString.append("s");
    	        					}
    	        				}
                        	out.print(".key." + noteString + " .overlay {");
                        	out.print("    display: block;");
                        	out.println("}");
                    	}
            		}
            	%>

        </style> 
    </head>
    <body>
    		<div class="notespicker">
    			<form method="POST" action="findscales.html">
				Select scale:
				<select name="note" size="1">
					<option value="C">C</option>
					<option value="Cs">C&#9839;</option>
					<option value="Df">D&#9837;</option>
					<option value="D">D</option>
					<option value="Ds">D&#9839;</option>
					<option value="Ef">E&#9837;</option>
					<option value="E">E</option>
					<option value="F">F</option>
					<option value="Fs">F&#9839;</option>
					<option value="Gf">G&#9837;</option>
					<option value="G">G</option>
					<option value="Gs">G&#9839;</option>
					<option value="Af">A&#9837;</option>
					<option value="A">A</option>
					<option value="As">A&#9839;</option>
					<option value="Bf">B&#9837;</option>
					<option value="B">B</option>
				</select>
				<select name="majorMinor" size="1">
					<option value="major">Major</option>
					<option value="minor">Minor</option>
				</select>
				<!-- modes
					<select name="mode" size="5">
						<option value="1">Ionian</option>
						<option value="2">Dorian</option>
						<option value="3">Phrygian</option>
						<option value="4">Lydian</option>
						<option value="5">Mixolydian</option>
						<option value="6">Aeolian</option>
						<option value="7">Locrian</option>
					</select>
				 -->
				<br /><br />
				<div style="margin: 0 auto">
					<input type="SUBMIT" />
				</div>
			</form>
    		</div>
    		<div class="sometitle">
    			<h1>
    				<% 
    					if (response.getHeader("initial-load") == null) {
    						out.print(request.getAttribute("key").toString()); 
    					}	
    				%>
    			</h1>
    		</div>
        <div class="piano">
            <div class="octave">
                <div class="white-keys">
                    <div class="key c bs"><div class="overlay"></div></div>
                    <div class="key d"><div class="overlay"></div></div>
                    <div class="key e ff"><div class="overlay"></div></div>
                    <div class="key f es"><div class="overlay"></div></div>
                    <div class="key g"><div class="overlay"></div></div>
                    <div class="key a"><div class="overlay"></div></div>
                    <div class="key b cf"><div class="overlay"></div></div>
                </div>
                <div class="black-keys">
                    <div class="key cs df"><div class="overlay"></div></div>
                    <div class="key s ef"><div class="overlay"></div></div>
                    <div class="key fs gf"><div class="overlay"></div></div>
                    <div class="key gs af"><div class="overlay"></div></div>
                    <div class="key as bf"><div class="overlay"></div></div>
                </div>
            </div>
            <div class="octave">
                <div class="white-keys">
                    <div class="key c bs"><div class="overlay"></div></div>
                    <div class="key d"><div class="overlay"></div></div>
                    <div class="key e ff"><div class="overlay"></div></div>
                    <div class="key f es"><div class="overlay"></div></div>
                    <div class="key g"><div class="overlay"></div></div>
                    <div class="key a"><div class="overlay"></div></div>
                    <div class="key b cf"><div class="overlay"></div></div>
                </div>
                <div class="black-keys">
                    <div class="key cs df"><div class="overlay"></div></div>
                    <div class="key s ef"><div class="overlay"></div></div>
                    <div class="key fs gf"><div class="overlay"></div></div>
                    <div class="key gs af"><div class="overlay"></div></div>
                    <div class="key as bf"><div class="overlay"></div></div>
                </div>
            </div>
            <div class="octave">
                <div class="white-keys">
                    <div class="key c bs"><div class="overlay"></div></div>
                    <div class="key d"><div class="overlay"></div></div>
                    <div class="key e ff"><div class="overlay"></div></div>
                    <div class="key f es"><div class="overlay"></div></div>
                    <div class="key g"><div class="overlay"></div></div>
                    <div class="key a"><div class="overlay"></div></div>
                    <div class="key b cf"><div class="overlay"></div></div>
                </div>
                <div class="black-keys">
                    <div class="key cs df"><div class="overlay"></div></div>
                    <div class="key s ef"><div class="overlay"></div></div>
                    <div class="key fs gf"><div class="overlay"></div></div>
                    <div class="key gs af"><div class="overlay"></div></div>
                    <div class="key as bf"><div class="overlay"></div></div>
                </div>
            </div>
            <div class="octave">
                <div class="white-keys">
                    <div class="key c bs"><div class="overlay"></div></div>
                </div>
            </div>
        </div>

    </body>
</html>