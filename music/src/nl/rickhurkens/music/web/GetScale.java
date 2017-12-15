package nl.rickhurkens.music.web;

import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nl.rickhurkens.music.noteFinderOld.AbstractScale;
import nl.rickhurkens.music.noteFinderOld.Key;
import nl.rickhurkens.music.noteFinderOld.Note;
import nl.rickhurkens.music.noteFinderOld.Notes;

import java.io.IOException;

public class GetScale extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
		String noteString = request.getParameter("note");
		String majorMinor = request.getParameter("majorMinor").toUpperCase();
		
		Note rootNote = Notes.getNoteWithName(noteString);
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
