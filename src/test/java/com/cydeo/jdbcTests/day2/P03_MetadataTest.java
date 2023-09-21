package com.cydeo.jdbcTests.day2;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetadataTest {

    String dbURL = "jdbc:oracle:thin:@34.202.158.24:1521:XE";     // INSTEAD OF THIS URL USE YOUR IP FROM EC2 INSTANCE
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void metadataTest() throws SQLException {

        // DriverManager class will help us to create connection with the help getConnection method
        Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        // it helps us to execute queries
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResultSet object will store  data after execution. it stores only data
        ResultSet resultSet = statement.executeQuery("select FIRST_NAME,LAST_NAME , SALARY from EMPLOYEES");


        // Database Metadata --> it is information about database itself

        DatabaseMetaData databaseMetaData = connection.getMetaData() ;
        System.out.println("databaseMetaData.getUserName() = " + databaseMetaData.getUserName());
        System.out.println("databaseMetaData.getDriverName() = " + databaseMetaData.getDriverName());
        System.out.println("databaseMetaData.getDriverVersion() = " + databaseMetaData.getDriverVersion());
        System.out.println("databaseMetaData.getDatabaseProductName() = " + databaseMetaData.getDatabaseProductName());


        // ResultSet Metadata --> it provides information about table upper side (columnName or columnCount)
        ResultSetMetaData resultSetMetaData = resultSet.getMetaData() ;

        // How many column we have?
        int columCount = resultSetMetaData.getColumnCount() ;
        System.out.println("columCount = " + columCount);


        //What is name of second column?
        System.out.println("resultSetMetaData.getColumnName(2) = " + resultSetMetaData.getColumnName(2));


        //Can we get all column names?

        System.out.println(" ALl column names : ");

        for (int i = 1; i <= columCount; i++) {

            System.out.println("resultSetMetaData.getColumnName(i) = " + resultSetMetaData.getColumnName(i));

        }


        System.out.println(" Print all data dynamically");

        // First_Name - Steven  Last_Name - King  Salary - 24000

        // iterate each row
        while (resultSet.next()) {
            //iterate each column

            for (int i = 1; i <= columCount ; i++) {

                System.out.print(resultSetMetaData.getColumnName(i) + " - " + resultSet.getString(i) + " , ");
            }

            System.out.println();
        }




        // Close Connection
        resultSet.close();
        statement.close();
        connection.close();

    }

}
