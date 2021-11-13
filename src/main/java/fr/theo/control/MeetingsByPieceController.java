
package fr.theo.control;

import fr.theo.data.table.Meeting;
import fr.theo.data.table.PieceBand;

import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.control.TableColumn;

public class MeetingsByPieceController {

  @FXML private TableView<PieceBand> pieceTableView;
  @FXML private TableColumn<PieceBand, String> titleColumn;
  @FXML private TableColumn<PieceBand, String> bandColumn;

  @FXML private TableView<Meeting> meetingTableView;
  @FXML private TableColumn<Meeting, String> meetingNameColumn;
  @FXML private TableColumn<Meeting, Integer> visitorsColumn;

  @FXML void initialize() {
    System.out.println("here");
    assert meetingNameColumn != null : "fx:id=\"MeetingNameColumn\" was not injected: check your FXML file 'meetings-by-piece.fxml'.";
    assert bandColumn != null : "fx:id=\"bandColumn\" was not injected: check your FXML file 'meetings-by-piece.fxml'.";
    assert meetingTableView != null : "fx:id=\"meetingTableView\" was not injected: check your FXML file 'meetings-by-piece.fxml'.";
    assert pieceTableView != null : "fx:id=\"pieceTableView\" was not injected: check your FXML file 'meetings-by-piece.fxml'.";
    assert titleColumn != null : "fx:id=\"titleColumn\" was not injected: check your FXML file 'meetings-by-piece.fxml'.";
    assert visitorsColumn != null : "fx:id=\"visitorsColumn\" was not injected: check your FXML file 'meetings-by-piece.fxml'.";

    titleColumn.setCellValueFactory(
      new PropertyValueFactory<PieceBand, String>("pieceName")
    );
    bandColumn.setCellValueFactory(
      new PropertyValueFactory<PieceBand, String>("bandName")
    );

    meetingNameColumn.setCellValueFactory(
      new PropertyValueFactory<Meeting, String>("name")
    );
    visitorsColumn.setCellValueFactory(
      new PropertyValueFactory<Meeting, Integer>("visitors")
    );

    pieceTableView.setItems(Controller.getDatabase().getAllPieceBands());

    pieceTableView.setOnMouseReleased(
      new EventHandler<MouseEvent>() {
        @Override public void handle(MouseEvent event) {
          PieceBand selection = pieceTableView.getSelectionModel().getSelectedItem();
          meetingTableView.setItems(
            Controller.getDatabase()
              .getMeetingssByPieceAndBand(
                selection.getPieceId(), selection.getBandId()
            )
          );
        }
      }
    );
  }

}

