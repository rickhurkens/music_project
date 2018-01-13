package nl.rickhurkens.music.noteFinder;

import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import nl.rickhurkens.utility.ReadFile;

/**
 * @author Rick Hurkens
 * Utility and factory class, for groupings of notes.
 * 
 * This is going to be a class with a factory for NoteGroups
 * and a place with utility methods (?). If so, I will need 
 * to split it up into two classes, right?
 */
public class NoteGroups {
	private static String intervalsFilename;
	private static String chordsFilename;
	private static String scalesFilename;
	private static final String RESOURCES_PATH;
	/**
	 * holds an Integer for every interval. Interval is represented
	 * by String.
	 */
	public static final Map<String, Integer> INTERVAL_TO_SEMITONE;
	/**
	 * holds a List of intervals for every available chord.
	 * The intervals are represented by String.
	 */
	public static final Map<String, List<String>> INTERVALS_PER_CHORD;
	/**
	 * holds a List of intervals for every available scale.
	 * The intervals are represented by String.
	 */
	public static final Map<String, List<String>> INTERVALS_PER_SCALE;
	
	static {
		RESOURCES_PATH = "nl/rickhurkens/music/noteFinder/resources/";
		readFilenamesFromProperties();
		INTERVAL_TO_SEMITONE = Collections.unmodifiableMap(initializeIntervalMap());
		INTERVALS_PER_CHORD = Collections.unmodifiableMap(initializeChordMap());
		INTERVALS_PER_SCALE = Collections.unmodifiableMap(initializeScaleMap());
	}
	
	private static void readFilenamesFromProperties() {
		Properties filenames = new Properties();
		try {
			String filenamesLocation = RESOURCES_PATH + "filenames.properties";
			InputStream input = Thread.currentThread().getContextClassLoader().getResourceAsStream(filenamesLocation);
			filenames.load(input);
		} catch (IOException ioex) {
			System.out.println("Something went wrong with loading the filenames.properties file. That file is necessary for running this application.");
			System.out.println(ioex.getMessage());
			ioex.printStackTrace();
		}
		intervalsFilename = RESOURCES_PATH + filenames.getProperty("intervalsFile");
		chordsFilename = RESOURCES_PATH + filenames.getProperty("chordsFile");
		scalesFilename = RESOURCES_PATH + filenames.getProperty("scalesFile");
	}
	
	/**
	 * @return a Map<String, Integer> with interval names (String) 
	 * to amount of semitones (Integer).
	 */
	private static Map<String, Integer> initializeIntervalMap() {
		Map<String, Integer> tempMap = null;
		try {
			URL theResource = Thread.currentThread().getContextClassLoader().getResource(intervalsFilename);
			tempMap = new ReadFile(theResource.toURI()).getMapWithIntegers();
		} catch (IOException ioex) {
			System.out.println("Something went wrong with loading the intervals datafile. That file is necessary for running this application.");
			System.out.println(ioex.getMessage());
			ioex.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return tempMap;
	}
	
	/**
	 * @return a Map<String, List<String>> with chord names 
	 * to a List of intervals (Strings) included in that chord.
	 */
	private static Map<String, List<String>> initializeChordMap() {
		Map<String, List<String>> tempMap = null;
		try {
			URL theResource = Thread.currentThread().getContextClassLoader().getResource(chordsFilename);
			tempMap = new ReadFile(theResource.toURI()).getMapWithList();
		} catch (IOException ioex) {
			System.out.println("Something went wrong with loading the chords datafile. That file is necessary for running this application.");
			System.out.println(ioex.getMessage());
			ioex.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return tempMap;
	}
	
	/**
	 * @return a Map<String, List<String>> with scale names 
	 * to a List of intervals (Strings) included in that scale.
	 */
	private static Map<String, List<String>> initializeScaleMap() {
		Map<String, List<String>> tempMap = null;
		try {
			URL theResource = Thread.currentThread().getContextClassLoader().getResource(scalesFilename);
			tempMap = new ReadFile(theResource.toURI()).getMapWithList();
		} catch (IOException ioex) {
			System.out.println("Something went wrong with loading the scales datafile. That file is necessary for running this application.");
			System.out.println(ioex.getMessage());
			ioex.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return tempMap;
	}
	
	// TODO: probably should not throw this exception. Need to get more music theory
	// knowledge for this. Maybe I need a list of theoretical keys so I can tell the
	// user he chose a theoretical key (and maybe even point him to the non-theoretical
	// key that gives the same notes).
	/**
	 * Get an instance of a NoteGroup. Could be a Chord or a Scale or anything else that
	 * implements NoteGroup.
	 * @param rootNote the root note for this group of notes
	 * @param groupName the name (for example a chord or a scale name).
	 * @return an implementation of NoteGroup (for example Chord or Scale).
	 * @throws DoubleLettersException when it cannot find a group that doesn't have double naturals.
	 */
	public static NoteGroup getInstance(String rootNote, String groupName) throws DoubleLettersException {
		if (INTERVALS_PER_CHORD.containsKey(groupName)) {
			return new Chord(new Note(rootNote), groupName);
		} else {
			return new Scale(new Note(rootNote), groupName);
		}
	}
}