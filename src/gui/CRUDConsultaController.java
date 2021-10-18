package gui;

import static application.Main.mudarTela;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

public class CRUDConsultaController {

	@FXML
	ComboBox cbNumPaciente = new ComboBox<>();

	@FXML
	ComboBox cbCodigoMedico = new ComboBox<>();

	@FXML
	DatePicker dpData = new DatePicker();

	@FXML
	TextField tfHora = new TextField();

	@FXML
	TextArea taObs = new TextArea();

	@FXML
	Button btSalvar = new Button();

	@FXML
	Button btVoltar = new Button();

	public void botaoVoltar() {
		mudarTela(0);
	}
}
