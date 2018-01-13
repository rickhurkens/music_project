package nl.rickhurkens.music.noteFinder.test;

import nl.rickhurkens.music.noteFinder.DoubleLettersException;
import nl.rickhurkens.music.noteFinder.Note;
import nl.rickhurkens.music.noteFinder.NoteGroup;
import nl.rickhurkens.music.noteFinder.NoteGroups;
import nl.rickhurkens.music.noteFinder.Notes;

/**
 * @author Rick
 * Class that tests nl.rickhurkens.music.noteFinder in a console view. 
 * Stuff that should be tested: (copied from Main)
 * 	- Retrieval of a natural Note, a sharp Note and a Flat note by name.
 *  - Displaying their name and values.
 *  - Retrieval of different Scales and Chords, with different root notes.
 *  - Displaying their name, a list of Notes it contains and a list of intervals.
 */
public class ConsoleTest {

	@SuppressWarnings("javadoc")
	public void go() {
		
		Note note = null;
		String[] notes = new String[3];
		
		// Getting flat G ionian because this gives an Exception as I don't have Cb implemented.
		System.out.println("\n## Gb major ionian for testing ##");
		NoteGroup noteGroup = null;
		try {
			noteGroup = NoteGroups.getInstance("Gb", "ionian");
		} catch (DoubleLettersException dle) {
			System.out.println(dle.getMessage());
			dle.printStackTrace();
		}
		System.out.println("\n" + noteGroup.getName());
		System.out.println(noteGroup.getNotes().toString());
		System.out.println(noteGroup.getIntervals());
	
		
		/*
		// retrieve a major, dominant 7, minor major 7, and half diminished 7 chord (maj, minmaj7, dom7, halfdim7) 
		// and display their name, a list of containing notes and a list of containing intervals
		// each with one natural, one sharp and one flat
		
		// Major
		System.out.println("\n##\tgetting major chord for 'C', 'F#' and 'Ab'");
		notes[0] = "C";
		notes[1] = "F#";
		notes[2] = "Ab";
		for (String noteName : notes) {
			NoteGroup noteGroup = null;
			try {
				noteGroup = NoteGroups.getInstance(noteName,"maj");
			} catch (DoubleLettersException dle) {
				System.out.println(dle.getMessage());
				System.out.println(dle.getGrouping());
				dle.printStackTrace();
			}
			System.out.println("\n" + noteGroup.getName());
			System.out.println(noteGroup.getNotes().toString());
			System.out.println(noteGroup.getIntervals());
		}
		
		// Dominant 7
		System.out.println("\n##\tgetting dominant 7 chord for 'A', 'A#' and 'Eb'");
		notes[0] = "A";
		notes[1] = "A#";
		notes[2] = "Eb";
		for (String noteName : notes) {
			NoteGroup noteGroup = null;
			try {
				noteGroup = NoteGroups.getInstance(noteName,"dom7");
			} catch (DoubleLettersException dle) {
				System.out.println(dle.getMessage());
				System.out.println(dle.getGrouping());
				dle.printStackTrace();
			}
			System.out.println("\n" + noteGroup.getName());
			System.out.println(noteGroup.getNotes().toString());
			System.out.println(noteGroup.getIntervals());
		}
		
		// Minor Major 7
		System.out.println("\n##\tgetting minor major 7 chord for 'B', 'C#' and 'Gb'");
		notes[0] = "B";
		notes[1] = "A#";
		notes[2] = "Gb";
		for (String noteName : notes) {
			NoteGroup noteGroup = null;
			try {
				noteGroup = NoteGroups.getInstance(noteName,"minmaj7");
			} catch (DoubleLettersException dle) {
				System.out.println(dle.getMessage());
				System.out.println(dle.getGrouping());
				dle.printStackTrace();
			}
			System.out.println("\n" + noteGroup.getName());
			System.out.println(noteGroup.getNotes().toString());
			System.out.println(noteGroup.getIntervals());
		}
		
		// Half Diminished 7
		System.out.println("\n##\tgetting half diminished 7 chord for 'G', 'F#' and 'Db'");
		notes[0] = "G";
		notes[1] = "F#";
		notes[2] = "Db";
		for (String noteName : notes) {
			NoteGroup noteGroup = null;
			try {
				noteGroup = NoteGroups.getInstance(noteName,"halfdim7");
			} catch (DoubleLettersException dle) {
				System.out.println(dle.getMessage());
				System.out.println(dle.getGrouping());
				dle.printStackTrace();
			}
			System.out.println("\n" + noteGroup.getName());
			System.out.println(noteGroup.getNotes().toString());
			System.out.println(noteGroup.getIntervals());
		}*/
		
		/* 
		 * getting all notes through all scales to see if any Exceptions occur:
		System.out.println("\n##\tgetting all notes in all scales to see if Exceptions occur:\t##\n");		
		String[] notes2 = {"A","A#","B","C","C#","D","D#","E","F","F#","G","G#"};
		for (String scaleName : NoteGroups.INTERVALS_PER_SCALE.keySet()) {
			for (String noteName : notes2) {
				NoteGroup noteGroup = null;
				try {
					noteGroup = NoteGroups.getInstance(noteName, scaleName);
				} catch (DoubleLettersException dle) {
					System.out.println("\n" + dle.getGrouping() + " is either a theoretical scale or my fault because I didn't add B#, Cb, E# and Fb.");
					continue;
				}
				System.out.println("\n" + noteGroup.getName());
				System.out.println(noteGroup.getNotes().toString());
			}
		}
		*/
	}
}