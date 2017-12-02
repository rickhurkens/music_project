package nl.rickhurkens.music.noteFinder;

public class Note {
	private NaturalNote natural;
	private NoteModifier modifier;
	
	public Note(String noteName) {
		this.natural = NaturalNote.valueOf(noteName.substring(0,1));
		String theModifier = noteName.substring(1,2);
		if (theModifier == "s") {
			this.modifier = NoteModifier.SHARP;
		} else if (theModifier == "f") {
			this.modifier = NoteModifier.FLAT;
		} else {
			this.modifier = NoteModifier.NATURAL;
		}
	}
	
	public Note(NaturalNote natural, NoteModifier modifier) {
		this.natural = natural;
		this.modifier = modifier;
	}
	
	public Note(NaturalNote natural) {
		this(natural, NoteModifier.NATURAL);
	}
	
	public int getValue() {
		return (natural.getNoteValue() + modifier.getModifierValue()) % 12;
	}
	
	public String getName() {
		return natural.name() + modifier.getModifierLetter();
	}
	
	public String getDisplayName() {
		return natural.name() + modifier.getModifierSign();
	}
	
	public NaturalNote getNatural() {
		return natural;
	}
	
	public NoteModifier getModifier() {
		return modifier;
	}
	
	public String toString() {
		return getName();
	}
}
