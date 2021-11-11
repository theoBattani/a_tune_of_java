
package fr.theo.control;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

import fr.theo.util.fxml.Loader;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class LoginController {

  // ResourceBundle that was given to the FXMLLoader
  @FXML private ResourceBundle resources;

  // URL location of the FXML file that was given to the FXMLLoader
  @FXML private URL location;

  // Values injected by FXMLLoader
  @FXML private Stage stage;
  @FXML private TextField ipTextField;
  @FXML private TextField portTextField;
  @FXML private TextField databaseNameTextField;
  @FXML private TextField usernameTextField; 
  @FXML private TextField passwordTextField;
  @FXML private Button connectButton;
  @FXML private Button exitButton;

  @FXML void onConnectButton(ActionEvent event) {
    try {
      Controller.openDatabase(
        ipTextField.getText(), 
        portTextField.getText(), 
        databaseNameTextField.getText(), 
        usernameTextField.getText(), 
        passwordTextField.getText()
      );
      ((Stage) Loader.loadFXML("view")).show();
      stage.close();
    } catch (IOException e) {
      e.printStackTrace();
    }

  }

  @FXML void onExitButton(ActionEvent event) {stage.close();}

  // This method is called by the FXMLLoader when initialization is complete
  @FXML void initialize() {
    assert connectButton != null : "fx:id=\"connectButton\" was not injected: check your FXML file 'login.fxml'.";
    assert databaseNameTextField != null : "fx:id=\"databaseNameTextField\" was not injected: check your FXML file 'login.fxml'.";
    assert exitButton != null : "fx:id=\"exitButton\" was not injected: check your FXML file 'login.fxml'.";
    assert ipTextField != null : "fx:id=\"ipTextField\" was not injected: check your FXML file 'login.fxml'.";
    assert passwordTextField != null : "fx:id=\"passwordTextField\" was not injected: check your FXML file 'login.fxml'.";
    assert usernameTextField != null : "fx:id=\"usernameTextField\" was not injected: check your FXML file 'login.fxml'.";
  }
}
