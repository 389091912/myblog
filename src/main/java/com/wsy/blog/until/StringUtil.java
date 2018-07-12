package com.wsy.blog.until;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-12
 * Time: 14:04
 */
public class StringUtil {


    public static String patternDate(Date date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss" );
        return dateFormat.format( date );
    }
    public static String  renameFileName(String fileName){
        int dotIndex = fileName.lastIndexOf( "." );
        String stuffix = fileName.substring( dotIndex );
        String name = new SimpleDateFormat( "yyyyMMddHHmmss" ).format( new Date() );
        return name+stuffix;
    }


}
