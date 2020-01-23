
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;


public class Request {

    Connect connection = new Connect();


    public List<User> findAll() throws SQLException {

        String request = "SELECT id, username, email FROM _USER";

        Connection conn = null;
        Statement stmt = null;
        ResultSet resultSet = null;
        try {
            conn = connection.create();
            stmt = conn.createStatement();
            resultSet = stmt.executeQuery(request);

            List<User> users = new ArrayList<User>();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt(1));
                user.setLevel(resultSet.getInt(2));
                user.setNickname(resultSet.getString(3));
                users.add(user);
            }

            return users;
        } catch (SQLException e) {
            System.err.println("Erreur lors de l'execution de la requête:" + request);
            throw e;
        } finally {
            JDBCUtils.close(resultSet, stmt, conn);
        }

    }
}
