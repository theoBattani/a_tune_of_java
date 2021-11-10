
package fr.theo.data.base;

import fr.theo.util.sql.connection.MySQLConnectionWrapper;
import fr.theo.data.table.Piece;

import java.util.ArrayList;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class ATuneOfJavaDatabase {

  private static String HOST = "localhost";
  private static String PORT = "3306";
  private static String DATABASE_NAME = "a_tune_of_java_db";

  private MySQLConnectionWrapper connection;

  public ATuneOfJavaDatabase() {
    this.connection = new MySQLConnectionWrapper(HOST, PORT, DATABASE_NAME);
    this.connection.open("root", "");
  }

  public void closeConnection() {connection.close();}

  public ObservableList<Piece> getAllPieces() {
    ArrayList<String> result = this.connection.callProcedure("get_all_pieces");
    ObservableList<Piece> output = FXCollections.observableArrayList();
    for (String str: result) {
      String[] map = str.split(",", 0);
      String title = "";
      String author = "";
      String duration = "";
      for (String column: map) {
        String[] field = column.split(":", 0);
        switch (field[0]) {
          case "denomination": title = field[1]; break;
          case "author": author = field[1]; break;
          case "duration": duration = field[1]; break;
        }
      }
      output.add(new Piece(title, author, duration));
    }
    return output;
  }
  
}
