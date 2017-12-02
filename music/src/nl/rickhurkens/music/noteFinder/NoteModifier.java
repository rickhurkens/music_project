package nl.rickhurkens.music.noteFinder;

public enum NoteModifier {

	FLAT (-1, "f", "\u266D"),
	NATURAL (0, "", ""),
	SHARP (1, "s", "\u266F");
	
	private final int modifierValue;
	private final String modifierLetter;
	private final String modifierSign;
	
	NoteModifier(int modifierValue, String modifierLetter, String modifierSign) {
		this.modifierValue = modifierValue;
		this.modifierLetter = modifierLetter;
		this.modifierSign = modifierSign;
	}
	
	public int getModifierValue() {
		return modifierValue;
	}
	
	public String getModifierLetter() {
		return modifierLetter;
	}
	
	public String getModifierSign() {
		return modifierSign;
	}
}
