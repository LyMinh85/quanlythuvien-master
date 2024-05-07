package DAO;

import DTO.LoaiSachDTO;
import DTO.TacGiaDTO;

import java.sql.*;
import java.util.ArrayList;

public class LoaiSachDAO {
    public static final String TABLE_NAME = "LOAI_SACH";

    private LoaiSachDTO resultSetToLoaiSach(ResultSet rs) {
        LoaiSachDTO loaiSachDTO = null;
        try {
            loaiSachDTO = new LoaiSachDTO(
                    rs.getInt("id"),
                    rs.getString("tenLoai")
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return loaiSachDTO;
    }

    public ArrayList<LoaiSachDTO> findAll() {
        ArrayList<LoaiSachDTO> listLoaiSach = new ArrayList();
        try {
            Connection con = MyConnection.getConnection();
            Statement st = con.createStatement();
            String query = "SELECT * FROM " + TABLE_NAME;
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                LoaiSachDTO loaiSachDTO = new LoaiSachDTO(
                        rs.getInt("id"),
                        rs.getString("tenLoai")
                );
                listLoaiSach.add(loaiSachDTO);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listLoaiSach;
    }

    public LoaiSachDTO findOne(int id) {
        LoaiSachDTO loaiSachDTO = null;
        try {
            Connection con = MyConnection.getConnection();
            String query = "SELECT * FROM " + TABLE_NAME + " WHERE id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                loaiSachDTO = resultSetToLoaiSach(rs);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return loaiSachDTO;
    }
}
