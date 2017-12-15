package nl.rickhurkens.music.noteFinder.test;

/**
 * @author Rick
 * The main method of this test class. 
 * Stuff that should be tested:
 * 	- Retrieval of a natural Note, a sharp Note and a Flat note by name.
 *  - Displaying their name and values.
 *  - Retrieval of different Scales and Chords, with different root notes.
 *  - Displaying their name, a list of Notes it contains and a list of intervals.
 */
public class Main {

	/**
	 * The main method. Will run the class that will test in the console.
	 * @param args No arguments needed.
	 */
	public static void main(String[] args) {
		new ConsoleTest().go();
	}
}