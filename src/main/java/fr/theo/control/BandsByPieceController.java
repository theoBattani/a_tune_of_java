
package fr.theo.control;

import fr.theo.data.table.Band;
import fr.theo.data.table.Piece;

import javafx.fxml.FXML;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.event.EventHandler;
import javafx.scene.input.MouseEvent;

public class BandsByPieceController {

  // 1st tab
  @FXML private TableView<Piece> tab1_pieceTableView;
  @FXML private TableColumn<Piece, String> tab1_titleColumn;
  @FXML private TableColumn<Piece, String> tab1_authorColumn;
  @FXML private TableColumn<Piece, String> tab1_durationColumn;

  @FXML private TableView<Band> tab1_bandTableView;
  @FXML private TableColumn<Band, String> tab1_bandNameColumn;
  @FXML private TableColumn<Band, String> tab1_correspondentColumn;

  @FXML // This method is called by the FXMLLoader when initialization is complete
  void initialize() {
    assert tab1_pieceTableView != null : "fx:id=\"tab1_pieceTableView\" was not injected: check your FXML file 'view.fxml'.";
    assert tab1_titleColumn != null : "fx:id=\"tab1_titleColumn\" was not injected: check your FXML file 'view.fxml'.";
    assert tab1_authorColumn != null : "fx:id=\"tab1_authorColumn\" was not injected: check your FXML file 'view.fxml'.";
    assert tab1_durationColumn != null : "fx:id=\"tab1_durationColumn\" was not injected: check your FXML file 'view.fxml'.";
    assert tab1_bandTableView != null : "fx:id=\"tab1_bandTableView\" was not injected: check your FXML file 'view.fxml'.";
    assert tab1_bandNameColumn != null : "fx:id=\"tab1_bandNameColumn\" was not injected: check your FXML file 'view.fxml'.";
    assert tab1_correspondentColumn != null : "fx:id=\"tab1_correspondentColumn\" was not injected: check your FXML file 'view.fxml'.";

    tab1_titleColumn.setCellValueFactory(
      new PropertyValueFactory<Piece, String>("title")
    );
    tab1_authorColumn.setCellValueFactory(
      new PropertyValueFactory<Piece, String>("author")
    );
    tab1_durationColumn.setCellValueFactory(
      new PropertyValueFactory<Piece, String>("duration")
    );

    tab1_bandNameColumn.setCellValueFactory(
      new PropertyValueFactory<Band, String>("name")
    );
    tab1_correspondentColumn.setCellValueFactory(
      new PropertyValueFactory<Band, String>("correspondent")
    );

    tab1_pieceTableView.setItems(Controller.getDatabase().getAllPieces());

    tab1_pieceTableView.setOnMouseReleased(
      new EventHandler<MouseEvent>() {
        @Override public void handle(MouseEvent event) {
          Piece selection = tab1_pieceTableView.getSelectionModel().getSelectedItem();
          tab1_bandTableView.setItems(Controller.getDatabase().getBandsByPiece(selection.getId()));
        }
      }
    );
  }
}