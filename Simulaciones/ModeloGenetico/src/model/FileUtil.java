package model;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Scanner;

import javax.imageio.ImageIO;

/**
 * Clase utilitaria para manejo de archivos.
 *
 * @author Guido Tagliavini
 * @since v1.0.0
 */

public class FileUtil {

	/**
	 * M�todo de escritura en formato texto a un archivo.
	 *
	 * @author Guido Tagliavini
	 */
	public static void writeText(String path, ArrayList<String> data){
		File file = getLowestAvailablePath(path, "txt");

		if(file.exists()){
			file.delete();
			System.out.println("[ INFO] Overwriting file (" + file.getPath() + ")");
		}

		try{
			PrintWriter printWriter = new PrintWriter(new FileWriter(file));
			try{
				for(int i = 0 ; i < data.size() ; i++){
					printWriter.println(data.get(i));
				}
			}finally{
				printWriter.flush();
				printWriter.close();
			}

		}catch (IOException e){
			e.printStackTrace(System.err);
		}
	}

	/**
	 * M�todo de lectura en formato texto desde un archivo.
	 *
	 * @autor Guido Tagliavini
	 * @param path
	 * @return
	 */
	public static ArrayList<String> readText(String path){
		File file = new File(path);
		ArrayList<String> result = new ArrayList<String>();

		if(file.exists()){
			try{
				Scanner scanner = new Scanner(new FileReader(file));
				try{
					while(scanner.hasNextLine()){
						result.add(scanner.next());
					}
				}finally{
					scanner.close();
				}
			}catch(IOException e){
				e.printStackTrace(System.err);
			}
		}else{
			System.err.println("[ERROR] Non-existing file (" + file.getPath() + ")");
		}

		return result;
	}


	/**
	 * M�todo escritura de im�genes a un archivo.
	 *
	 * @autor Guido Tagliavini
	 * @param path
	 * @return
	 */
	public static void writeImage(String path, BufferedImage bufferedImage){
		File file = getLowestAvailablePath(path, "png");

		if(file.exists()){
			file.delete();
			System.out.println("[ INFO] Overwriting file (" + file.getPath() + ")");
		}

		try{
			ImageIO.write(bufferedImage, "png", file);
		}catch(IOException e){
			e.printStackTrace(System.err);
		}
	}


	/**
	 * M�todo lectura de im�genes desde un archivo.
	 *
	 * @author Silvio Vileri�o
	 * @param path
	 */
	public static BufferedImage readImage(String path) {
		File file = new File(path);
		BufferedImage result = null;

		try {
			result = ImageIO.read(file);
		} catch (IOException e) {
			e.printStackTrace(System.err);
		}

		return result;
	}


	public static String[] buildString (ArrayList<String> arrayList){
		String[] result = new String[arrayList.size()];

		for(int i = 0 ; i < result.length ; i++){
			result[i] = arrayList.get(i);
		}

		return result;
	}


	/**
	 * Encuentra el path asociado m�s peque�o, agregando un �ndice.
	 * @author Guido Tagliavini
	 * @param path
	 * @param suffix
	 * @return
	 */
	public static File getLowestAvailablePath(String path, String suffix){
		File file;
		int n = 0;

		do{
			file = new File(path + "(" + n + ")" + "." + suffix);
			++ n;
		}while(file.exists());

		return file;
	}

	/**
	 * @author Silvio Vileri�o
	 */
	public static URL getURL(File file){
		URL result = null;
		try {
			result = file.toURI().toURL();
		} catch (MalformedURLException e) {
			e.printStackTrace(System.err);
		}

		return result;
	}

	private FileUtil(){}
}
