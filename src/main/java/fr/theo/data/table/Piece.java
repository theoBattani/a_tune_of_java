package fr.theo.data.table;

public class Piece {

  private String title;
  private String author;
  private String duration;

  public Piece(String title, String author, String duration) {
    this.title = title;
    this.author = author;
    this.duration = duration;
  }

  public String getTitle() {return this.title;}
  public String getAuthor() {return this.author;}
  public String getDuration() {return this.duration;}
}
