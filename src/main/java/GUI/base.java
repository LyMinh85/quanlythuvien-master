/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package GUI;

import DTO.NhanVienDTO;
import com.formdev.flatlaf.FlatLightLaf;
import java.awt.CardLayout;
import java.util.ArrayList;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author pc
 */
public class base extends javax.swing.JFrame {

    ArrayList<JButton> listNavBarButton;
    public static NhanVienDTO nhanVienDangNhap;

    public base(NhanVienDTO nhanVienDangNhap) {
        this.nhanVienDangNhap = nhanVienDangNhap;
        initComponents();
        this.listNavBarButton = new ArrayList<>();
        listNavBarButton.add(btnSach);
        listNavBarButton.add(btnNguoiDoc);
        listNavBarButton.add(btnPhieuMuon);
        listNavBarButton.add(btnPhieuTra);
        listNavBarButton.add(btnNhanVien);
        listNavBarButton.add(btnNhaXuatBan);
        listNavBarButton.add(btnNhaXuatBan1);
        listNavBarButton.add(btnLoaiSach);

        if (nhanVienDangNhap == null) {
            return;
        }

        // Nếu là nhân viên thì ẩn button nhân viên
        if (nhanVienDangNhap.getVaiTro() == 0) {
            btnNhanVien.setVisible(false);
        }



    }
    
    public void selectNavBarButton(java.awt.event.ActionEvent evt) {
        listNavBarButton.forEach(btn -> {
            if (btn.getText().equalsIgnoreCase(evt.getActionCommand())) {
                btn.setSelected(true);
            } else {
                btn.setSelected(false);
            }
        });
    }

    /**
     * Creates new form Navigation
     */
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTextField1 = new javax.swing.JTextField();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        btnSach = new javax.swing.JButton();
        btnNguoiDoc = new javax.swing.JButton();
        btnPhieuMuon = new javax.swing.JButton();
        btnPhieuTra = new javax.swing.JButton();
        btnNhanVien = new javax.swing.JButton();
        btnNhaXuatBan = new javax.swing.JButton();
        btnNhaXuatBan1 = new javax.swing.JButton();
        btnLoaiSach = new javax.swing.JButton();
        cards = new javax.swing.JPanel();
        nguoiDocGUI1 = new GUI.NguoiDocGUI();
        loaiSachGUI1 = new GUI.LoaiSachGUI();
        tacGiaGUI1 = new GUI.TacGiaGUI();
        phieuTraGUI1 = new GUI.PhieuTraGUI();
        nhanVienGUI2 = new GUI.NhanVienGUI();
        phieuMuonGUI1 = new GUI.PhieuMuonGUI();
        sachGUI11 = new GUI.SachGUI1();
        nhaXuatBanGUI1 = new GUI.NhaXuatBanGUI();

