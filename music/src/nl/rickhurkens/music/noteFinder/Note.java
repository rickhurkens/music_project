package nl.rickhurkens.music.noteFinder;

/**
 * @author Rick
 * A musical note. The name consists of one uppercase letter (A-G) and
 * one optional # or b for sharp or flat.
 * The value range is 0-11, which is one octave. Anything higher or 
 * lower just starts the sequence again.
 */
public class Note {
	
	private String name;
	private int semitoneValue;
	private String modifier;
	
	/**
	 * Creates a Note from a name.
	 * @param name consists of one uppercase letter (A-G) and one optional
	 * # or b for sharp or flat.
	 */
	public Note(String name) {
		this.name = name;
		this.semitoneValue = Notes.NAME_TO_SEMITONE.get(name);
		if (name.length() == 1) {
			modifier = "natural";
		} else if (name.charAt(1) == '#') {
			modifier = "sharp";
		} else {
			modifier = "flat";
		}
	}
	
	/**
	 * @return the value in semitones (0-11).
	 */
	public int getValue() {
		return semitoneValue;
	}
	
	/**
	 * @return the name of this note for display purposes.
	 * At the moment this is the same as its name, but it could
	 * be improved by displaying the real sharp or flat sign.
	 */
	public String getDisplayName() {
		return name;
	}
	
	/**
	 * @return 'true' if this note is a sharp, 'false' if this note is 
	 * a natural or a flat.
	 */
	public boolean isSharp() {
		return modifier.equals("sharp");
	}
	
	/**
	 * @return 'true' if this note is a flat, 'false' if this note is a
	 * natural or a sharp.
	 */
	public boolean isFlat() {
		return modifier.equals("flat");
	}
	
	@Override
	public String toString() {
		return name;
	}
}
