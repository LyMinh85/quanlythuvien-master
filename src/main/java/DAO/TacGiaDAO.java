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
                    rs.getString("ngaysinh"),
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
                        rs.getString("ngaySinh"),
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
}
