package model;

import java.sql.*;
import java.util.List;

public class CreateItemDB {

    public CreateItemDB(){

        try{
            // Create a named constant for the URL.
            // NOTE: This value is specific for Java DB.
            final String DB_URL = "jdbc:derby:ProductDB;create=true";

            // Create a connection to the database.
            Connection conn =
                    DriverManager.getConnection(DB_URL);

            // If the DB already exists, drop the tables.
            dropTables(conn);

            // Build the Coffee table.
            buildItemTable(conn);

            // Build the Customer table.
            buildShoppingCartTable(conn);

            // Close the connection.
            conn.close();
        } catch (Exception e) {
            System.out.println("Error Creating the Coffee Table");
            System.out.println(e.getMessage());
        }
    }
    /**
     * The buildItemTable method create the Item table and adds all Items from ItemCatalog as rows to teh table
     */
    public static void buildItemTable(Connection conn){


        ItemCatalog itemCatalog = new ItemCatalog();
        List<Item> catalog = itemCatalog.getItemCatalog();

        try{
            //Get a Statement object
            Statement stmt = conn.createStatement();


            stmt.execute("CREATE TABLE ItemTable " +
                    "(Prodnum INTEGER not NULL PRIMARY KEY, " +
                    "Name VARCHAR (255)," +
                    "Cost Double," +
                    "Type VARCHAR(255)," +
                    "Img VARCHAR(255), " +
                    "Sale BOOLEAN)");


            for (Item i:catalog) {
                stmt.execute("INSERT INTO ItemTable VALUES (" +
                        i.getProductNumber()+","+
                        "'"+ i.getName() +"',"+
                        i.getCost()+","+
                        "'"+i.getType()+"'," +
                        "'"+i.getImg()+"',"+
                        "'"+i.getSale()+"')");

            }
            System.out.println("ItemTable table created");

        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
    public static void buildShoppingCartTable(Connection conn){

        try{
            Statement stmt = conn.createStatement();
            stmt.execute("CREATE TABLE ShoppingCart " +
                    "(Prodnum INTEGER not NULL PRIMARY KEY, " +
                    "Name VARCHAR (255)," +
                    "Cost Double," +
                    "Img VARCHAR(255))");

            System.out.println("Shopping Cart created\n\n");
        } catch (SQLException e) {
            System.out.println("Error " + e.getMessage());
            e.printStackTrace();
        }
    }
    /**
     * drops tables in case the database already has existing tables
     */
    public static void dropTables(Connection conn){
        System.out.println("Checking for existing tables");

        //Get a Statement object
        try {
            Statement stmt = conn.createStatement();

            try{
                //Drop the ItemTable table
                stmt.execute("DROP TABLE ItemTable");
                System.out.println("ItemTable table dropped");
            } catch(SQLException e){
                // The error would be that nothing existed so its fine
            }

            try{
                //Drop ShoppingCart table
                stmt.execute("DROP TABLE ShoppingCart");
                System.out.println("ShoppingCart table dropped");
            }catch (SQLException e){
                // there was no table to drop

            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
    public static void displayCatalog() {
        final String DB_URL = "jdbc:derby:ProductDB";
        try {

            Connection conn = DriverManager.getConnection(DB_URL);
            Statement stmt = conn.createStatement();

            System.out.println("====================================");
            System.out.println("Catalog Listing");
            System.out.println("====================================");
            String sql = "SELECT ProdNum, Name, Cost, Img FROM ItemTable";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {

                //Get column by name
                String id = rs.getString("ProdNum");
                String name = rs.getString("Name");
                double cost = rs.getDouble("Cost");
                String img = rs.getString("Img");

                System.out.println("ID: " + id);
                System.out.println("Name: " + name);
                System.out.println("Cost: " + cost);
                System.out.println("Img: " + img + "\n");

            }
            //clean up environment
            rs.close();
            stmt.close();
            conn.close();
        }catch(SQLException e){
            System.out.println("Error :" + e.getMessage());
        }
    }
}
