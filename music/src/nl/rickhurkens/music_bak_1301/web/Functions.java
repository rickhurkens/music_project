package nl.rickhurkens.music.web;

import java.util.List;

import nl.rickhurkens.music.noteFinder.NoteGroup;

public class Functions {
	
	/**
	 * Checks if the given semitone occurs in the given NoteGroup.
	 * @param semitone the semitone to check.
	 * @param noteGroup the NoteGroup to check
	 * @return true if it is included, false if it isn't.
	 */
	public static boolean isSemitoneInGroup(int semitone, NoteGroup noteGroup) {
		if (noteGroup == null) return false;
		if (noteGroup.getSemitones().contains(semitone)) {
			return true;
		}
		return false;
	}
	
	/**
	 * Checks if the given semitone is the root note of this NoteGroup.
	 * @param semitone
	 * @param noteGroup
	 * @return
	 */
	public static boolean isRootOfGroup(int semitone, NoteGroup noteGroup) {
		if (noteGroup == null) return false;
		if (noteGroup.getRootNote().getValue() == semitone) {
			return true;
		}
		return false;
	}
}