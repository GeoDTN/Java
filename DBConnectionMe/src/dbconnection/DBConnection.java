package dbconnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
public class DBConnection {
	public DBConnection() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Connection con = null;
	
		try
        {
			 Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/personinfo?" + "user=root&password=");
            //System.out.println("Connessione OK");
            JOptionPane.showMessageDialog(null,"Connection OK");
        }
        catch (Exception e)
        {
          
            JOptionPane.showMessageDialog(null,"Connessione corso fallita " + e.getMessage());
            //System.err.println("Exception: " + e.getMessage());
        }
		String sqlSelectDocum = null;
		sqlSelectDocum = "SELECT * FROM articoli1 " +
                         "WHERE Codart_A = 'Art1'";
        try
        {
        	PreparedStatement stSelectDocum = con.prepareStatement(sqlSelectDocum,
                                                 ResultSet.TYPE_SCROLL_SENSITIVE,
                                                 ResultSet.CONCUR_UPDATABLE);
            ResultSet rsDocum = stSelectDocum.executeQuery();
            
            while (rsDocum.next())
            {
            	System.out.println(rsDocum.getString("Desc_A"));    
            }
        }
        catch (SQLException e)
        {
            System.err.println("documento non trovato " + e.getMessage());
        }
        // Insert
        String sqlInsert = "INSERT INTO bella (Codart_A, Desc_A) " +
     	       "VALUES(";
        String ArtX = "ArtIns";
        String DescX = "DescIns";
        String Dati = "'" + ArtX + "','" + DescX + "'";
        sqlInsert += Dati;
        sqlInsert += ")";
        Statement st           = null;
        try {
			st = con.createStatement();
			st.executeUpdate(sqlInsert);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        // Update
        String DescY = "Maglione";
        String ArtY  = "Art3";
        String sqlUpdate = "UPDATE articoli SET Desc_A ='" + DescY +
                "' WHERE Codart_A = '" + ArtY + "'";
        try {
			st = con.prepareStatement(sqlUpdate,
			        ResultSet.TYPE_SCROLL_SENSITIVE,
			        ResultSet.CONCUR_UPDATABLE);
			st.executeUpdate(sqlUpdate);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        // Delete
        String ArtD = "Art1b";
        String sqlDelete = "DELETE FROM bella WHERE Codart_A ='" + ArtD + "'";
        PreparedStatement preparedStmt;
		try {
			preparedStmt = con.prepareStatement(sqlDelete);
			preparedStmt.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}       
		// TODO Auto-generated method stub

	}

}
