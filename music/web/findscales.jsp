<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="functionsTaglib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8">

        <title>Find notes and stuff.</title>
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
					<option value="C#">C&#9839;</option>
					<option value="Db">D&#9837;</option>
					<option value="D">D</option>
					<option value="D#">D&#9839;</option>
					<option value="Eb">E&#9837;</option>
					<option value="E">E</option>
					<option value="F">F</option>
					<option value="F#">F&#9839;</option>
					<option value="Gb">G&#9837;</option>
					<option value="G">G</option>
					<option value="G#">G&#9839;</option>
					<option value="Ab">A&#9837;</option>
					<option value="A">A</option>
					<option value="A#">A&#9839;</option>
					<option value="Bb">B&#9837;</option>
					<option value="B">B</option>
				</select>
				<select name="group" size="1">
					<option value="ionian">Major (ionian)</option>
				</select>
				<br /><br />
				<div style="margin: 0 auto">
					<input type="SUBMIT" />
				</div>
			</form>
    		</div>
    		<div class="sometitle">
    			<h1>
    				${requestScope.noteGroup}
    			</h1>
    		</div>
    		<div class="instruments">
	        <div class="instrument piano">
	            <div class="octave">
	                <div class="white-keys">
	                    <div class="key c bs"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key d"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key e ff"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key f es"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key g"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key a"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key b cf"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                </div>
	                <div class="black-keys">
	                    <div class="key cs df"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key ds ef"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key fs gf"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key gs af"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key as bf"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                </div>
	            </div>
	            <div class="octave">
	                <div class="white-keys">
	                    <div class="key c bs"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key d"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key e ff"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key f es"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key g"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key a"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key b cf"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                </div>
	                <div class="black-keys">
	                    <div class="key cs df"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key ds ef"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key fs gf"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key gs af"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key as bf"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                </div>
	            </div>
	            <div class="octave">
	                <div class="white-keys">
	                    <div class="key c bs"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key d"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key e ff"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key f es"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key g"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key a"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key b cf"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                </div>
	                <div class="black-keys">
	                    <div class="key cs df"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key ds ef"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key fs gf"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key gs af"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                    <div class="key as bf"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
	                </div>
	            </div>
	            <div class="octave">
	                <div class="white-keys">
	                    <div class="key c bs"><div class="overlay
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div></div>
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
                        <div class="fret-space s1 Gs Af
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                    </div>
                    <div class="string d-string">
                        <div class="fret-space s1 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 Gs
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                    </div>
                    <div class="string a-string">
                        <div class="fret-space s1 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 Gs Af
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                    </div>
                    <div class="string e-string">
                        <div class="fret-space s1 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 Gs
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
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
                        <div class="fret-space s1 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 Gs
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                    </div>
                    <div class="string b-string">
                        <div class="fret-space s1 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 Gs
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                    </div>
                    <div class="string g-string">
                        <div class="fret-space s1 Gs
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                    </div>
                    <div class="string d-string wound">
                        <div class="fret-space s1 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 Gs
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                    </div>
                    <div class="string a-string wound">
                        <div class="fret-space s1 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 Gs Af
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                    </div>
                    <div class="string e-string wound">
                        <div class="fret-space s1 Es F
							<c:if test='${fn:isSemitoneInGroup(9,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(9,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s2 Fs Gf
							<c:if test='${fn:isSemitoneInGroup(10,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(10,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s3 G
							<c:if test='${fn:isSemitoneInGroup(11,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(11,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s4 Gs
							<c:if test='${fn:isSemitoneInGroup(0,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(0,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s5 A
							<c:if test='${fn:isSemitoneInGroup(1,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(1,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s6 As Bf
							<c:if test='${fn:isSemitoneInGroup(2,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(2,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s7 B Cf
							<c:if test='${fn:isSemitoneInGroup(3,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(3,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s8 Bs C
							<c:if test='${fn:isSemitoneInGroup(4,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(4,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s9 Cs Df
							<c:if test='${fn:isSemitoneInGroup(5,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(5,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s10 D
							<c:if test='${fn:isSemitoneInGroup(6,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(6,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s11 Ds Ef
							<c:if test='${fn:isSemitoneInGroup(7,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(7,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                        <div class="fret-space s12 E Ff
							<c:if test='${fn:isSemitoneInGroup(8,requestScope.noteGroup)}'>
								included
								<c:if test='${fn:isRootOfGroup(8,requestScope.noteGroup)}'>
									root
								</c:if>
							</c:if>"></div>
                    </div>
                </div>
            </div>
    		</div>
    </body>
</html>