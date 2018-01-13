package nl.rickhurkens.music.noteFinderOld;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;

public class Notes {
	public final static Map<Integer,List<Note>> VALUE_TO_LIST_OF_NOTES = new HashMap<>();
	public final static Set<Note> NOTES = new HashSet<>();
	public final static Map<String,Note> NAME_TO_NOTE = new HashMap<>();
	
	static {
		addAllNotes();
	}
	
	private static void addAllNotes() {
		for (NaturalNote natural : NaturalNote.values()) {
			for (NoteModifier modifier : NoteModifier.values()) {
				Note note = new Note(natural, modifier);
				Integer value = new Integer(note.getValue());
				NOTES.add(note);
				NAME_TO_NOTE.put(note.getName(), note);
				
				if (VALUE_TO_LIST_OF_NOTES.containsKey(value)) {
					VALUE_TO_LIST_OF_NOTES.get(value).add(note);
				} else {
					List<Note> noteList = new ArrayList<>();
					noteList.add(note);
					VALUE_TO_LIST_OF_NOTES.put(value, noteList);
				}
			}
		}
		
	}
	
	public static List<Note> getNotesOfValue(int value) {
		return VALUE_TO_LIST_OF_NOTES.get(new Integer(value));
	}
	
	public static Note getNoteWithName(String name) {
		return NAME_TO_NOTE.get(name);
	}
}