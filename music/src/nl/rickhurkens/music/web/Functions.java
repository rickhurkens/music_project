package nl.rickhurkens.music.web;

import java.util.List;

import nl.rickhurkens.music.noteFinder.Key;
import nl.rickhurkens.music.noteFinder.Note;
import nl.rickhurkens.music.noteFinder.Notes;

public class Functions {
	public static String getNoteClass(Note note, Key key) {
		List<Note> scale = key.getScale();
		if (scale.contains(note)) {
			if (scale.get(0).equals(note)) {
				return "included root";
			}
			return "included";
		}
		return "";
	}
	
	public static String getNoteClass(String note, Key key) {
		Note realNote = Notes.getNoteWithName(note);
		return getNoteClass(realNote, key);
	}
}