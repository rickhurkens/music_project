package nl.rickhurkens.music.noteFinder;

import java.util.List;
import java.util.Set;
import java.util.ArrayList;
import java.util.HashSet;

/**
 * Class that holds a scale: a grouping of Notes the goes by a particular name.
 * @author Rick
 */
public class Scale implements NoteGroup {
	
	private List<String> intervals;
	private List<Note> notes;
	private String name;
	private String modifier;
	
	// TODO: probably should not throw this exception. Need to get more music theory
	// knowledge for this. Maybe I need a list of theoretical keys so I can tell the
	// user he chose a theoretical key (and maybe even point him to the non-theoretical
	// key that gives the same notes).
	/**
	 * Creates the scale from the root note and the given name. Gives an 
	 * exception if this scale gives double naturals.
	 * @param rootNote
	 * @param scaleName
	 * @throws DoubleLettersException
	 */
	public Scale(Note rootNote, String scaleName) throws DoubleLettersException {
		this.name = rootNote.toString() + " " + scaleName;
		this.intervals = NoteGroups.INTERVALS_PER_SCALE.get(scaleName);
		this.notes = new ArrayList<>();
		this.notes.addAll(fillScale(rootNote));
	}
	
	/* TODO: create this method that will calculate and instantiate a list of Chords that this scale can contain.
		public List<Chord> getChords() {
			
		}
	*/
	
	/**
	 * @return a List of Notes that this scale contains.
	 * Should probably return unmodifiable list.
	 */
	@Override
	public List<Note> getNotes() {
		return new ArrayList<>(notes); // TODO: shouldn't this be an unmodifiable copy?
	}
	
	@Override
	public List<Integer> getSemitones() {
		List<Integer> semitones = new ArrayList<>();
		notes.forEach(note -> semitones.add(note.getValue()));
		return semitones;
	}
	
	/**
	 * @return the rootnote of this scale.
	 */
	@Override
	public Note getRootNote() {
		return notes.get(0);
	}
	
	/**
	 * @return the name of this scale (chord-name / scale-name / etc.)
	 */
	@Override
	public String getName() {
		return name;
	}
	
	/**
	 * @return whether this scale contains sharps or flats.
	 */
	@Override
	public String getNoteGroupModifier() {
		return modifier;
	}
	
	/**
	 * @return the intervals contained in this scale.
	 */
	@Override
	public List<String> getIntervals() {
		return new ArrayList<>(intervals);
	}
	
	/**
	 * Fills the scale with the Notes that should go in the scale. First checks if the given
	 * root note has a modifier. If so, it sets the scale's modifier to this. If not, it will
	 * set the scale's modifier and fill it with sharps. If there are double naturals, it will
	 * try to change to "flat" if it wasn't already, and see if that works. If there are double
	 * naturals while it already was on "flat", will throw DoubleLettersException.
	 * @param rootNote The root note of this scale.
	 * @return A List of Notes that is a scale based on the given root note and interval list. 
	 * @throws DoubleLettersException when it can't compute a scale without double naturals.
	 */
	private List<Note> fillScale(Note rootNote) throws DoubleLettersException {
		setModifierBasedOn(rootNote);
		int rootNoteValue = rootNote.getValue();
		List<Note> notes = new ArrayList<>();
		notes.add(rootNote);
		
		for (int i = 1; i < intervals.size(); i++) {
			int semitoneValue = (rootNoteValue + NoteGroups.INTERVAL_TO_SEMITONE.get(intervals.get(i))) % 12;
			String[] options = getOptions(semitoneValue);
			String goodOption = getGoodOption(options, notes.get(i-1));
			Note nextNote = Notes.getNote(goodOption);
			notes.add(nextNote);
			if (modifier == null) {
				setModifierBasedOn(nextNote);
			}
		}
		return notes;
	}
	
	/**
	 * Picks the correct options based on what the next letter should be.
	 * @param options A string array with 2 options.
	 * @param previousNote The previous note in the scale.
	 * @return the name of the chosen note.
	 * @throws DoubleLettersException When no option is good.
	 */
	private String getGoodOption(String[] options, Note previousNote) throws DoubleLettersException {
		char previousChar = previousNote.toString().charAt(0);
		char goodChar = previousChar == 'G' ? 'A' : ++previousChar;
		if (options[0] != null && options[0].charAt(0) == goodChar) {
			return options[0];
		}
		if (options[1] == null || options[1].charAt(0) != goodChar) {
			throw new DoubleLettersException(this, "Could not find the next note starting with correct letter.");
		}
		return options[1];
	}
	
	/**
	 * Gets the options of note names for a given semitone value.
	 * @param value the semitone value
	 * @return a String array of length 2 filled with either a note name 
	 * or null.
	 */
	private String[] getOptions(int value) {
		String[] options = new String[2];
		if (Notes.SEMITONE_TO_FLAT_NAME.containsKey(value)) {
			options[0] = Notes.SEMITONE_TO_FLAT_NAME.get(value);
			if (Notes.SEMITONE_TO_SHARP_NAME.containsKey(value)) {
				options[1] = Notes.SEMITONE_TO_SHARP_NAME.get(value);
			} else {
				options[1] = Notes.SEMITONE_TO_NATURAL_NAME.get(value);
			}
		} else {
			options[0] = Notes.SEMITONE_TO_NATURAL_NAME.get(value);
			options[1] = Notes.SEMITONE_TO_SHARP_NAME.get(value);
		}
		return options;
	}
	
	private void setModifierBasedOn(Note note) {
		if (note.isSharp()) {
			modifier = "sharp";
		} else if (note.isFlat()) {
			modifier = "flat";
		}
	}
	
	/**
	 * Check whether the current scale has double letters.
	 * @return 'true' if multiple of the same naturals exist in the current scale, 
	 * 'false' if all naturals are different.
	 */
	private boolean scaleHasDoubleLetters(List<Note> notes) {
		Set<Character> seen = new HashSet<>();
		for (Note note : notes) {
			if(!seen.add(note.toString().charAt(0))) {
				return true;
			}
		}
		return false;
	}
	
	@Override
	public String toString() {
		return getName() + ": " + getNotes();
	}
}
