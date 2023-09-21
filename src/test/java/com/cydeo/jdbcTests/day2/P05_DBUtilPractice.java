package com.cydeo.jdbcTests.day2;

import com.cydeo.jdbcTests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P05_DBUtilPractice {

    @Test
    public void dbUtilPractice (){

        // Create con
        DB_Util.createConnection();

        // Run con
        DB_Util.runQuery("select  FIRST_NAME , LAST_NAME, SALARY from EMPLOYEES") ;

        System.out.println(" Get me first row first column ");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println(" Get me All column names ");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println(" Get me All first names ");
        System.out.println(DB_Util.getColumnDataAsList(1));

        System.out.println(" Get me how many row we have ");
        System.out.println(DB_Util.getRowCount());

        System.out.println(" Get me all data from execution ");
        List<Map<String , String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap() ;

        for (Map<String , String> eachMap : allRowAsListOfMap ) {

            System.out.println(eachMap);
        }

        DB_Util.destroy();


    }
}
