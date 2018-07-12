package com.wsy.blog.until;

public class ParameterUtil {
	
	public static boolean isNull(String s){
		if(s == null || "".equals(s)){
			return true;
		}
		return false;
	}
	
	
	public static String escape(String s){
		if(!isNull(s)){
			char[] c = s.toCharArray();
			StringBuffer buf = new StringBuffer();
			for(int i = 0; i < c.length; i++){
				buf.append("/"+c[i]);
			}
			return buf.toString();
		}
		return s;
	}
	/*public static void main(String[] args) {
		double x=2;
		double y;

		y=x+3/2;

		System.out.println( y );
	}*/
}
