package nl.rickhurkens.music.noteFinder;

import java.util.List;
import java.util.Set;
import java.util.ArrayList;
import java.util.HashSet;

/**
 * Class that holds a chord: a grouping of Notes the goes by a particular name.
 * @author Rick
 */
public class Chord implements NoteGroup {
	
	private List<String> intervals;
	private List<Note> notes;
	private String name;
	private String modifier;
	
	// TODO: probably should not throw this exception. Need to get more music theory
	// knowledge for this. Maybe I need a list of theoretical keys so I can tell the
	// user he chose a theoretical key (and maybe even point him to the non-theoretical
	// key that gives the same notes).
	/**
	 * Creates the chord from the root note and the given name. Gives an 
	 * exception if this chord gives double naturals.
	 * @param rootNote
	 * @param chordName
	 * @throws DoubleLettersException
	 */
	public Chord(Note rootNote, String chordName) throws DoubleLettersException {
		this.name = rootNote.toString() + " " + chordName;
		this.intervals = NoteGroups.INTERVALS_PER_CHORD.get(chordName);
		this.notes = new ArrayList<>();
		this.notes.addAll(fillChord(rootNote));
	}
	
	/**
	 * @return a List of Notes that this chord contains.
	 * Should probably return unmodifiable list.
	 */
	@Override
	public List<Note> getNotes() {
		return new ArrayList<>(notes); // TODO: shouldn't this be an unmodifiable copy?
	}
	
	/**
	 * @return the rootnote of this chord.
	 */
	@Override
	public Note getRootNote() {
		return notes.get(0);
	}
	
	/**
	 * @return the name of this chord
	 */
	@Override
	public String getName() {
		return name;
	}
	
	/**
	 * @return whether this chord contains sharps or flats.
	 */
	@Override
	public String getNoteGroupModifier() {
		return modifier;
	}
	
	/**
	 * @return the intervals contained in this chord.
	 */
	@Override
	public List<String> getIntervals() {
		return new ArrayList<>(intervals);
	}
	
	// TODO this method sometimes creates a Chord that changes the given root note into it's
	// other (sharp/flat) equivalent. This is ok, but I want to give a message of this to the
	// user.
	/**
	 * Fills the chord with the Notes that should go in the chord. First checks if the given
	 * root note has a modifier. If so, it sets the chord's modifier to this. If not, it will
	 * set the chord's modifier and fill it with sharps. If there are double naturals, it will
	 * try to change to "flat" if it wasn't already, and see if that works. If there are double
	 * naturals while it already was on "flat", will throw DoubleLettersException.
	 * @param rootNote The root note of this chord.
	 * @return A List of Notes that is a chord based on the given root note and interval list. 
	 * @throws DoubleLettersException when it can't compute a chord without double naturals.
	 */
	private List<Note> fillChord(Note rootNote) throws DoubleLettersException {
		if (rootNote.isFlat()) {
			modifier = "flat";
		} else {
			modifier = "sharp";
		}
		
		List<Note> notes = null;
		do {
			// if the List was already filled, see if setting the modifier to "flat"
			// gives a correct chord. If it was already "flat", either we started
			// trying with "sharp" and this second iteration already happened, or
			// the root note is a flat and this chord is just not working.
			if (notes != null) {
				if (modifier != "flat") {
					modifier = "flat";
				} else {
					throw new DoubleLettersException(this, "Can't compute this chord with either flats or sharps without using the same natural twice.");
				}
			}
			notes = calculateNotes(rootNote);
		} while (chordHasDoubleLetters(notes));
		
		return notes;
	}

	/**
	 * This method will calculate possible Notes in this chord, based on the
	 * rootNote, the interval pattern and the sharp or flat modifier. 
	 * @param rootNote The root note of this chord.
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
	 * Check whether the current chord has double letters.
	 * @return 'true' if multiple of the same naturals exist in the current chord, 
	 * 'false' if all naturals are different.
	 */
	private boolean chordHasDoubleLetters(List<Note> notes) {
		Set<Character> seen = new HashSet<>();
		for (Note note : notes) {
			Character c = note.toString().charAt(0);
			if(!seen.add(c)) {
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
