
import dao.libroDAO;
import model.libroDTO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author csimes
 */
public class Prueba {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic her
       /* libroDTO nuevolibro=new libroDTO();
        nuevolibro.setLibro_id(2);
        nuevolibro.setTitulo("Ingeniería de Software");
        nuevolibro.setAutor("Pressman");
        nuevolibro.setPrecio(650);
       */
        libroDAO ldao=new libroDAO();
        /*ldao.update(nuevolibro);*/
       
        System.out.print (ldao.read(2).toString());
        for(int t=0;t<ldao.readAll().size();t++){
        System.out.println(ldao.readAll().get(t).toString());
       }
    }
    
}
