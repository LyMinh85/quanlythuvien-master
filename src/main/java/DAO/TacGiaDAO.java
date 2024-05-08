package DAO;

import DTO.NhaXuatBanDTO;
import DTO.SachDTO;
import DTO.TacGiaDTO;

import java.sql.*;
import java.util.ArrayList;

public class TacGiaDAO {
    public static final String TABLE_NAME = "TAC_GIA";

    private TacGiaDTO resultSetToTacGia(ResultSet rs) {
        TacGiaDTO tacGiaDTO = null;
        try {
            tacGiaDTO = new TacGiaDTO(
                    rs.getInt("id"),
                    rs.getString("hoTen"),
                    rs.getString("diachi")
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tacGiaDTO;
    }

    public ArrayList<TacGiaDTO> findAll(){
        ArrayList<TacGiaDTO> listTacGia = new ArrayList();
        try{
            Connection con = MyConnection.getConnection();
            Statement st = con.createStatement();
            String query = "SELECT * FROM " + TABLE_NAME;
            ResultSet rs = st.executeQuery(query);
            while(rs.next())
            {
                TacGiaDTO tacGiaDTO = new TacGiaDTO(
                        rs.getInt("id"),
                        rs.getString("hoTen"),
                        rs.getString("diaChi")
                );
                listTacGia.add(tacGiaDTO);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listTacGia;
    }

    public TacGiaDTO findOne(int id){
        TacGiaDTO tacGiaDTO = null;
        try{
            Connection con = MyConnection.getConnection();
            String query = "SELECT * FROM " + TABLE_NAME + " WHERE id=?";
            PreparedStatement ps= con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
            {
                tacGiaDTO = resultSetToTacGia(rs);
            }
            con.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return tacGiaDTO;
    }

    public boolean insertOne(TacGiaDTO tacGiaDTO) {
        try {
            Connection con = MyConnection.getConnection();
            String query = "INSERT INTO " + TABLE_NAME + " (id, hoTen, diaChi) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, tacGiaDTO.getIdTacGia());
            ps.setString(2, tacGiaDTO.getHoTen());
            ps.setString(3, tacGiaDTO.getDiaChi());
            int c = ps.executeUpdate();
            con.close();
            return c != 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteOne(int id) {
        try {
            Connection con = MyConnection.getConnection();
            String query = "DELETE FROM " + TABLE_NAME + " WHERE id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            int c = ps.executeUpdate();
            con.close();
            return c != 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateOne(TacGiaDTO tacGiaDTO) {
        try {
            Connection con = MyConnection.getConnection();
            String query = "UPDATE " + TABLE_NAME + " SET hoTen=?, diaChi=? WHERE id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, tacGiaDTO.getHoTen());
            ps.setString(2, tacGiaDTO.getDiaChi());
            ps.setInt(3, tacGiaDTO.getIdTacGia());
            int c = ps.executeUpdate();
            con.close();
            return c != 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
