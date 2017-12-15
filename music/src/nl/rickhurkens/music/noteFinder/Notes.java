package nl.rickhurkens.music.noteFinder;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import nl.rickhurkens.utility.ReadFile;

/**
 * @author Rick
 * Utility class that contains methods and conversion data
 * that have to do with notes and semitone values.
 */
public class Notes {
	private static String semitonesToFlatFilename;
	private static String semitonesToSharpFilename;
	
	// TODO: figure out a way to store multiple values (and retrieve the right
	// one in the right situation) for one semitone. For these semitone values:
	// 3 = B or Cb
	// 4 = B# or C
	// 8 = E or Fb
	// 9 = E# or F
	
	/**
	 * Holds the name of a note for a given semitone value. If there is
	 * a choice between two names, the flat choice is given.
	 */
	public static final Map<Integer,String> SEMITONE_TO_NAME_FLAT;
	/**
	 * Holds the name of a note for a given semitone value. If there is
	 * a choice between two names, the sharp choice is given.
	 */
	public static final Map<Integer,String> SEMITONE_TO_NAME_SHARP;
	/**
	 * Holds the semitone value for each note-name.
	 */
	public static final Map<String,Integer> NAME_TO_SEMITONE;
	
	static {
		readFilenamesFromProperties();
		SEMITONE_TO_NAME_FLAT = Collections.unmodifiableMap(initializeFlatMap());
		SEMITONE_TO_NAME_SHARP = Collections.unmodifiableMap(initializeSharpMap());
		NAME_TO_SEMITONE = Collections.unmodifiableMap(initializeNameMap());
	}
	
	/**
	 * This method is used to get a note with a given semitone value
	 * and you know it has to be either a natural or a flat.
	 * @param semitoneValue The value in semitones for the wanted Note.
	 * @return a new Note instance with the given semitone value.
	 */
	public static Note getNoteFromFlat(int semitoneValue) {
		return getNote(SEMITONE_TO_NAME_FLAT.get(semitoneValue));
	}
	
	/**
	 * This method is used to get a note with a given semitone value
	 * and you know it has to be either a natural or a sharp.
	 * @param semitoneValue The value in semitones for the wanted Note.
	 * @return a new Note instance with the given semitone value.
	 */
	public static Note getNoteFromSharp(int semitoneValue) {
		return getNote(SEMITONE_TO_NAME_SHARP.get(semitoneValue));
	}
	
	/**
	 * This method gives a new note instance with a given name.
	 * @param name The name for the wanted Note. Expressed in one uppercase
	 * letter and one optional # or b for sharp or flat.
	 * @return a new Note instance with the given name.
	 */
	public static Note getNote(String name) {
		return new Note(name);
	}
	
	/**
	 * This method gives a semitone value that belongs to a given name.
	 * With this method, you can get the semitone value without creating
	 * a new Note instance. When needed, you can also call getNote(String name)
	 * and then call getValue() on that Note.
	 * @param name The name for a note that you want the value of. Expressed 
	 * in one uppercase letter and one optional # or b for sharp or flat.
	 * @return an int value expressing the semitone value of the given note name.
	 */
	public static int getSemitoneFromString(String name) {
		return NAME_TO_SEMITONE.get(name);
	}

 	private static void readFilenamesFromProperties() {
		Properties filenames = new Properties();
		try {
			filenames.load(new FileInputStream("resources/filenames.properties"));
		} catch (IOException ioex) {
			System.out.println("Something went wrong with loading the filenames.properties file. That file is necessary for running this application.");
			System.out.println(ioex.getMessage());
			ioex.printStackTrace();
			System.exit(-1);
		}
		semitonesToFlatFilename = filenames.getProperty("semitonesFlatFile");
		semitonesToSharpFilename = filenames.getProperty("semitonesSharpFile");
	}
	
	private static Map<Integer,String> initializeFlatMap() {
		Map<Integer,String> tempMap = null;
		try {
			tempMap = new ReadFile(semitonesToFlatFilename).getMapFromIntegers();
		} catch (IOException ioex) {
			System.out.println("Something went wrong with loading the semitones to name flat datafile. That file is necessary for running this application.");
			System.out.println(ioex.getMessage());
			ioex.printStackTrace();
			System.exit(-1);
		}
		return tempMap;
	}
	
	private static Map<Integer,String> initializeSharpMap() {
		Map<Integer,String> tempMap = null;
		try {
			tempMap = new ReadFile(semitonesToSharpFilename).getMapFromIntegers();
		} catch (IOException ioex) {
			System.out.println("Something went wrong with loading the semitones to name sharp datafile. That file is necessary for running this application.");
			System.out.println(ioex.getMessage());
			ioex.printStackTrace();
			System.exit(-1);
		}
		return tempMap;
	}
	
	private static Map<String,Integer> initializeNameMap() {
		Map<String,Integer> tempMap = new HashMap<>();
		Collection<Map<Integer,String>> allSemitones = new ArrayList<>();
		allSemitones.add(SEMITONE_TO_NAME_FLAT);
		allSemitones.add(SEMITONE_TO_NAME_SHARP);
		for(Map<Integer,String> map : allSemitones) {
			map.forEach((semitoneValue,name) -> tempMap.put(name,semitoneValue));
		}
		return tempMap;
	}
}
