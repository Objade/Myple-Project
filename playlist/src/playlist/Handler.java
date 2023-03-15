package playlist;

import java.util.ArrayList;

public class Handler {
	
	private ArrayList<Song> list = new ArrayList<Song>();
	private int idx = 0;
	
	public ArrayList<Song> getList() {
		return list;
	}
	
	private int nextIdx() {
		++idx;
		return idx;
	}
	
	
	
	public void setDummy() {
		if(list.isEmpty()) {
			list.add(new Song(nextIdx(), "test", "artist", 1, 0, "album"));	
			list.add(new Song(nextIdx(), "test2", "artist",2, 0, "album"));	
			
		}
	}
	
	public void insert(Song ob) {
		ob.setIdx(nextIdx());
		list.add(ob);
	}
	
	public void delete(String songName) {
		list.removeIf(ob -> songName.equals(ob.getSongName()));
	
	}

	
	public void update(int idx, Song newSong) {
		for(Song ob : list) {
			if(ob.getIdx() == idx) {
				list.set(list.indexOf(ob), newSong);
			}
		}
	}
	
	
	
}
