package nl.rickhurkens.music.web;

import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nl.rickhurkens.music.noteFinder.NoteGroups;
import nl.rickhurkens.music.noteFinder.NoteGroup;

import java.io.IOException;

public class GetScale extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
		String noteString = request.getParameter("note");
		String groupName = request.getParameter("group");
		
		// TODO take away? rootNote = Notes.getNote(noteString);
		NoteGroup noteGroup = NoteGroups.getInstance(noteString, groupName);
		
		request.setAttribute("noteGroup", noteGroup);
		
		RequestDispatcher view = request.getRequestDispatcher("findscales.jsp");
		view.forward(request, response);
		
		/*
		// test stuff below, real stuff in multiline comment
		request.setAttribute("note", noteString);
		request.setAttribute("group", groupName);
		RequestDispatcher view = request.getRequestDispatcher("test.jsp");
		view.forward(request,  response);*/
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
		RequestDispatcher view = request.getRequestDispatcher("findscales.jsp");
		response.addHeader("initial-load", "true");
		view.forward(request, response);
	}
}
