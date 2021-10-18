package controller;

import static application.Main.mudarTela;

import javafx.fxml.FXML;
import javafx.scene.control.Button;

public class BoundaryControllerView {
	@FXML
	private Button btCadastroPaciente;

	@FXML
	private Button btCadastroMedico;

	@FXML
	private Button btCadastroConsulta;

	@FXML
	private Button btCadastroEspecialidade;

	@FXML
	private Button btRelatorio;

	@FXML
	public void BotaoCadastroPaciente() {
		mudarTela(1);
	}

	@FXML
	public void BotaoCadastroMedico() {
		mudarTela(2);
	}

	@FXML
	public void BotaoCadastroConsulta() {
		mudarTela(3);
	}

	@FXML
	public void BotaoCadastroEspecialidade() {
		mudarTela(4);
	}

	@FXML
	public void BotaoRelatorio() {
		mudarTela(5);
	}

}
