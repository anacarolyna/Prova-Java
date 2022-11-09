package ProvaJava;

import java.time.LocalDate;
import javax.persistence.Entity;

@Entity (name = "Placa") 
public class Veiculo {
	
	@Id
    private Integer id;
	private String carro, motocicleta;
	private String cor;
	private LocalDate data;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCarro() {
		return carro;
	}
	public void setCarro(String carro) {
		this.carro = carro;
	}
	public String getMotocicleta() {
		return motocicleta;
	}
	public void setMotocicleta(String motocicleta) {
		this.motocicleta = motocicleta;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	public LocalDate getData() {
		return data;
	}
	public void setData(LocalDate data) {
		this.data = data;
	}
	
	

	
}
