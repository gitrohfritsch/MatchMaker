import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {

    private final static String URL = "jdbc:postgresql://localhost/match_maker";
    private final static String USER = "postgres";
    private final static String PASSWORD = "admin";

    public Connection create() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

