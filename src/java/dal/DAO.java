/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.*;

/**
 *
 * @author ducnk
 */
public class DAO extends DBContext {

    public List<Product> getProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(7), rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getInt(6));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> getProductAdmin() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product join Category on product.CategoryID = Category.ID";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(7), rs.getString(1), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getInt(6), new Category(rs.getInt(9), rs.getString(8)));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> getNewProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select top 4 * from product";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(7), rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getInt(6));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> getProductFilter(String priceFilter, int id) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where productPrice between " + priceFilter + " and CategoryID =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Product p = new Product(rs.getInt(7), rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getInt(6));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Product getProductById(int id) {

        String sql = "select * from product where ID =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Product p = new Product(rs.getInt(7), rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getInt(6));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public List<Product> getProductFilter2(String priceFilter) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where productPrice between " + priceFilter;
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Product p = new Product(rs.getInt(7), rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getInt(6));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> getProductByCId(int id) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where CategoryID =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Product p = new Product(rs.getInt(7), rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getInt(6));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> getProductByName(String name) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where productName like ?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + name + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Product p = new Product(rs.getInt(7), rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getInt(6));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public int editProduct(Product p) {
        String query = "UPDATE product SET productName = ?, CategoryID = ?, productDescription = ?, img = ?, productPrice = ?, quantity =? WHERE [ID] =?;";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setString(1, p.getName());
            ps.setInt(2, p.getcId());
            ps.setString(3, p.getDescription());
            ps.setString(4, p.getImg());
            ps.setFloat(5, p.getPrice());
            ps.setInt(6, p.getQuantity());
            ps.setInt(7, p.getId());
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }
    public int editAccount(int role,int id) {
        String query = "UPDATE account SET [role] = ? WHERE ID=?;";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setInt(1, role);
            ps.setInt(2, id);
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }
    
    public int editCart(int pid,int uid,int quantity) {
        String query = "UPDATE Cart set quantity=? where UserID = ? and ProductID =?";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setInt(1, quantity);
            ps.setInt(2, uid);
            ps.setInt(3, pid);
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }
     public int editCart1(int cid,int quantity) {
        String query = "UPDATE Cart set quantity=? where ID=?";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setInt(1, quantity);
            ps.setInt(2, cid);
            
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }
    public Cart getCart(int pid,int uid) {
        
        String sql = "select * from Cart where UserID = ? and ProductID =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, uid);
            st.setInt(2, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Cart p = new Cart(rs.getInt(4), rs.getInt(3), rs.getInt(1), rs.getInt(2)) ;
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
public int editCategory(Category p) {
        String query = "UPDATE Category SET categoryName = ?, img = ? WHERE ID = ?;";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setString(1, p.getName());
            ps.setString(2, p.getImg());
            ps.setInt(3, p.getId());
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }
public int addCategory(Category p) {
        String query = "insert into Category(categoryName,img) values(?,?)";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setString(1, p.getName());
            ps.setString(2, p.getImg());
            
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }

public int addToCart(int pid, int uid) {
        String query = "insert into Cart(ProductID,UserID,quantity)values(?,?,1)";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setInt(1, pid);
            ps.setInt(2, uid);
            
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }
    public int addProduct(Product p) {
        String query = "INSERT INTO product(productName, CategoryID, productDescription,img,productPrice,quantity) VALUES (?, ?, ?,?,?,?);";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setString(1, p.getName());
            ps.setInt(2, p.getcId());
            ps.setString(3, p.getDescription());
            ps.setString(4, p.getImg());
            ps.setFloat(5, p.getPrice());
            ps.setInt(6, p.getQuantity());

            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }
    public int addCoupound(Coupound p) {
        String query = "INSERT INTO Coupound(CodeName, CodeDetail, [Value]) VALUES (?, ?, ?);";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setString(1, p.getName());
            ps.setString(2, p.getDetail());
            ps.setString(3, p.getValue());

            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }
    public int editCoupound(Coupound p) {
        String query = "UPDATE Coupound SET CodeName = ?, CodeDetail = ?, [Value] =? WHERE ID = ?;";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            // Chuyển đổi hid thành kiểu int (hotel_id)
            ps.setString(1, p.getName());
            ps.setString(2, p.getDetail());
            ps.setString(3, p.getValue());
            ps.setInt(4, p.getId());

            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // Thường thì nên in ra lỗi để biết lý do khi xảy ra lỗi.
        }
        return -1;
    }

    public List<Category> getTopCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "select top 4 * from Category";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category p = new Category(rs.getInt(2), rs.getString(1), rs.getString(3));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Category> getCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Category";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category p = new Category(rs.getInt(2), rs.getString(1), rs.getString(3));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    public Category getCategoryById(int id) {
        
        String sql = "select * from Category where Category.ID = ?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category p = new Category(rs.getInt(2), rs.getString(1), rs.getString(3));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public account getAccount(String user, String pass) {

        String sql = "select * from account where UserName = ? and passWord=?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                account p = new account(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
    public List<Cart> getCartById(int id) {
        List<Cart> list = new ArrayList<>();
        String sql = "select * from Cart join product on Cart.ProductID = product.ID where UserID =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Cart p = new Cart(rs.getInt(4),new Product(rs.getInt(11), rs.getString(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getFloat(9), rs.getInt(10)), rs.getInt(3), rs.getInt(2));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
        public account getAccountById(int id) {

        String sql = "select * from account where ID =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                account p = new account(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
    public List<account> getAllAccount() {
List<account> list = new ArrayList<>();
        String sql = "select * from account ";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                account p = new account(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    public List<Post> getTopPost() {
        List<Post> list = new ArrayList<>();
        String sql = "select top 3 * from post";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Post p = new Post(rs.getInt(6), rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    public List<Coupound> getCoupound() {
        List<Coupound> list = new ArrayList<>();
        String sql = "select * from Coupound";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Coupound p = new Coupound(rs.getInt(4), rs.getString(1), rs.getString(2), rs.getString(3)) ;
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    public Coupound getCoupoundById(int id) {
       
        String sql = "select * from Coupound where ID =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Coupound p = new Coupound(rs.getInt(4), rs.getString(1), rs.getString(2), rs.getString(3)) ;
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
    public Coupound getCoupoundByName(String name) {
       
        String sql = "select * from Coupound where CodeName =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Coupound p = new Coupound(rs.getInt(4), rs.getString(1), rs.getString(2), rs.getString(3)) ;
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public boolean signup(account a) {
        String query = "insert into account(UserName,[passWord],[role],[Name]) values(?,?,2,?)";

        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, a.getName());
            ps.setString(2, a.getPass());
            ps.setString(3, a.getuName());
            int rowsAffected = ps.executeUpdate();

            return rowsAffected > 0; // Trả về true nếu có dòng bị ảnh hưởng (đã thêm người dùng mới), ngược lại trả về false
        } catch (SQLException e) {
            System.out.println(e);
            // Xử lý ngoại lệ
            return false;
        }
    }

    public void deleteProduct(int id) {
        try {

            connection.setAutoCommit(false); // Tắt chế độ tự động commit

            // Cập nhật cột hotel_id trong bảng rooms thành null cho những phòng thuộc khách sạn
            // Xóa khách sạn
            String deleteHotelQuery = "DELETE FROM product WHERE ID = ?";
            PreparedStatement ps = connection.prepareStatement(deleteHotelQuery);
            ps.setInt(1, id);
            ps.executeUpdate();

            connection.commit(); // Kết thúc giao dịch, thực hiện các thay đổi
            connection.setAutoCommit(true); // Bật lại chế độ tự động commit

        } catch (Exception e) {
            // Xử lý ngoại lệ và rollback nếu có lỗi
            try {
                if (connection != null) {
                    connection.rollback();
                    connection.setAutoCommit(true); // Bật lại chế độ tự động commit sau rollback
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
    public void deleteFromCart(int id) {
        try {

            connection.setAutoCommit(false); // Tắt chế độ tự động commit

            
            String deleteHotelQuery = "DELETE FROM Cart WHERE ID = ?";
            PreparedStatement ps = connection.prepareStatement(deleteHotelQuery);
            ps.setInt(1, id);
            ps.executeUpdate();

            connection.commit(); // Kết thúc giao dịch, thực hiện các thay đổi
            connection.setAutoCommit(true); // Bật lại chế độ tự động commit

        } catch (Exception e) {
            // Xử lý ngoại lệ và rollback nếu có lỗi
            try {
                if (connection != null) {
                    connection.rollback();
                    connection.setAutoCommit(true); // Bật lại chế độ tự động commit sau rollback
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
    public void deleteCart(int id) {
        try {

            connection.setAutoCommit(false); // Tắt chế độ tự động commit

            
            String deleteHotelQuery = "DELETE FROM Cart WHERE UserID = ?";
            PreparedStatement ps = connection.prepareStatement(deleteHotelQuery);
            ps.setInt(1, id);
            ps.executeUpdate();

            connection.commit(); // Kết thúc giao dịch, thực hiện các thay đổi
            connection.setAutoCommit(true); // Bật lại chế độ tự động commit

        } catch (Exception e) {
            // Xử lý ngoại lệ và rollback nếu có lỗi
            try {
                if (connection != null) {
                    connection.rollback();
                    connection.setAutoCommit(true); // Bật lại chế độ tự động commit sau rollback
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
    public void deleteCate(int hid) {
        try {
            
            connection.setAutoCommit(false); // Tắt chế độ tự động commit

            // Cập nhật cột hotel_id trong bảng rooms thành null cho những phòng thuộc khách sạn
            String updateRoomsQuery = "UPDATE product SET CategoryID = NULL WHERE CategoryID = ?";
            PreparedStatement ps = connection.prepareStatement(updateRoomsQuery);
            ps.setInt(1, hid);
            ps.executeUpdate();

            // Xóa khách sạn
            String deleteHotelQuery = "DELETE FROM Category WHERE ID = ?";
            ps = connection.prepareStatement(deleteHotelQuery);
            ps.setInt(1, hid);
            ps.executeUpdate();

            connection.commit(); // Kết thúc giao dịch, thực hiện các thay đổi
            connection.setAutoCommit(true); // Bật lại chế độ tự động commit

        } catch (Exception e) {
            // Xử lý ngoại lệ và rollback nếu có lỗi
            try {
                if (connection != null) {
                    connection.rollback();
                    connection.setAutoCommit(true); // Bật lại chế độ tự động commit sau rollback
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
    public void deleteCou(int id) {
        try {

            connection.setAutoCommit(false); // Tắt chế độ tự động commit

            // Cập nhật cột hotel_id trong bảng rooms thành null cho những phòng thuộc khách sạn
            // Xóa khách sạn
            String deleteHotelQuery = "DELETE FROM Coupound WHERE ID = ?";
            PreparedStatement ps = connection.prepareStatement(deleteHotelQuery);
            ps.setInt(1, id);
            ps.executeUpdate();

            connection.commit(); // Kết thúc giao dịch, thực hiện các thay đổi
            connection.setAutoCommit(true); // Bật lại chế độ tự động commit

        } catch (Exception e) {
            // Xử lý ngoại lệ và rollback nếu có lỗi
            try {
                if (connection != null) {
                    connection.rollback();
                    connection.setAutoCommit(true); // Bật lại chế độ tự động commit sau rollback
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list;
        Product p = dao.getProductById(1);
        account a = new account("hieu1", "123", 1, "hieu", 0);
        System.out.println(dao.getCartById(4).size());
    }
}
