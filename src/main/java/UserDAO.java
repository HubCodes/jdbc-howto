import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    private Connection connection;

    private PreparedStatement select;

    public UserDAO(Connection connection) {
        this.connection = connection;
    }

    public void init() {
        String selectSql = "SELECT * FROM `user`";
        try {
            select = connection.prepareStatement(selectSql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public User getUser(int id) {
        try {
            ResultSet result = select.executeQuery();

            result.last();
            int userCount = resultSetMetaData.getColumnCount();

            int pk = result.getInt(1);
            String name = result.getString(2);
            String desc = result.getString(3);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
