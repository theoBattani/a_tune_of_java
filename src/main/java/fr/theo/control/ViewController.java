package fr.theo.control;

import fr.theo.data.table.Instrument;
import fr.theo.data.table.Speciality;
import fr.theo.data.table.Piece;
import fr.theo.data.table.Band;
import fr.theo.data.table.Member;
import fr.theo.data.table.Meeting;
import fr.theo.data.table.Place;

import javafx.fxml.FXML;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

public class ViewController {

    @FXML private TextField pieceDurationTextField;
    @FXML private TextField bandCountTextField;

    @FXML private ChoiceBox<Speciality> specialityChoiceBox;
    @FXML private ChoiceBox<Instrument> instrumentChoiceBox;

    @FXML private TableView<Piece> pieceTableView;
    @FXML private TableColumn<Piece, String> pieceTitleColumn;
    @FXML private TableColumn<Piece, String> pieceAuthorColumn;
    @FXML private TableColumn<Piece, String> pieceDurationColumn;

    @FXML private TableView<Band> bandTableView;
    @FXML private TableColumn<Band, String> bandNameColumn;
    @FXML private TableColumn<Band, String> bandCorrespondentColumn;

    @FXML private TableView<Member> memberTableView;
    @FXML private TableColumn<Member, String> memberNameColumn;
    @FXML private TableColumn<Member, String> memberInstrumentColumn;

    @FXML private TableView<Meeting> meetingTableView;
    @FXML private TableColumn<Meeting, String> meetingNameColumn;
    @FXML private TableColumn<Meeting, Integer> meetingVisitorsColumn;

    @FXML private TableView<Place> placeTableView;
    @FXML private TableColumn<Place, String> placeCityColumn;
    @FXML private TableColumn<Place, String> placeCountryColumn;

    @FXML public void initialize() {

      pieceTitleColumn.setCellValueFactory(
        new PropertyValueFactory<Piece, String>("title")
      );
      pieceAuthorColumn.setCellValueFactory(
        new PropertyValueFactory<Piece, String>("author")
      );
      pieceDurationColumn.setCellValueFactory(
        new PropertyValueFactory<Piece, String>("duration")
      );

      bandNameColumn.setCellValueFactory(
        new PropertyValueFactory<Band, String>("name")
      );
      bandCorrespondentColumn.setCellValueFactory(
        new PropertyValueFactory<Band, String>("correspondent")
      );
    }

}
