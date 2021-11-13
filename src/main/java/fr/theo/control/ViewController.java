
package fr.theo.control;

import java.io.IOException;

import fr.theo.util.fxml.Loader;

import javafx.fxml.FXML;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;

public class ViewController {

  @FXML private Stage stage;
  @FXML private Scene scene;
  @FXML private AnchorPane tab1AnchorPane;
  @FXML private AnchorPane tab2AnchorPane;

  @FXML // This method is called by the FXMLLoader when initialization is complete
  void initialize() {
    assert stage != null : "fx:id=\"stage\" was not injected: check your FXML file 'view.fxml'.";
    assert scene != null : "fx:id=\"scene\" was not injected: check your FXML file 'view.fxml'.";
    assert tab1AnchorPane != null : "fx:id=\"tab1\" was not injected: check your FXML file 'view.fxml'.";
    assert tab2AnchorPane != null : "fx:id=\"tab2\" was not injected: check your FXML file 'view.fxml'.";
    try {
      tab1AnchorPane.getChildren().add(Loader.loadFXML("bands-by-piece"));
      System.out.println("tab1 loaded");
      tab2AnchorPane.getChildren().add(Loader.loadFXML("meetings-by-piece"));
      System.out.println("tab2 loaded");
    } catch (IOException e) {
      e.printStackTrace();
    }

  }

}