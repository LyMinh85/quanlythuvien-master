package BUS;

import DAO.NhaXuatBanDAO;
import DAO.TacGiaDAO;
import DTO.NhaXuatBanDTO;
import DTO.TacGiaDTO;

import java.util.ArrayList;

public class TacGiaBUS {
    private ArrayList<TacGiaDTO> listTacGia;
    private TacGiaDAO tacGiaDAO;

    public TacGiaBUS() {
        tacGiaDAO = new TacGiaDAO();
        listTacGia = new ArrayList<>();
    }

    public ArrayList<TacGiaDTO> getListTacGia() {
        return listTacGia;
    }

    public void findAll() {
        listTacGia = tacGiaDAO.findAll();
    }

    public TacGiaDTO findOne(int id) {
        return tacGiaDAO.findOne(id);
    }
}
