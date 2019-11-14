import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class Main {
    public static void main(String[] args) throws Exception {
        String dbUser = args[0];
        String dbPassword = args[1];

        Connection connection = null;
        Properties connectionProps = new Properties();

        connectionProps.put("user", dbUser);
        connectionProps.put("password", dbPassword);

        connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/howtojdbc", connectionProps);

        System.out.println("Connection Established!");

        UserDAO userDAO = new UserDAO(connection);
        userDAO.init();
        User user = userDAO.getUser(1);

        System.out.println(user);
    }
}
