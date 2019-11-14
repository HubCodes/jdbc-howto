import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class Main {
    public static void main(String[] args) throws Exception {
        String user = args[0];
        String password = args[1];

        Connection connection = null;
        Properties connectionProps = new Properties();

        connectionProps.put("user", user);
        connectionProps.put("password", password);

        connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/howtojdbc", connectionProps);

        System.out.println("Connection Established!");
    }
}
