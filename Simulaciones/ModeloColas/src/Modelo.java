import java.util.Arrays;

import javax.swing.JFrame;

/**
 *
 */

/**
 * @author Silvio
 *
 */
public class Modelo {

	public static void hacer(){
        double num=0;
        int []vec= new int[40];
        int []tipo_avion=new int[40];
        double promE= 0;
        boolean listo=false;
        int ind=0;
        int indA=0;
        int aux=0;
        int e=0;//Espera
        int tiempoExtra=0;

        do{ //40 minutos
            num=Math.random();//Calculo que caigan aviones por probabilidad

            if( (num>0) && (num<0.3) && (!listo) ){
                listo=true;
                num=Math.floor(Math.random()*(60-0)+0);
            }
            if( (num>0.3) && (num<0.7) && (!listo) ){
                listo=true;
                num=Math.floor(Math.random()*(120-60)+60);
            }
            if( (num>0.7) && (num<0.9) && (!listo) ){
                listo=true;
                num=Math.floor(Math.random()*(180-120)+120);
            }
            if( (num>0.9) && (num<1) && (!listo) ){
                listo=true;
                num=Math.floor(Math.random()*(240-180)+180);
            }

            listo=false;
            vec[ind]=(int)num;
            
            double tipo=Math.random();
            
            if((tipo>0.0)&&(tipo<=0.3)){
            	tipo_avion[ind]=15;
            }else if((tipo>0.3)&&(tipo<1.0)){
            	tipo_avion[ind]=10;
            }
            	
            indA=ind;

            if( ind>1 ){
                for( int x=0; x<ind; x++){
                    if( vec[indA] < vec[x] ){
                        aux=vec[indA];
                        vec[indA]=vec[x];
                        vec[x]=aux;
                        
                        aux=tipo_avion[indA];
                        tipo_avion[indA]=tipo_avion[x];
                        tipo_avion[x]=aux;
                        
                    }
                }
            }

            ind++;

        }while(ind<40);

        //HASTA ESTE PUNTO EL VECTOR TIENE LOS MINUTOS DE CADA AVION EN ORDEN ASCENDENTE
        System.out.println("Disposicion Inicial: ");
        System.out.println(Arrays.toString(vec));
        System.out.println(Arrays.toString(tipo_avion));
        System.out.println();


        int []pista1= new int [39];
        int []pista2= new int [39];

        int ind1=1;
        int ind2=1;
        int cont=2;

        pista1[0]=vec[0];
        pista2[0]=vec[1];

           System.out.println("Con dos pistas:");
        do{

            if( pista1[ind1-1]<pista2[ind2-1] ){//PISTA CON MENOS DEMORA
                pista1[ind1]=vec[cont];
                e=Math.abs(tipo_avion[ind1]-(pista1[ind1]-pista1[ind1-1]));
                pista1[ind1] += e;
                promE += e;
                ind1++;
            }else{
                pista2[ind2]=vec[cont];
                e=Math.abs(tipo_avion[ind2]-(pista2[ind2]-pista2[ind2-1]));
                pista2[ind2] += e;
                promE += e;
                ind2++;
            }

            cont++;

        }while( (ind1+ind2)<40 );

        promE= (promE/(double)40);

        tiempoExtra=pista1[ind1-1];
        tiempoExtra -= 240;
        System.out.println("Tiempo Extra Pista1: "+String.valueOf(tiempoExtra).toString());
        tiempoExtra=pista2[ind2-1];
        tiempoExtra -= 240;
        System.out.println("Tiempo Extra Pista2: "+String.valueOf(tiempoExtra).toString());


        System.out.println("Promedio de Espera: "+String.valueOf(promE).toString());

        System.out.println("Aviones en dos pistas");
        System.out.println(Arrays.toString(pista1));
        System.out.println(Arrays.toString(pista2));
        System.out.println(vec.length + " aviones");

        //--------------------------------------------

        System.out.println("\n\nCon una pista:");
         /*ind1=1;
         ind2=1;
         cont=2;*/
         promE=0;

        for( int x=1; x<40; x++){
            e=Math.abs(tipo_avion[x]-(vec[x]-vec[x-1]));
            vec[x] += e;
            promE += e;
        }
            promE= (promE/(double)39);

        tiempoExtra=vec[39];
        tiempoExtra -= 240;

        System.out.println("Tiempo Extra: "+String.valueOf(tiempoExtra).toString());

        System.out.println("Promedio de Espera: "+String.valueOf(promE).toString());

        System.out.println("Aviones en una sola pista");
        System.out.println(Arrays.toString(vec));
        System.out.println(vec.length + " aviones");
        
        /*JFrame vtn=new JFrame();
        vtn.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        vtn.setBounds(0, 0, 300, 300);
        vtn.setResizable(false);
        vtn.getContentPane().add(new grafico());
        vtn.setVisible(true);*/
        
	}

}
