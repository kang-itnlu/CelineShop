package com.fit.nlu.CelineShop.dao.impl;



import com.fit.nlu.CelineShop.dao.ProductDao;
import com.fit.nlu.CelineShop.jdbc.JDBCConnection;
import com.fit.nlu.CelineShop.model.Category;
import com.fit.nlu.CelineShop.model.Comment;
import com.fit.nlu.CelineShop.model.MoreImage;
import com.fit.nlu.CelineShop.model.Product;
import com.fit.nlu.CelineShop.services.CategoryService;
import com.fit.nlu.CelineShop.services.impl.CategoryServiceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ProductDaoImpl extends JDBCConnection implements ProductDao {
    CategoryService categortService = new CategoryServiceImpl();

    @Override
    public void insert(Product product) {
        String sql = "INSERT INTO Product(name, price, salePrice, stock,image, cate_id, des,isLiked,rating,soldQuantity,brand,manufacturer,product_detail) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setLong(2, product.getPrice());
            ps.setLong(3, product.getSalePrice());
            ps.setInt(4, product.getStock());
            ps.setString(5, product.getImage());
            ps.setInt(6, product.getCategory().getId());
            ps.setString(7, product.getDes());
            ps.setInt(8, product.isLiked());
            ps.setInt(9, product.getRating());
            ps.setInt(10, product.getSoldQuantity());
            ps.setString(11, product.getBrand());
            ps.setString(12, product.getManufacturer());
            ps.setString(13, product.getProduct_detail());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(Product product) {
        String sql = "UPDATE Product SET Product.name = ? , price = ?,stock=?,salePrice=?, image = ?,cate_id=?, des=?,isLiked=?,rating=?,soldQuantity=?,brand=?,manufacturer=?,product_detail=? WHERE id = ?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setDouble(2, product.getPrice());
            ps.setInt(3, product.getStock());
            ps.setDouble(4, product.getSalePrice());
            ps.setString(5, product.getImage());
            ps.setInt(6, product.getCategory().getId());
            ps.setString(7, product.getDes());
            ps.setInt(8, product.isLiked());
            ps.setInt(9, product.getRating());
            ps.setInt(10, product.getSoldQuantity());
            ps.setString(11, product.getBrand());
            ps.setString(12, product.getManufacturer());
            ps.setString(13, product.getProduct_detail());
            ps.setInt(14, product.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM Product WHERE id=?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    @Override
    public Product get(int id) {
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image,product.des, category.cate_name AS c_name, category.cate_id AS c_id ,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail"
                + " FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id WHERE product.id=?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));

                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                return product;

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> getAll() {

        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail"
                + " FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                productList.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> search(String keyword) {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT * FROM product WHERE name LIKE ? ";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();

                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));

                Category category = new Category();
                category.setId(rs.getInt("c_id"));
                category.setName(rs.getString("c_name"));
                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                productList.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> searchByCategory(int cate_id) {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail " +
                "				 FROM Product join Category   on product.cate_id = category.cate_id where product.cate_id=? ";
        Connection conn = getJDBCConnection();

        try {

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, cate_id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);

                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                productList.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> searchByName(String productName, int currentPage, int productsPerPage) {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail  				"
                + " FROM Product , Category   where product.cate_id = category.cate_id and Product.name like ? LIMIT ?,?";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + productName + "%");
            ps.setInt(2, currentPage * productsPerPage - productsPerPage);
            ps.setInt(3, productsPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);

                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                productList.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> getProductByPage(int currentPage, int productsPerPage) {
        List<Product> list = new ArrayList<Product>();
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail"
                + " FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id LIMIT ?,?";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, currentPage * productsPerPage - productsPerPage);
            ps.setInt(2, productsPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                list.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int getNoOfProducts() {
        return getAll().size();
    }

    @Override
    public int getCateId(int parseInt) {
        String sql = "SELECT product.cate_id  FROM Product  where product.id=?";
        Connection conn = getJDBCConnection();
        int result = 0;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, parseInt);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                result = rs.getInt("cate_id");
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Product> searchByBrand(String brand, int currentPage, int productsPerPage) {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail  				"
                + " FROM Product , Category   where product.cate_id = category.cate_id and Product.brand like ? LIMIT ?,?";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + brand + "%");
            ps.setInt(2, currentPage * productsPerPage - productsPerPage);
            ps.setInt(3, productsPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);

                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                productList.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<String> getMoreImage(int id) {
        ArrayList<String> listImg = new ArrayList<String>();
        String sql = "SELECT url,url2,url3 FROM moreimage where product_id=?";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                listImg.add(rs.getString("url"));
                listImg.add(rs.getString("url2"));
                listImg.add(rs.getString("url3"));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listImg;
    }

    @Override
    public void setMoreImage(MoreImage moreImage) {
        String sql = "INSERT INTO moreimage(product_id, url,url2,url3) VALUES (?,?,?,?)";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, moreImage.getProduct_id());
            ps.setString(2, moreImage.getImage());
            ps.setString(3, moreImage.getImage1());
            ps.setString(4, moreImage.getImage2());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Comment> getAllProductComments(int id) {
        List<Comment> listComment = new ArrayList<Comment>();
        String sql = "SELECT username,avatar,rating,content,time "
                + " FROM Comment " + " WHERE product_id=?";
        Connection con = super.getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {


                Comment comment = new Comment();
                comment.setUsername(rs.getString("username"));
                comment.setAvatar(rs.getString("avatar"));
                comment.setRating(rs.getInt("rating"));
                comment.setContent(rs.getString("content"));
                comment.setTime(rs.getDate("time"));
                listComment.add(comment);

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return listComment;
    }

    @Override
    public List<Product> searchByPrice(String brand, int priceFrom, int priceTo, int currentPage, int productsPerPage) {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail  				"
                + " FROM Product , Category   where product.cate_id = category.cate_id and Product.brand like ? and (product.salePrice between ? and ?) LIMIT ?,?";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + brand + "%");
            ps.setInt(2,priceFrom);
            ps.setInt(3,priceTo);
            ps.setInt(4,currentPage);
            ps.setInt(5,productsPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);

                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                productList.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> searchByRating(int rating, int currentPage, int productsPerPage) {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail  				"
                + " FROM Product , Category   where product.cate_id = category.cate_id and Product.rating >= ? LIMIT ?,? ";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, rating);
            ps.setInt(2, currentPage * productsPerPage - productsPerPage);
            ps.setInt(3, productsPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);

                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                productList.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> getProductByACS(int currentPage, int productsPerPage) {
        List<Product> list = new ArrayList<Product>();
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail"
                + " FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id  ORDER BY product.price ASC LIMIT ?,?";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, currentPage * productsPerPage - productsPerPage);
            ps.setInt(2, productsPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                list.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    @Override
    public List<Product> getProductByDESC(int currentPage, int productsPerPage) {
        List<Product> list = new ArrayList<Product>();
        String sql = "SELECT product.id, product.name AS p_name, product.price,product.stock,product.salePrice, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id,product.isLiked,product.rating,product.soldQuantity,product.brand,product.manufacturer,product.product_detail"
                + " FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id ORDER BY product.price DESC LIMIT ?,? ";
        Connection conn = getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, currentPage * productsPerPage - productsPerPage);
            ps.setInt(2, productsPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = categortService.get(rs.getInt("c_id"));
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("p_name"));
                product.setPrice(rs.getLong("price"));
                product.setStock(rs.getInt("stock"));
                product.setSalePrice(rs.getLong("salePrice"));
                product.setImage(rs.getString("image"));
                product.setDes(rs.getString("des"));
                product.setCategory(category);
                product.setLiked(rs.getInt("isLiked"));
                product.setRating(rs.getInt("rating"));
                product.setSoldQuantity(rs.getInt("soldQuantity"));
                product.setBrand(rs.getString("brand"));
                product.setManufacturer(rs.getString("manufacturer"));
                product.setProduct_detail(rs.getString("product_detail"));
                list.add(product);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
}

