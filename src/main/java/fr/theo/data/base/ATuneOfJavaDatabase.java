
package fr.theo.data.base;

import fr.theo.util.sql.connection.MySQLConnectionWrapper;
import fr.theo.data.table.Band;
import fr.theo.data.table.Meeting;
import fr.theo.data.table.Piece;
import fr.theo.data.table.PieceBand;

import java.util.ArrayList;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class ATuneOfJavaDatabase {

  private MySQLConnectionWrapper connection;

  public ATuneOfJavaDatabase(
    String host,
    String port,
    String database,
    String user,
    String password
  ) {
    this.connection = new MySQLConnectionWrapper(host, port, database);
    this.connection.open(user, password);
  }

  public void closeConnection() {this.connection.close();}

  public ObservableList<Piece> getAllPieces() {
    ObservableList<Piece> output = FXCollections.observableArrayList();
    ArrayList<String> result = this.connection.callProcedure("get_all_pieces");
    for (String row: result) {
      String[] columns = row.split(",", 0);
      int id = -1;
      String title = "";
      String author = "";
      String duration = "";
      for (String column: columns) {
        String[] field = column.split(":", 0);
        switch (field[0]) {
          case "id_piece" : id = Integer.parseInt(field[1]); break;
          case "denomination": title = field[1]; break;
          case "author": author = field[1]; break;
          case "duration": 
            int d = Integer.parseInt(field[1]);
            int q = d / 60;
            int r = d % 60;
            duration = String.format(
              "%s%d:%s%d", 
              q < 10 ? "0": "", q,
              r < 10 ? "0": "", r
            ); 
            break;
        }
      }
      output.add(new Piece(id, title, author, duration));
    }
    return output;
  }

  public ObservableList<Band> getBandsByPiece(int piece_id) {
    ObservableList<Band> output = FXCollections.observableArrayList();
    ArrayList<String> result = this.connection.callProcedure(
      "get_bands_playing_piece",
      String.format("%d", piece_id)
    );
    for (String row: result) {
      String[] columns = row.split(",", 0);
      int id = -1;
      String name = "";
      String correspondent = "";
      for (String column: columns) {
        String[] field = column.split(":", 0);
        switch (field[0]) {
          case "id_band": id = Integer.parseInt(field[1]);
          case "denomination": name = field[1]; break;
          case "correspondent": correspondent = field[1]; break;
          default:
            System.out.println(field[0]);
            break;
        }
      }
      output.add(new Band(id, name, correspondent));
    }
    return output;
  }

  public ObservableList<PieceBand> getAllPieceBands() {
    ObservableList<PieceBand> output = FXCollections.observableArrayList();
    for (Piece piece: getAllPieces())
      for (Band band: getBandsByPiece(piece.getId()))
        output.add(new PieceBand(
          piece.getId(), 
          band.getId(), 
          piece.getTitle(), 
          band.getName()
        ));
    return output;
  }

  public ObservableList<Meeting> getMeetingssByPieceAndBand(int piece_id, int band_id) {
    ObservableList<Meeting> output = FXCollections.observableArrayList();
    ArrayList<String> result = this.connection.callProcedure(
      "get_meetings_by_piece_and_band",
      String.format("%d", piece_id),
      String.format("%d", band_id)
    );
    for (String row: result) {
      String[] columns = row.split(",", 0);
      int id = -1;
      String name = "";
      int visitors = -1;
      for (String column: columns) {
        String[] field = column.split(":", 0);
        switch (field[0]) {
          case "id": id = Integer.parseInt(field[1]);
          case "label": name = field[1]; break;
          case "expected_visitors": visitors = Integer.parseInt(field[1]); break;
          default:
            break;
        }
      }
      output.add(new Meeting(id, name, visitors));
    }
    return output;
  }
  
}
