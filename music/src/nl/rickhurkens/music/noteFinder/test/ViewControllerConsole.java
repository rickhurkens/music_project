package nl.rickhurkens.music.noteFinder.test;

import java.util.Scanner;
import java.util.StringTokenizer;

import nl.rickhurkens.music.noteFinder.AbstractScale;
import nl.rickhurkens.music.noteFinder.Key;
import nl.rickhurkens.music.noteFinder.NaturalNote;
import nl.rickhurkens.music.noteFinder.Note;
import nl.rickhurkens.music.noteFinder.NoteModifier;
import nl.rickhurkens.music.noteFinder.Notes;

public class ViewControllerConsole {
	
	private Scanner keyboard = new Scanner(System.in);
	
	public void go() {
		
		System.out.println("What scale do you want to know?\n"+
			"Please use the same syntax as in the following examples:\n"+
			"\tC Major"+
			"\n\tF Sharp Minor");
		
		while(true) {
			Note rootNote = null;
			StringTokenizer input = new StringTokenizer(keyboard.nextLine(), " ");
			if (input.countTokens() < 2 || input.countTokens() > 3 ) {
				System.out.println("Your input needs to have 2 or 3 parts delimited by spaces. Please try again.");
				continue;
			}
			String natural = input.nextToken().toUpperCase();
			if (Notes.NAME_TO_NOTE.containsKey(natural)) {
				String modifier;
				if (input.countTokens() == 2) {
					modifier = input.nextToken().toUpperCase();
					if (!( modifier.equals("SHARP") || modifier.equals("FLAT") )) {
						System.out.println("The second part needs te be either 'Sharp' or 'Flat'. You typed '" + modifier + "'. Please try again.");
						continue;
					}
				} else {
					modifier = "NATURAL";
				}
				rootNote = new Note(NaturalNote.valueOf(natural), NoteModifier.valueOf(modifier));
			}
			String scaleModifier = input.nextToken().toUpperCase();
			if (!( scaleModifier.equals("MAJOR") || scaleModifier.equals("MINOR") )) {
				System.out.println("The last part of your input needs to be either 'Major' or 'Minor'. You typed '" + scaleModifier + "'. Please try again.");
				continue;
			}
			Key chosenKey = new Key(rootNote, AbstractScale.valueOf(scaleModifier));
			System.out.println(chosenKey);
		}
	}
}