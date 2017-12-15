package nl.rickhurkens.music.noteFinder;

/**
 * @author Rick
 * An exception that should be thrown when a grouping of notes is created
 * that has double naturals, for example a C and a C#.
 */
@SuppressWarnings("serial")
public class DoubleLettersException extends RuntimeException {
	
	private NoteGroup group;

	/**
	 * @param group the NoteGroup that is causing the Exception.
	 * @param message a message describing what is going on.
	 */
	public DoubleLettersException(NoteGroup group, String message) {
		super(message);
		this.group = group;
	}
	
	/**
	 * @return the NoteGroup instance that is causing the Exception.
	 */
	public NoteGroup getGrouping() {
		return group;
	}
}
