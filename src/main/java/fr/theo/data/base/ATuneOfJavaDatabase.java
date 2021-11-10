package fr.theo.data.base;

import java.util.ArrayList;

import java.sql.SQLException;
import java.sql.CallableStatement;

import fr.theo.data.table.Piece;
import fr.theo.util.sql.connection.MySQLConnectionWrapper;

public class ATuneOfJavaDatabase {

  private static String HOST = "localhost";
  private static String PORT = "3306";
  private static String DATABASE_NAME = "a_tune_of_java_db";

  private MySQLConnectionWrapper connection;

  ATuneOfJavaDatabase() {
    this.connection = new MySQLConnectionWrapper(HOST, PORT, DATABASE_NAME);
    this.connection.open("root", "");
  }

  public void closeConnection() {connection.close();}

  public ArrayList<Piece> getAllPieces() {
    try {
      CallableStatement statement; 
      statement = this.connection.getProcedure("get_all_pieces");

    } catch (SQLException e) {
      e.printStackTrace();
    }
    return null;
  }
  
}
