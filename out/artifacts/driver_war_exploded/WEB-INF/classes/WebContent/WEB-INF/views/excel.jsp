<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@page language="java" contentType="application/x-msdownload"
	pageEncoding="UTF-8"%>
<%
    response.reset();
	response.setContentType("application/x-download");
	String filedownload = request.getContextPath()+"/excel.xls";
	String filedisplay = "excel.xls";
	filedisplay = URLEncoder.encode(filedisplay, "UTF-8");
	response.addHeader("Content-Disposition", "attachment;filename=" + filedisplay);

	java.io.OutputStream outp = null;
	java.io.FileInputStream in = null;
	try {
		outp = response.getOutputStream();
		try {
			in = new FileInputStream(filedownload);
		} catch (Exception e) {
			e.printStackTrace();
		}
		byte[] b = new byte[1024];
		int i = 0;

		while ((i = in.read(b)) > 0) {
			outp.write(b, 0, i);
		}
		outp.flush();
		out.clear();
		out = pageContext.pushBody();
	} catch (Exception e) {
		System.out.println("Error!");
		e.printStackTrace();
	} finally {
		if (in != null) {
			in.close();
			in = null;
		}
	}
%>