package matchmaker;

import entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class Request {

    Connect connection = new Connect();


    public List<User> findAll() throws SQLException {
        String request = "SELECT id, level, nickname FROM _USER";
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
            System.err.println("Erreur lors de l'execution de la requete:" + request);
            throw e;
        } finally {
            JDBCUtils.close(resultSet, stmt, conn);
        }
    }

    public User findOne(int idUser) throws SQLException{

        String request = "SELECT id, level, nickname FROM _USER WHERE id = ?";
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            conn = connection.create();
            preparedStatement = conn.prepareStatement(request);
            preparedStatement.setInt(1, idUser);
            resultSet = preparedStatement.executeQuery();

            User user = new User();
            user.setId(resultSet.getInt(1));
            user.setLevel(resultSet.getInt(2));
            user.setNickname(resultSet.getString(3));
            return user;
        } catch (SQLException e) {
            System.err.println("Erreur lors de l'execution de la requete:" + request);
            throw e;
        } finally {
            JDBCUtils.close(resultSet, preparedStatement, conn);
        }

    }
}
