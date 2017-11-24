package nl.rickhurkens.music.web;

import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nl.rickhurkens.music.noteFinder.Note;
import nl.rickhurkens.music.noteFinder.Notes;
import nl.rickhurkens.music.noteFinder.AbstractScale;
import nl.rickhurkens.music.noteFinder.Key;

import java.io.IOException;

public class GetScale extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
		String noteString = request.getParameter("note");
		String majorMinor = request.getParameter("majorMinor").toUpperCase();
		
		String naturalString = noteString.substring(0,1);
		StringBuilder noteName = new StringBuilder(naturalString);
		
		String modifierString = "";
		if (noteString.length() > 1) {
			modifierString = noteString.substring(1,2);
			if (modifierString == "s") {
				noteName.append("\u266F");
			} else if (modifierString == "f") {
				noteName.append("\u266D");
			}
		}
		
		Note rootNote = Notes.NAME_TO_NOTE.get(noteName.toString());
		Key key = new Key(rootNote, AbstractScale.valueOf(majorMinor));
		
		request.setAttribute("key", key);
		RequestDispatcher view = request.getRequestDispatcher("findscales.jsp");
		view.forward(request, response);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
		RequestDispatcher view = request.getRequestDispatcher("findscales.jsp");
		response.addHeader("initial-load", "true");
		view.forward(request, response);
	}
}
