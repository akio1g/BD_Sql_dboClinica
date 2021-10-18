package gui;

import static application.Main.mudarTela;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class CRUDEspecialidadeController {

	@FXML
	TextField tfCodigoEspecialidade = new TextField();
	
	@FXML
	TextField tfEspecialidade = new TextField();
	
	@FXML
	Button btSalvar = new Button();

	@FXML
	Button btVoltar = new Button();
	
	@FXML
	Button btProcurar = new Button();
	
	@FXML
	Button btExcluir = new Button();
	
	public void botaoVoltar() {
		mudarTela(0);
	}
}
