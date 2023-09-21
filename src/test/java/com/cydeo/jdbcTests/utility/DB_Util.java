package com.cydeo.jdbcTests.utility;

import java.sql.*;

public class DB_Util {

    private static Connection con ;
    private static Statement stm;
    private static ResultSet rs;

    private static ResultSetMetaData rsmd ;


    public static void createConnection(String url , String username, String password){
        try {
            con = DriverManager.getConnection(url, username, password) ;
            System.out.println("CONNECTION SUCCESSFUL");
        } catch (Exception e) {
            System.out.println("CONNECTION HAS FAILED " + e.getMessage() );
        }
    }


    public static ResultSet runQuery (String sql){
        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE , ResultSet.CONCUR_READ_ONLY) ;
            rs = stm.executeQuery(sql) ;
            rsmd = rs.getMetaData() ;
        } catch (Exception e) {
            System.out.println("ERROR OCCURRED WHILE RUNNING QUERY " + e.getMessage() );
        }

        return rs ;
    }



    public static void destroy(){

        try {
            if( rs!=null)  rs.close();
            if( stm!=null)  stm.close();
            if( con!=null)  con.close();
        } catch (Exception e) {
            System.out.println("ERROR OCCURRED WHILE CLOSING RESOURCES " + e.getMessage() );
        }

    }
}
