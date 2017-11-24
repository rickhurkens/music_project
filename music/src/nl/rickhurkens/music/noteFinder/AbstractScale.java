package nl.rickhurkens.music.noteFinder;

public enum AbstractScale {
	MAJOR (new int[] {0,2,4,5,7,9,11}),
	MINOR (new int[] {0,2,3,5,7,8,10});
	
	private final int[] intervals;
	
	AbstractScale(int[] intervals) {
		this.intervals = intervals;
	}
	
	public int[] getIntervals() {
		return intervals;
	}
}
