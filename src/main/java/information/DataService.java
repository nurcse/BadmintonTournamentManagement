
package information;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author shahab uddin
 */
public class DataService {
    
    private final DatabaseConnection databaseConnection;
    private String query;
    private ResultSet result;
    
    public DataService(){
        databaseConnection = new DatabaseConnection();
        /*query = "select sex from singles";
        result = databaseConnection.getResultset(query);
        try {
            if(result.next()){
            System.out.println(result.getString("sex"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DataService.class.getName()).log(Level.SEVERE, null, ex);
        }*/
    }
    
    public void singlesDataInsert(String name, String reg_no, String phone_no, String sex){
        query = "insert into singles(registration_no, sex) values('"+reg_no+"','"+sex+"') on duplicate key update registration_no=registration_no, sex=sex";
        boolean res = databaseConnection.doDatabaseExecution(query);
        System.out.println(res);
        
        query = "insert into participant_details(name, registration_no, phone_no) values('"+name+"','"+reg_no+"','"+phone_no+"') on duplicate key update name=name, registration_no=registration_no, phone_no=phone_no";
        res = databaseConnection.doDatabaseExecution(query);
        System.out.println(res);
    }
    
    
    public void doublesDataInsert(String name_lead, String reg_lead, String name, String reg, String phone_no, String sex){
        query = "insert into doubles(registration_no, registration_no2, sex) values('"+reg_lead+"', '"+reg+"','"+sex+"') on duplicate key update registration_no=registration_no, registration_no2=registration_no2, sex=sex";
        boolean res = databaseConnection.doDatabaseExecution(query);
        System.out.println(res);
        
        query = "insert into participant_details(name, registration_no, phone_no) values('"+name_lead+"','"+reg_lead+"','"+phone_no+"') on duplicate key update name=name, registration_no=registration_no, phone_no=phone_no";
        res = databaseConnection.doDatabaseExecution(query);
        query = "insert into participant_details(name, registration_no) values('"+name+"','"+reg+"') on duplicate key update name=name, registration_no=registration_no";
        res = databaseConnection.doDatabaseExecution(query);
    }
    
    public void mixDoubleDataInsert(String name_lead, String reg_lead, String name, String reg, String phone_no){
        query = "insert into mix_doubles(registration_no, registration_no2) values('"+reg_lead+"', '"+reg+"') on duplicate key update registration_no=registration_no, registration_no2=registration_no2";
        boolean res = databaseConnection.doDatabaseExecution(query);
        System.out.println(res);
        
        query = "insert into participant_details(name, registration_no, phone_no) values('"+name_lead+"','"+reg_lead+"','"+phone_no+"') on duplicate key update name=name, registration_no=registration_no, phone_no=phone_no";
        res = databaseConnection.doDatabaseExecution(query);
        query = "insert into participant_details(name, registration_no) values('"+name+"','"+reg+"') on duplicate key update name=name, registration_no=registration_no";
        res = databaseConnection.doDatabaseExecution(query);
    }
    
    public ResultSet getSinglesDataMale(){
        query = "select name, registration_no, status from singles natural join participant_details where sex='male' and status=1 ";
        result = databaseConnection.getResultset(query);
        return result;
    }
    
    public ResultSet getSinglesDataMalePending(){
        query = "select name, registration_no, status from singles natural join participant_details where sex='male' and status <> 1 ";
        result = databaseConnection.getResultset(query);
        return result;
    }
    
    public ResultSet getSinglesDataFemale(){
        query = "select name, registration_no, status from singles natural join participant_details where sex='female' and status=1 ";
        result = databaseConnection.getResultset(query);
        return result;
    }
    
    public ResultSet getSinglesDataFemalePending(){
        query = "select name, registration_no, status from singles natural join participant_details where sex='female' and status <> 1 ";
        result = databaseConnection.getResultset(query);
        return result;
    }
    
    public ResultSet getDoublesDataMale(int test){
        if(test == 1){
            query = "select name, registration_no from participant_details where registration_no in (select registration_no from doubles where sex='male' and status=1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
        else {
            query = "select name, registration_no from participant_details where registration_no in (select registration_no2 from doubles where sex='male' and status=1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
    }
    
    public ResultSet getDoublesDataMalePending(int test){
        
        if(test == 1){
            query = "select name, registration_no from participant_details where registration_no in (select registration_no from doubles where sex='male' and status <> 1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
        else {
            query = "select name, registration_no from participant_details where registration_no in (select registration_no2 from doubles where sex='male' and status <> 1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
    }
    
    public ResultSet getDoublesDataFemale(int test){
        
        if(test == 1){
            query = "select name, registration_no from participant_details where registration_no in (select registration_no from doubles where sex='female' and status=1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
        else {
            query = "select name, registration_no from participant_details where registration_no in (select registration_no2 from doubles where sex='female' and status=1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
    }
    
    public ResultSet getDoublesDataFemalePending(int test){
        
        if(test == 1){
            query = "select name, registration_no from participant_details where registration_no in (select registration_no from doubles where sex='female' and status <> 1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
        else {
            query = "select name, registration_no from participant_details where registration_no in (select registration_no2 from doubles where sex='female' and status <> 1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
    }
    
    public ResultSet getMixDoublesData(int test){
        
        if(test == 1){
            query = "select name, registration_no from participant_details where registration_no in (select registration_no from mix_doubles where status=1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
        else {
            query = "select name, registration_no from participant_details where registration_no in (select registration_no2 from mix_doubles where status=1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
    }
    
    public ResultSet getMixDoublesDataPending(int test){
        
        if(test == 1){
            query = "select name, registration_no from participant_details where registration_no in (select registration_no from mix_doubles where status <> 1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
        else {
            query = "select name, registration_no from participant_details where registration_no in (select registration_no2 from mix_doubles where status <> 1) ";
            result = databaseConnection.getResultset(query);
            return result;
        }
    }
    
}
