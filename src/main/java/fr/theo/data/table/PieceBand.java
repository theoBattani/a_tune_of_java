package fr.theo.data.table;

public class PieceBand {

  private int pieceId;
  private int bandId;
  private String pieceName;
  private String bandName;

  public PieceBand(
    int piece_id,
    int band_id,
    String piece_name,
    String band_name
  ) {
    this.pieceId = piece_id;
    this.bandId = band_id;
    this.pieceName = piece_name;
    this.bandName = band_name;
  }

  public int getPieceId() {return this.pieceId;}
  public int getBandId() {return this.bandId;}
  public String getPieceName() {return this.pieceName;}
  public String getBandName() {return this.bandName;}
  
}
