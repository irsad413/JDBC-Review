package com.cydeo.jdbcTests.day2;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P04_ListMap {


    String dbURL = "jdbc:oracle:thin:@34.202.158.24:1521:XE";     // INSTEAD OF THIS URL USE YOUR IP FROM EC2 INSTANCE
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void listMap() throws SQLException {

        // DriverManager class will help us to create connection with the help getConnection method
        Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        // it helps us to execute queries
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResultSet object will store  data after execution. it stores only data
        ResultSet resultSet = statement.executeQuery("select * from REGIONS");


        // ResultSetMetaData

        ResultSetMetaData resultSetMetaData = resultSet.getMetaData() ;

        // Create a list to put maps for each row
        List<Map<String , Object>> dataList = new ArrayList<>() ;

        //iterate each row

        while (resultSet.next()){

            // store data from that row into map

            Map<String , Object> rowMap = new HashMap<>() ;
            for (int i = 1; i <= resultSetMetaData.getColumnCount(); i++) {

               rowMap.put(resultSetMetaData.getColumnName(i) , resultSet.getString(i)) ;

            }

            dataList.add(rowMap) ;
        }

        System.out.println(" Print all data from any query ");

        for (Map<String , Object> eachRow : dataList) {

            System.out.println(eachRow);
        }








        resultSet.close();
        statement.close();
        connection.close();



    }

    }
