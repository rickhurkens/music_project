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
		if (rootNote.isFlat()) {
			modifier = "flat";
		} else {
			modifier = "sharp";
		}
		
		List<Note> notes = null;
		do {
			// if the List was already filled, see if setting the modifier to "flat"
			// gives a correct scale. If it was already "flat", either we started
			// trying with "sharp" and this second iteration already happened, or
			// the root note is a flat and this scale is just not working.
			if (notes != null) {
				if (modifier != "flat") {
					modifier = "flat";
				} else {
					throw new DoubleLettersException(this, "Can't compute this scale with either flats or sharps without using the same natural twice.");
				}
			}
			notes = calculateNotes(rootNote);
		} while (scaleHasDoubleLetters(notes));
		
		return notes;
	}

	/**
	 * This method will calculate possible Notes in this scale, based on the
	 * rootNote, the interval pattern and the sharp or flat modifier. 
	 * @param rootNote The root note of this scale.
	 * @return a List of Notes.
	 */
	private List<Note> calculateNotes(Note rootNote) {
		int rootValue = rootNote.getValue();
		List<Note> notes = new ArrayList<>();
		for (String interval : intervals) {
			int semitoneValue = (rootValue + NoteGroups.INTERVAL_TO_SEMITONE.get(interval)) % 12;
			if (modifier.equals("sharp")) {
				notes.add(new Note(Notes.SEMITONE_TO_NAME_SHARP.get(semitoneValue)));
			} else {
				notes.add(new Note(Notes.SEMITONE_TO_NAME_FLAT.get(semitoneValue)));
			}
		}
		return notes;
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
