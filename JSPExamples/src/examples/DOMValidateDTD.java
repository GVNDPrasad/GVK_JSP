package examples;

import java.io.*;
import org.w3c.dom.*;
import org.xml.sax.*;
import javax.xml.parsers.*;
import javax.xml.validation.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.transform.stream.StreamResult;

public class DOMValidateDTD {
	public static void main(String args[]) {	
		try{
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			factory.setValidating(true);
			DocumentBuilder builder = factory.newDocumentBuilder();
			builder.setErrorHandler(new org.xml.sax.ErrorHandler() {
				//Ignore the fatal errors
				public void fatalError(SAXParseException exception)throws SAXException { }
				//Validation errors 
				public void error(SAXParseException e)throws SAXParseException {
					System.out.println("Error at " +e.getLineNumber() + " line.");
					e.printStackTrace();
					System.out.println(e.getMessage());
					System.exit(0);
				}
				//Show warnings
				public void warning(SAXParseException err)throws SAXParseException{
					System.out.println(err.getMessage());
					System.exit(0);
				}
			});
			Document xmlDocument = builder.parse(new FileInputStream("E:\\Programs\\JSP\\workspace\\JSPExamples\\src\\examples\\bookstore.xml"));
			DOMSource source = new DOMSource(xmlDocument);
			StreamResult result = new StreamResult(System.out);
			TransformerFactory tf = TransformerFactory.newInstance();
			Transformer transformer = tf.newTransformer();
			transformer.setOutputProperty(OutputKeys.DOCTYPE_SYSTEM, "E:\\Programs\\JSP\\workspace\\JSPExamples\\src\\examples\\bookstore.dtd");
			transformer.transform(source, result);
		}
		catch (Exception e) {
			e.printStackTrace();
			//System.out.println(e.getMessage());
		}
	}
}