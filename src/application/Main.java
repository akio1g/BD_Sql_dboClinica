package application;

import java.io.IOException;

import gui.viewController;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {
	public static Stage stage;
	public static Scene scn = null;
	viewController vController = new viewController();

	@Override
	public void start(Stage stg) {
		stage = stg;
		mudarTela(0);		
	}
	
	public static void mudarTela(int i) {
		switch (i) {
		case 0:
			try {
				Parent parent = FXMLLoader.load(Main.class.getResource("/gui/View.fxml"));
				Scene scene = new Scene(parent);
				stage.setScene(scene);
				stage.show();
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;
		case 1:
			try {
				Parent parent = FXMLLoader.load(Main.class.getResource("/gui/CRUDPaciente.fxml"));
				Scene scene = new Scene(parent);
				stage.setScene(scene);
				stage.show();
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;
		case 2:
			try {
				Parent parent = FXMLLoader.load(Main.class.getResource("/gui/CRUDMedico.fxml"));
				Scene scene = new Scene(parent);
				stage.setScene(scene);
				stage.show();
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;
		case 3:
			try {
				Parent parent = FXMLLoader.load(Main.class.getResource("/gui/CRUDConsulta.fxml"));
				Scene scene = new Scene(parent);
				stage.setScene(scene);
				stage.show();
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;
		case 4:
			try {
				Parent parent = FXMLLoader.load(Main.class.getResource("/gui/CRUDEspecialidade.fxml"));
				Scene scene = new Scene(parent);
				stage.setScene(scene);
				stage.show();
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;
		case 5:
			try {
				Parent parent = FXMLLoader.load(Main.class.getResource("/gui/Relatorio.fxml"));
				Scene scene = new Scene(parent);
				stage.setScene(scene);
				stage.show();
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;
		
		}
		
			
	}
	public static void main(String[] args) {
		launch(args);
	}
}
