/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package information;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author shahab uddin
 */
public class DatabaseConnection {
    private PreparedStatement statement;
    private ResultSet res;
    private Connection conn;
    
    public DatabaseConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/badminton_db", "root", "") ;
            conn = DriverManager.getConnection("jdbc:mysql://127.13.100.2:3306/sustcsebadminton", "adminA2bmInG", "jpDYXDGYaNa8");
            System.out.println("database connected");
        }catch(ClassNotFoundException e){
            System.out.println("ERROR");
        } catch (SQLException e) {
        }
    
    }
    
     public ResultSet getResultset(String query) {

        try {
            statement = conn.prepareStatement(query);
            res = statement.executeQuery(query);

        } catch (SQLException e) {
        }

        return res;
    }

    public boolean doDatabaseExecution(String query) {
        try {
            statement = conn.prepareStatement(query);
            return statement.execute(query);

        } catch (SQLException e) {
            StringWriter writer = new StringWriter();
            e.printStackTrace(new PrintWriter(writer));
            String stackTrace = writer.toString();
            System.out.println(stackTrace);
        }
        return false;
    }
    
}
