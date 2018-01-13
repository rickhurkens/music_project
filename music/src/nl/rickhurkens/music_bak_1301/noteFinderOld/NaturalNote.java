package nl.rickhurkens.music.noteFinderOld;

public enum NaturalNote {
	A (1),
	B (3),
	C (4),
	D (6),
	E (8),
	F (9),
	G (11);
	
	private final int noteValue;
	
	NaturalNote(int noteValue) {
		this.noteValue = noteValue;
	}
	
	public int getNoteValue() {
		return noteValue;
	}
}