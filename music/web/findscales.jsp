<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="functionsTaglib" %>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8">

        <title>Piano</title>
        <meta name="description" content="A html piano">
        <meta name="author" content="Rick Hurkens">

        <link rel="stylesheet" href="style.css">
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
    				${requestScope.key}
    			</h1>
    		</div>
    		<div class="instruments">
	        <div class="instrument piano">
	            <div class="octave">
	                <div class="white-keys">
	                    <div class="key c bs"><div class="overlay ${fn:getNoteClass('C',requestScope.key)} ${fn:getNoteClass('Bs',requestScope.key)}"></div></div>
	                    <div class="key d"><div class="overlay ${fn:getNoteClass('D',requestScope.key)}"></div></div>
	                    <div class="key e ff"><div class="overlay ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div></div>
	                    <div class="key f es"><div class="overlay ${fn:getNoteClass('F',requestScope.key)} ${fn:getNoteClass('Es',requestScope.key)}"></div></div>
	                    <div class="key g"><div class="overlay ${fn:getNoteClass('G',requestScope.key)}"></div></div>
	                    <div class="key a"><div class="overlay ${fn:getNoteClass('A',requestScope.key)}"></div></div>
	                    <div class="key b cf"><div class="overlay ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div></div>
	                </div>
	                <div class="black-keys">
	                    <div class="key cs df"><div class="overlay ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div></div>
	                    <div class="key ds ef"><div class="overlay ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div></div>
	                    <div class="key fs gf"><div class="overlay ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div></div>
	                    <div class="key gs af"><div class="overlay ${fn:getNoteClass('Gs',requestScope.key)} ${fn:getNoteClass('Af',requestScope.key)}"></div></div>
	                    <div class="key as bf"><div class="overlay ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div></div>
	                </div>
	            </div>
	            <div class="octave">
	                <div class="white-keys">
	                    <div class="key c bs"><div class="overlay ${fn:getNoteClass('C',requestScope.key)} ${fn:getNoteClass('Bs',requestScope.key)}"></div></div>
	                    <div class="key d"><div class="overlay ${fn:getNoteClass('D',requestScope.key)}"></div></div>
	                    <div class="key e ff"><div class="overlay ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div></div>
	                    <div class="key f es"><div class="overlay ${fn:getNoteClass('F',requestScope.key)} ${fn:getNoteClass('Es',requestScope.key)}"></div></div>
	                    <div class="key g"><div class="overlay ${fn:getNoteClass('G',requestScope.key)}"></div></div>
	                    <div class="key a"><div class="overlay ${fn:getNoteClass('A',requestScope.key)}"></div></div>
	                    <div class="key b cf"><div class="overlay ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div></div>
	                </div>
	                <div class="black-keys">
	                    <div class="key cs df"><div class="overlay ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div></div>
	                    <div class="key ds ef"><div class="overlay ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div></div>
	                    <div class="key fs gf"><div class="overlay ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div></div>
	                    <div class="key gs af"><div class="overlay ${fn:getNoteClass('Gs',requestScope.key)} ${fn:getNoteClass('Af',requestScope.key)}"></div></div>
	                    <div class="key as bf"><div class="overlay ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div></div>
	                </div>
	            </div>
	            <div class="octave">
	                <div class="white-keys">
	                    <div class="key c bs"><div class="overlay ${fn:getNoteClass('C',requestScope.key)} ${fn:getNoteClass('Bs',requestScope.key)}"></div></div>
	                    <div class="key d"><div class="overlay ${fn:getNoteClass('D',requestScope.key)}"></div></div>
	                    <div class="key e ff"><div class="overlay ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div></div>
	                    <div class="key f es"><div class="overlay ${fn:getNoteClass('F',requestScope.key)} ${fn:getNoteClass('Es',requestScope.key)}"></div></div>
	                    <div class="key g"><div class="overlay ${fn:getNoteClass('G',requestScope.key)}"></div></div>
	                    <div class="key a"><div class="overlay ${fn:getNoteClass('A',requestScope.key)}"></div></div>
	                    <div class="key b cf"><div class="overlay ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div></div>
	                </div>
	                <div class="black-keys">
	                    <div class="key cs df"><div class="overlay ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div></div>
	                    <div class="key ds ef"><div class="overlay ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div></div>
	                    <div class="key fs gf"><div class="overlay ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div></div>
	                    <div class="key gs af"><div class="overlay ${fn:getNoteClass('Gs',requestScope.key)} ${fn:getNoteClass('Af',requestScope.key)}"></div></div>
	                    <div class="key as bf"><div class="overlay ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div></div>
	                </div>
	            </div>
	            <div class="octave">
	                <div class="white-keys">
	                    <div class="key c bs"><div class="overlay ${fn:getNoteClass('C',requestScope.key)} ${fn:getNoteClass('Bs',requestScope.key)}"></div></div>
	                </div>
	            </div>
	        </div>
			<div class="instrument fretted-instrument bass">
                <div class="fretboard">
                    <div class="nut"></div>
                    <div class="fret f1"></div>
                    <div class="fret f2"></div>
                    <div class="fret f3"></div>
                    <div class="fret f4"></div>
                    <div class="fret f5"></div>
                    <div class="fret f6"></div>
                    <div class="fret f7"></div>
                    <div class="fret f8"></div>
                    <div class="fret f9"></div>
                    <div class="fret f10"></div>
                    <div class="fret f11"></div>
                    <div class="fret f12"></div>
                </div>
                <div class="strings">
                    <div class="string g-string">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                    <div class="string d-string">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                    <div class="string a-string">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                    <div class="string e-string">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                </div>
                <div class="notes">
                    <div class="string g-string">
                        <div class="fret-space s1 Gs Af ${fn:getNoteClass('Gs',requestScope.key)} ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s2 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                        <div class="fret-space s3 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s4 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                        <div class="fret-space s5 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s6 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s7 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                        <div class="fret-space s8 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s9 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                        <div class="fret-space s10 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s11 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s12 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                    </div>
                    <div class="string d-string">
                        <div class="fret-space s1 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s2 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                        <div class="fret-space s3 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s4 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s5 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                        <div class="fret-space s6 Gs ${fn:getNoteClass('Gs',requestScope.key)} Af ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s7 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                        <div class="fret-space s8 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s9 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                        <div class="fret-space s10 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s11 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s12 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                    </div>
                    <div class="string a-string">
                        <div class="fret-space s1 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s2 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                        <div class="fret-space s3 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s4 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s5 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                        <div class="fret-space s6 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s7 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                        <div class="fret-space s8 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s9 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s10 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                        <div class="fret-space s11 Gs ${fn:getNoteClass('Gs',requestScope.key)} Af ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s12 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                    </div>
                    <div class="string e-string">
                        <div class="fret-space s1 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s2 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s3 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                        <div class="fret-space s4 Gs ${fn:getNoteClass('Gs',requestScope.key)} Af ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s5 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                        <div class="fret-space s6 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s7 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                        <div class="fret-space s8 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s9 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s10 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                        <div class="fret-space s11 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s12 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                    </div>
                </div>
            </div>
            <div class="instrument fretted-instrument guitar">
                <div class="fretboard">
                    <div class="nut"></div>
                    <div class="fret f1"></div>
                    <div class="fret f2"></div>
                    <div class="fret f3"></div>
                    <div class="fret f4"></div>
                    <div class="fret f5"></div>
                    <div class="fret f6"></div>
                    <div class="fret f7"></div>
                    <div class="fret f8"></div>
                    <div class="fret f9"></div>
                    <div class="fret f10"></div>
                    <div class="fret f11"></div>
                    <div class="fret f12"></div>
                </div>
                <div class="strings">
                    <div class="string high-e-string">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                    <div class="string b-string">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                    <div class="string g-string">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                    <div class="string d-string wound">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                    <div class="string a-string wound">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                    <div class="string e-string wound">
                        <div class="fret-space s1"></div>
                        <div class="fret-space s2"></div>
                        <div class="fret-space s3"></div>
                        <div class="fret-space s4"></div>
                        <div class="fret-space s5"></div>
                        <div class="fret-space s6"></div>
                        <div class="fret-space s7"></div>
                        <div class="fret-space s8"></div>
                        <div class="fret-space s9"></div>
                        <div class="fret-space s10"></div>
                        <div class="fret-space s11"></div>
                        <div class="fret-space s12"></div>
                    </div>
                </div>
                <div class="notes">
                    <div class="string high-e-string">
                        <div class="fret-space s1 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s2 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s3 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                        <div class="fret-space s4 Gs ${fn:getNoteClass('Gs',requestScope.key)} Af ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s5 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                        <div class="fret-space s6 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s7 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                        <div class="fret-space s8 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s9 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s10 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                        <div class="fret-space s11 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s12 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                    </div>
                    <div class="string b-string">
                        <div class="fret-space s1 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s2 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s3 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                        <div class="fret-space s4 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s5 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                        <div class="fret-space s6 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s7 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s8 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                        <div class="fret-space s9 Gs ${fn:getNoteClass('Gs',requestScope.key)} Af ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s10 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                        <div class="fret-space s11 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s12 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                    </div>
                    <div class="string g-string">
                        <div class="fret-space s1 Gs ${fn:getNoteClass('Gs',requestScope.key)} Af ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s2 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                        <div class="fret-space s3 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s4 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                        <div class="fret-space s5 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s6 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s7 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                        <div class="fret-space s8 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s9 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                        <div class="fret-space s10 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s11 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s12 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                    </div>
                    <div class="string d-string wound">
                        <div class="fret-space s1 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s2 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                        <div class="fret-space s3 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s4 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s5 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                        <div class="fret-space s6 Gs ${fn:getNoteClass('Gs',requestScope.key)} Af ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s7 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                        <div class="fret-space s8 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s9 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                        <div class="fret-space s10 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s11 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s12 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                    </div>
                    <div class="string a-string wound">
                        <div class="fret-space s1 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s2 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                        <div class="fret-space s3 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s4 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s5 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                        <div class="fret-space s6 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s7 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                        <div class="fret-space s8 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s9 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s10 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                        <div class="fret-space s11 Gs ${fn:getNoteClass('Gs',requestScope.key)} Af ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s12 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                    </div>
                    <div class="string e-string wound">
                        <div class="fret-space s1 Es F ${fn:getNoteClass('Es',requestScope.key)} ${fn:getNoteClass('F',requestScope.key)}"></div>
                        <div class="fret-space s2 Fs Gf ${fn:getNoteClass('Fs',requestScope.key)} ${fn:getNoteClass('Gf',requestScope.key)}"></div>
                        <div class="fret-space s3 G ${fn:getNoteClass('G',requestScope.key)}"></div>
                        <div class="fret-space s4 Gs ${fn:getNoteClass('Gs',requestScope.key)} Af ${fn:getNoteClass('Af',requestScope.key)}"></div>
                        <div class="fret-space s5 A ${fn:getNoteClass('A',requestScope.key)}"></div>
                        <div class="fret-space s6 As Bf ${fn:getNoteClass('As',requestScope.key)} ${fn:getNoteClass('Bf',requestScope.key)}"></div>
                        <div class="fret-space s7 B Cf ${fn:getNoteClass('B',requestScope.key)} ${fn:getNoteClass('Cf',requestScope.key)}"></div>
                        <div class="fret-space s8 Bs C ${fn:getNoteClass('Bs',requestScope.key)} ${fn:getNoteClass('C',requestScope.key)}"></div>
                        <div class="fret-space s9 Bs C ${fn:getNoteClass('Cs',requestScope.key)} ${fn:getNoteClass('Df',requestScope.key)}"></div>
                        <div class="fret-space s10 D ${fn:getNoteClass('D',requestScope.key)}"></div>
                        <div class="fret-space s11 Ds Ef ${fn:getNoteClass('Ds',requestScope.key)} ${fn:getNoteClass('Ef',requestScope.key)}"></div>
                        <div class="fret-space s12 E Ff ${fn:getNoteClass('E',requestScope.key)} ${fn:getNoteClass('Ff',requestScope.key)}"></div>
                    </div>
                </div>
            </div>
    		</div>
    </body>
</html>