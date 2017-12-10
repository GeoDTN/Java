package xml;
import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

public class XMLread {

	public static void main(String[] args) {
		

			  try {
				 
				  
				  /*
				  File fXmlFile = new File("C:\\Users\\xtphere\\Desktop\\file.xml");
					DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
					DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
					Document doc = dBuilder.parse(fXmlFile);

					//optional, but recommended
					//read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
					doc.getDocumentElement().normalize();

					System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

					NodeList nList = doc.getElementsByTagName("staff");

					System.out.println("----------------------------"); 
					*/
			  } catch (Exception pce) {
				pce.printStackTrace();
			  }
			  	
		
	}

}

