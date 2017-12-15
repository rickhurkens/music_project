package nl.rickhurkens.music.noteFinder;

import java.util.List;

/**
 * @author Rick
 * Interface that holds groupings of notes, like scales and chords.
 */
public interface NoteGroup {
	
	/**
	 * @return a List of Notes that this group contains.
	 */
	public List<Note> getNotes();
	
	/**
	 * @return the root note of this group.
	 */
	public Note getRootNote();
	
	/**
	 * @return the name of this group (chord-name / scale-name / etc.)
	 */
	public String getName();
	
	/**
	 * @return whether this group contains sharps or flats.
	 */
	public String getNoteGroupModifier();
	
	/**
	 * @return the intervals contained in this group.
	 */
	public List<String> getIntervals();
}