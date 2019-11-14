import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.concurrent.CompletableFuture;

public class UserDAO {
    private Connection connection;

    private PreparedStatement select;

    public UserDAO(Connection connection) {
        this.connection = connection;
    }

    public void init() {
        String selectSql = "SELECT * FROM `user` WHERE id=?";
        try {
            select = connection.prepareStatement(selectSql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public CompletableFuture<User> getUser(int id) {
        return CompletableFuture.supplyAsync(() -> {
            try {
                select.setInt(1, id);
                ResultSet result = select.executeQuery();

                if (result.next()) {
                    int pk = result.getInt(1);
                    String name = result.getString(2);
                    String desc = result.getString(3);

                    select.clearParameters();

                    User user = new User();
                    user.id = pk;
                    user.name = name;
                    user.desc = desc;

                    return user;
                }

                return null;
            } catch (SQLException e) {
                e.printStackTrace();

                return null;
            }
        });
    }
}
