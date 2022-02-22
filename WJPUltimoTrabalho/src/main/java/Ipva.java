
import java.sql.Connection;


public class Ipva {
	private Integer id;
	private Integer ano;
	private Integer comIPVA = 0;
	private Integer semIPVA = 0;
	private Integer cont = 0;
	
	
	public Ipva(Integer ano) {
		super();
		this.ano = ano;

	}



	
	public Integer verificacao(Integer valor) {
		this.cont++;
		if(valor <= this.ano) {
			return this.semIPVA++;
		} else {
			return this.comIPVA++;
		}
	}




	public Integer getId() {
		return id;
	}




	public void setId(Integer id) {
		this.id = id;
	}




	public Integer getAno() {
		return ano;
	}




	public void setAno(Integer ano) {
		this.ano = ano;
	}




	public Integer getComIPVA() {
		return comIPVA;
	}




	public void setComIPVA(Integer comIPVA) {
		this.comIPVA = comIPVA;
	}




	public Integer getSemIPVA() {
		return semIPVA;
	}




	public void setSemIPVA(Integer semIPVA) {
		this.semIPVA = semIPVA;
	}




	public Integer getCont() {
		return cont;
	}




	public void setCont(Integer cont) {
		this.cont = cont;
	}
	
}
