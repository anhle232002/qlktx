package com.example.qlktx.models.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import static java.lang.Class.forName;

public class ConnectDB {
    static Connection con;
    static Statement stmt;
    public static Statement connectionDB() throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {

        String url="jdbc:mysql://localhost:3306/ql_ktx";
        String username="root";
        String password="";
        con= DriverManager.getConnection(url,username,password);
        stmt = con.createStatement();
        return stmt;
    }
}
