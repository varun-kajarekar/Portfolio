package com.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/Upload")


public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Upload() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String path = request.getRealPath("resume")+"\\";

			List<FileItem> multiparts = null;
			
			try {
				
				multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				
			} catch (FileUploadException e) {
				e.printStackTrace();
			}
			
			
			String inputName = null;
			for(FileItem item : multiparts){
			 
				if(item.isFormField()){  // Check regular field.
					inputName = (String)item.getFieldName(); 
						if(inputName.equalsIgnoreCase("username")){ 
							username = (String)item.getString(); 
							System.out.println("UserName is:"+username); 
							}
					}
			}
			
			File file = new File(path+username+".jpg");
			if(! file.exists()) {
				
				for(FileItem item : multiparts){
					if(!item.isFormField()){  
//						String name1 = new File(item.getName()).getName(); name of file
						try {
							item.write( new File(path + File.separator + username+".jpg"));
						} catch (Exception e) {
							e.printStackTrace();
							}
					}
				}	

			String message2 = "true";
			request.setAttribute("message2", message2);
			request.getRequestDispatcher("resumeBuilder.jsp").forward(request, response);
			}
			
			
			
			else {
				String message1 = "true";
				request.setAttribute("message1", message1);
				request.getRequestDispatcher("resumeBuilder.jsp").forward(request, response);
			}
			
			
		
	}
	


}
