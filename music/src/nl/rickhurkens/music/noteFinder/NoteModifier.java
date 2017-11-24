package nl.rickhurkens.music.noteFinder;

public enum NoteModifier {

	FLAT (-1, "\u266D"),
	NATURAL (0, ""),
	SHARP (1, "\u266F");
	
	private final int modifierValue;
	private final String modifierSign;
	
	NoteModifier(int modifierValue, String modifierSign) {
		this.modifierValue = modifierValue;
		this.modifierSign = modifierSign;
	}
	
	public int getModifierValue() {
		return modifierValue;
	}
	
	public String getModifierSign() {
		return modifierSign;
	}
}