        jTextField1.setText("jTextField1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Thư viện");
        setBackground(new java.awt.Color(255, 255, 255));
        setLocationByPlatform(true);
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(243, 202, 56));

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/library.png"))); // NOI18N
        jLabel2.setLabelFor(this);
        jLabel2.setName(""); // NOI18N
        jPanel1.add(jLabel2);

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 150, 80));

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));

        btnSach.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/books.png"))); // NOI18N
        btnSach.setText("Sách");
        btnSach.setToolTipText("");
        btnSach.setBorderPainted(false);
        btnSach.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btnSach.setMaximumSize(new java.awt.Dimension(149, 51));
        btnSach.setMinimumSize(new java.awt.Dimension(149, 51));
        btnSach.setName(""); // NOI18N
        btnSach.setPreferredSize(new java.awt.Dimension(149, 51));
        btnSach.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSachActionPerformed(evt);
            }
        });
        jPanel2.add(btnSach);

        btnNguoiDoc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/user.png"))); // NOI18N
        btnNguoiDoc.setText("Người đọc");
        btnNguoiDoc.setBorderPainted(false);
        btnNguoiDoc.setPreferredSize(jPanel2.getMinimumSize());
        btnNguoiDoc.setSelected(true);
        btnNguoiDoc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNguoiDocActionPerformed(evt);
            }
        });
        jPanel2.add(btnNguoiDoc);

        btnPhieuMuon.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/invoice.png"))); // NOI18N
        btnPhieuMuon.setText("Phiếu mượn");
        btnPhieuMuon.setBorderPainted(false);
        btnPhieuMuon.setPreferredSize(jPanel2.getMinimumSize());
        btnPhieuMuon.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPhieuMuonActionPerformed(evt);
            }
        });
        jPanel2.add(btnPhieuMuon);

        btnPhieuTra.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/paid.png"))); // NOI18N
        btnPhieuTra.setText("Phiếu trả");
        btnPhieuTra.setBorderPainted(false);
        btnPhieuTra.setPreferredSize(jPanel2.getMinimumSize());
        btnPhieuTra.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPhieuTraActionPerformed(evt);
            }
        });
        jPanel2.add(btnPhieuTra);

        btnNhanVien.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/staff.png"))); // NOI18N
        btnNhanVien.setText("Nhân viên");
        btnNhanVien.setBorderPainted(false);
        btnNhanVien.setPreferredSize(jPanel2.getMinimumSize());
        btnNhanVien.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNhanVienActionPerformed(evt);
            }
        });
        jPanel2.add(btnNhanVien);

        btnNhaXuatBan.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/staff.png"))); // NOI18N
        btnNhaXuatBan.setText("Nhà xuất bản");
        btnNhaXuatBan.setBorderPainted(false);
        btnNhaXuatBan.setPreferredSize(jPanel2.getMinimumSize());
        btnNhaXuatBan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNhaXuatBanActionPerformed(evt);
            }
        });
        jPanel2.add(btnNhaXuatBan);

        btnNhaXuatBan1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/staff.png"))); // NOI18N
        btnNhaXuatBan1.setText("Tác giả");
        btnNhaXuatBan1.setBorderPainted(false);
        btnNhaXuatBan1.setPreferredSize(jPanel2.getMinimumSize());
        btnNhaXuatBan1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNhaXuatBan1ActionPerformed(evt);
            }
        });
        jPanel2.add(btnNhaXuatBan1);

        btnLoaiSach.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/staff.png"))); // NOI18N
        btnLoaiSach.setText("Loại sách");
        btnLoaiSach.setBorderPainted(false);
        btnLoaiSach.setPreferredSize(jPanel2.getMinimumSize());
        btnLoaiSach.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoaiSachActionPerformed(evt);
            }
        });
        jPanel2.add(btnLoaiSach);

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 80, 150, 530));

        cards.setBackground(new java.awt.Color(255, 255, 255));
        cards.setLayout(new java.awt.CardLayout());
        cards.add(nguoiDocGUI1, "nguoiDocGUI");
        cards.add(loaiSachGUI1, "loaiSachGUI");
        cards.add(tacGiaGUI1, "tacGiaGUI");

        phieuTraGUI1.setToolTipText("");
        cards.add(phieuTraGUI1, "phieuTraGUI");
        cards.add(nhanVienGUI2, "nhanVienGUI");
        cards.add(phieuMuonGUI1, "phieuMuonGUI");
        cards.add(sachGUI11, "sachGUI");
        cards.add(nhaXuatBanGUI1, "nhaXuatBanGUI");

        getContentPane().add(cards, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 0, 930, 610));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnSachActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSachActionPerformed
        ((CardLayout) cards.getLayout()).show(cards, "sachGUI");
        selectNavBarButton(evt);
    }//GEN-LAST:event_btnSachActionPerformed

    private void btnNguoiDocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNguoiDocActionPerformed
        ((CardLayout) cards.getLayout()).show(cards, "nguoiDocGUI");
        selectNavBarButton(evt);
    }//GEN-LAST:event_btnNguoiDocActionPerformed

    private void btnNhanVienActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNhanVienActionPerformed
        ((CardLayout) cards.getLayout()).show(cards, "nhanVienGUI");
        selectNavBarButton(evt);
    }//GEN-LAST:event_btnNhanVienActionPerformed

    private void btnPhieuTraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPhieuTraActionPerformed
        ((CardLayout) cards.getLayout()).show(cards, "phieuTraGUI");
        selectNavBarButton(evt);
    }//GEN-LAST:event_btnPhieuTraActionPerformed

    private void btnPhieuMuonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPhieuMuonActionPerformed
        ((CardLayout) cards.getLayout()).show(cards, "phieuMuonGUI");
        selectNavBarButton(evt);
    }//GEN-LAST:event_btnPhieuMuonActionPerformed

    private void btnNhaXuatBanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNhaXuatBanActionPerformed
        ((CardLayout) cards.getLayout()).show(cards, "nhaXuatBanGUI");
        selectNavBarButton(evt);
    }//GEN-LAST:event_btnNhaXuatBanActionPerformed

    private void btnNhaXuatBan1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNhaXuatBan1ActionPerformed
        ((CardLayout) cards.getLayout()).show(cards, "tacGiaGUI");
        selectNavBarButton(evt);
    }//GEN-LAST:event_btnNhaXuatBan1ActionPerformed

    private void btnLoaiSachActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoaiSachActionPerformed
        ((CardLayout) cards.getLayout()).show(cards, "loaiSachGUI");
        selectNavBarButton(evt);
    }//GEN-LAST:event_btnLoaiSachActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        try {
            UIManager.setLookAndFeel(new FlatLightLaf());
        } catch (UnsupportedLookAndFeelException e) {
            System.out.println("Look and Feel not set");
        }

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                JFrame jframe = new base(null);
                jframe.setVisible(true);
                jframe.setLocationRelativeTo(null);
            }
        });
    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnLoaiSach;
    private javax.swing.JButton btnNguoiDoc;
    private javax.swing.JButton btnNhaXuatBan;
    private javax.swing.JButton btnNhaXuatBan1;
    private javax.swing.JButton btnNhanVien;
    private javax.swing.JButton btnPhieuMuon;
    private javax.swing.JButton btnPhieuTra;
    private javax.swing.JButton btnSach;
    private javax.swing.JPanel cards;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField1;
    private GUI.LoaiSachGUI loaiSachGUI1;
    private GUI.NguoiDocGUI nguoiDocGUI1;
    private GUI.NhaXuatBanGUI nhaXuatBanGUI1;
    private GUI.NhanVienGUI nhanVienGUI2;
    private GUI.PhieuMuonGUI phieuMuonGUI1;
    private GUI.PhieuTraGUI phieuTraGUI1;
    private GUI.SachGUI1 sachGUI11;
    private GUI.TacGiaGUI tacGiaGUI1;
    // End of variables declaration//GEN-END:variables
}
