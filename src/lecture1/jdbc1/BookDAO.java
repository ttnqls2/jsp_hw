package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class BookDAO {

    private static Book getBookFrom(ResultSet resultSet) throws SQLException {
    	 Book book = new Book();
    	 book.setId(resultSet.getInt("id"));
    	 book.setTitle(resultSet.getString("book"));
    	 book.setAuthor(resultSet.getString("name"));
    	 book.setCategoryId(resultSet.getInt("categoryid"));
    	 book.setCategory(resultSet.getString("category"));
    	 book.setPrice(resultSet.getInt("price"));
    	 book.setPublisher(resultSet.getString("publisher"));

         return book;
    }

    public static List<Book> findAll() throws Exception {
    	String sql = "SELECT b.*, c.categoryId " +
                "FROM book b LEFT JOIN category c ON c.categoryid = c.id";
   try (Connection connection = DB.getConnection("book");
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery()) {
       ArrayList<Book> list = new ArrayList<Book>();
       while (resultSet.next())
    	   list.add(getBookFrom(resultSet));
       return list;
    }
    }
    public static List<Book> findByName(String name) throws Exception {
    	String sql = "SELECT b.*, c.categoryName " +
                "FROM book b LEFT JOIN category c ON c.categoryid = c.id "
    			 + "WHERE b.name LIKE ?";
   try (Connection connection = DB.getConnection("book");
        PreparedStatement statement = connection.prepareStatement(sql)) {
	   statement.setString(1, name + "%");

        try (ResultSet resultSet = statement.executeQuery()) {
       ArrayList<Book> list = new ArrayList<Book>();
       while (resultSet.next())
    	   list.add(getBookFrom(resultSet));
       return list;
            }
        }
    }
}