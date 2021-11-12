
package fr.theo.data.base;

import fr.theo.util.sql.connection.MySQLConnectionWrapper;
import fr.theo.data.table.Band;
import fr.theo.data.table.Piece;

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
            duration = String.format("%d:%d", d / 60, d % 60); 
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
          case "id": id = Integer.parseInt(field[1]);
          case "denomination": name = field[1]; break;
          case "correspondent": correspondent = field[1]; break;
          default:
            break;
        }
      }
      output.add(new Band(id, name, correspondent));
    }
    return output;
  }
  
}
