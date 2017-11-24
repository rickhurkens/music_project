package nl.rickhurkens.music.noteFinder;

import java.util.List;
import java.util.StringJoiner;
import java.util.ArrayList;

public class Key {
	private List<Note> scale = new ArrayList<>();
	private NoteModifier scaleModifier;
	private AbstractScale abstractScale;
	
	public Key(Note rootNote, AbstractScale abstractScale) {
		addNote(rootNote);
		this.abstractScale = abstractScale;
		
		int[] intervals = abstractScale.getIntervals();
		
		for(int i = 1; i < intervals.length; i++) {
			int noteValue = (rootNote.getValue() + intervals[i]) % 12;
			List<Note> notesToChooseFrom = Notes.getNotesOfValue(noteValue);
			addNote(findCorrectNote(notesToChooseFrom));
		}
	}
	
	public String toString() {
		StringBuilder sb = new StringBuilder("The ");
		sb.append(scale.get(0) + " " + abstractScale + " scale: ");
		StringJoiner sj = new StringJoiner(", ","",".");
		scale.forEach(note->sj.add(note.toString()));
		sb.append(sj);
		return sb.toString();
	}
	
	public List<Note> getScale() {
		return new ArrayList<>(scale);
	}
	
	private void addNote(Note newNote) {
		scale.add(newNote);
		if (scaleModifier == null && newNote.getModifier() != NoteModifier.NATURAL) {
			scaleModifier = newNote.getModifier();
		}
	}
	
	private Note findCorrectNote(List<Note> notesToChooseFrom) {		
		if (notesToChooseFrom.size() > 1) {
			NaturalNote firstNatural = notesToChooseFrom.get(0).getNatural();
			NoteModifier firstModifier = notesToChooseFrom.get(0).getModifier();
			NaturalNote previousNatural = scale.get(scale.size() - 1).getNatural();
			
			if ( ( firstNatural == previousNatural ) ||
					( scaleModifier != null && firstModifier != NoteModifier.NATURAL && firstModifier != scaleModifier ) ) {
				return notesToChooseFrom.get(1);
			} 
		}
		return notesToChooseFrom.get(0);
	}
}