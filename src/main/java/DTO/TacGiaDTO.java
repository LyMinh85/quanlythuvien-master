/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Admin
 */
public class TacGiaDTO {
    int idTacGia;
    String hoTen;
    String diaChi;

    public TacGiaDTO() {
    }

    public TacGiaDTO(int idTacGia, String hoTen, String diaChi) {
        this.idTacGia = idTacGia;
        this.hoTen = hoTen;
        this.diaChi = diaChi;
    }

    public int getIdTacGia() {
        return idTacGia;
    }

    public void setIdTacGia(int idTacGia) {
        this.idTacGia = idTacGia;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }


    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
    
}
