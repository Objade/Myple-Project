package playlist;

public class Song {
	
	private String songName;
	private String artist;
	private int playTimeMinute;
	private int playTimeSecond;
	private String albumName;
	private int idx;
		
	public Song() {
		
	}
	
	public Song(int idx, String songName, String artist, int playTimeMinute, int playTimeSecond, String albumName) {
		this.songName = songName;
		this.artist = artist;
		this.playTimeMinute = playTimeMinute;
		this.playTimeSecond = playTimeSecond;
		this.albumName = albumName;
		this.idx = idx;

	}
	
	
	public String getSongName() {
		return songName;
	}
	public void setSongName(String songName) {
		this.songName = songName;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public int getPlayTimeMinute() {
		return playTimeMinute;
	}
	public void setPlayTimeMinute(int playTimeMinute) {
		this.playTimeMinute = playTimeMinute;
	}
	
	public int getPlayTimeSecond() {
		return playTimeSecond;
	}
	public void setPlayTimeSecond(int playTimeSecond) {
		this.playTimeSecond = playTimeSecond;
	}
	
	public String getAlbumName() {
		return albumName;
	}
	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	
	

}
