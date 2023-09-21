package com.cydeo.jdbcTests.day2;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {


    String dbURL ="jdbc:oracle:thin:@34.202.158.24:1521:XE";     // INSTEAD OF THIS URL USE YOUR IP FROM EC2 INSTANCE
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void flexibleNavigation() throws SQLException {

        // DriverManager class will help us to create connection with the help getConnection method
        Connection connection = DriverManager.getConnection(dbURL , dbUsername , dbPassword) ;

        // it helps us to execute queries
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE , ResultSet.CONCUR_READ_ONLY) ;

        // ResultSet object will store  data after execution. it stores only data
        ResultSet resultSet = statement.executeQuery("select FIRST_NAME,LAST_NAME from EMPLOYEES") ;

        // get me first row info

        resultSet.next() ;

        System.out.println(resultSet.getString(1) + " " + resultSet.getString(2));

        // get me second row info

        resultSet.next() ;

        System.out.println(resultSet.getString(1) + " " + resultSet.getString(2));

        // get me last row info

        resultSet.last() ;
        System.out.println(resultSet.getString(1) + " " + resultSet.getString(2));



        // How many row we have ?

        System.out.println("resultSet.getRow() = " + resultSet.getRow()); // 107


        // get data from row 8

        resultSet.absolute(8) ;
        System.out.println("resultSet.getRow() = " + resultSet.getRow()); // 8
        System.out.println(resultSet.getString(1) + " " + resultSet.getString(2));


        /*

        How can we get how many row we have

            re.last();
            int rowNumber = rs.getRow() ;

         */

        resultSet.previous() ;
        System.out.println(resultSet.getString(1) + " " + resultSet.getString(2));


        // to print all data from beginning we need to move cursor into beforeFirstRow

        resultSet.beforeFirst();

        // How to print all result set info

        System.out.println(" -----How to print all result set info----- ");

        while (resultSet.next()) {

            System.out.println(resultSet.getRow() + "." + resultSet.getString(1) + " " + resultSet.getString(2));
        }









        // Close Connection
        resultSet.close();
        statement.close();
        connection.close();
    }


    }



