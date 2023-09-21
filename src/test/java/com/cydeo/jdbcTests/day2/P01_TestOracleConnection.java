package com.cydeo.jdbcTests.day2;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_TestOracleConnection {



        String dbURL ="jdbc:oracle:thin:@34.202.158.24:1521:XE";     // INSTEAD OF THIS URL USE YOUR IP FROM EC2 INSTANCE
        String dbUsername = "hr";
        String dbPassword = "hr";


    @Test
    public void testConnection() throws SQLException {

        // DriverManager class will help us to create connection with the help getConnection method
        Connection  connection = DriverManager.getConnection(dbURL , dbUsername , dbPassword) ;

        // it helps us to execute queries
        Statement statement = connection.createStatement() ;

        // ResultSet object will store  data after execution. it stores only data
        ResultSet resultSet = statement.executeQuery("select * from regions") ;

        // if we wanna get data from database we are gonna implement in here

        // Get me first row region id

        //next() --> true if the new current row is valid , false if there are no more rows
       /*  resultSet.next() ;


        System.out.println(" First Row Info ");

        //ColumIndex
        System.out.println("resultSet.getString(1) = " + resultSet.getString(1));
        System.out.println("resultSet.getString(\"region_id\") = " + resultSet.getString("region_id"));

        System.out.println("resultSet.getInt(1) = " + resultSet.getInt(1));
        System.out.println("resultSet.getInt(\"region_id\") = " + resultSet.getInt("region_id"));

        // Get me first region_name

        System.out.println("resultSet.getString(2) = " + resultSet.getString(2));
        System.out.println("resultSet.getString(\"region_name\") = " + resultSet.getString("region_name"));

        //Second row 2 - Americas
        resultSet.next() ;

        System.out.println(" Second Row Info ");

        System.out.println(resultSet.getString(1) + " - " + resultSet.getString(2));

        //Third row 3 - Asia
        resultSet.next() ;

        System.out.println(" Third Row Info ");

        System.out.println(resultSet.getString(1) + " - " + resultSet.getString(2));


        //Fourth row 4 - Middle East and Africa
        resultSet.next() ;

        System.out.println(" Fourth Row Info ");

        System.out.println(resultSet.getString(1) + " - " + resultSet.getString(2));

         */


        // What if we have 1000 line in result test ?

        while (resultSet.next()) {

            System.out.println("---------------------------------------------------");

            System.out.println(resultSet.getString(1) + " - "  + resultSet.getString(2));


        }


        // Close Connection
        resultSet.close();
        statement.close();
        connection.close();
    }
}
