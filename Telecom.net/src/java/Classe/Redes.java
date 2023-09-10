
package Classe;

import java.util.Date;

/**
 *
 * @author Mateus Gimenes
 */
public class Redes {
    
    private String nome_c; // nome do cliente
    private String plano;  // plano de assinatura
    private String ip;     // ip da rede
    private String end_c;  // endereço
    private String contato_c; // contato do cliente
    private float quant_util; // qnatidade pessoas que iram utilizar a rede
    private Date data_mensal; // data da mensalidade
   
    
    public Redes( String nome_c,String plano, String ip, String end_c, String contato_c,float quant_util,Date data_mensal) {
       this.nome_c  = nome_c;
        this.plano = plano;
        this.ip = ip;
        this.end_c = end_c;
        this.contato_c = contato_c;
        this.quant_util = quant_util;
        this.data_mensal = data_mensal;
     

    }
   // get
    public String getNome_c() {
        return nome_c;
    }

    public String getPlano() {
        return plano;
    }

    public String getIp() {
        return ip;
    }

    public String getEnd_c() {
        return end_c;
    }

    public String getContato_c() {
        return contato_c;
    }

    public float getQuant_util() {
        return quant_util;
    }

    public Date getData_mensal() {
        return data_mensal;
    }

    // set
    public void setNome_c(String nome_c) {
        this.nome_c = nome_c;
    }

    public void setPlano(String plano) {
        this.plano = plano;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setEnd_c(String end_c) {
        this.end_c = end_c;
    }

    public void setContato_c(String contato_c) {
        this.contato_c = contato_c;
    }

    public void setQuant_util(float quant_util) {
        this.quant_util = quant_util;
    }

    public void setData_mensal(Date data_mensal) {
        this.data_mensal = data_mensal;
    }
    
    
    
}
