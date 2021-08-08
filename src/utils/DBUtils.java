package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.acount;
import beans.giohang;
import beans.hoadon;
import beans.mon;
public class DBUtils 
{
	public static acount ktraDangNhap(Connection conn, acount nguoiDung) throws SQLException 
	{
		String sql = "select*from KhachHang where SoDienThoai = ? and MatKhau = ?;";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, nguoiDung.getSodienthoai());
		pstm.setString(2, nguoiDung.getMatkhau());
		ResultSet rs = pstm.executeQuery();
		acount taiKhoanDangDangNhap = null;
		while(rs.next())
		{
			String sodienthoai = rs.getString("sodienthoai");
			String tenkhach = rs.getString("tenkhach");
			String matkhau = rs.getString("matkhau");
			taiKhoanDangDangNhap = new acount(sodienthoai, tenkhach, matkhau);
			
		}
		return taiKhoanDangDangNhap;
	}
	public static acount ktraDangNhapAD(Connection conn, acount nguoiDung) throws SQLException 
	{
		String sql = "select*from Admin where SoDienThoaiAD = ? and MatKhau = ?;";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, nguoiDung.getSodienthoai());
		pstm.setString(2, nguoiDung.getMatkhau());
		ResultSet rs = pstm.executeQuery();
		acount taiKhoanDangDangNhap = null;
		while(rs.next())
		{
			String sodienthoai = rs.getString("sodienthoaiad");
			String tenkhach = rs.getString("tenaadmin");
			String matkhau = rs.getString("matkhau");
			taiKhoanDangDangNhap = new acount(sodienthoai, tenkhach, matkhau);
			return taiKhoanDangDangNhap;
		}
		return null;
	}
	public static void insertKhachHang(Connection conn, acount nguoiDung) throws SQLException 
	{
		PreparedStatement pstm = conn.prepareStatement("INSERT INTO KhachHang (TenKhach, MatKhau, SoDienThoai) VALUES  (?, ?, ?);");
		pstm.setString(1, nguoiDung.getTenkhach());
		pstm.setString(2, nguoiDung.getMatkhau());
		pstm.setString(3,nguoiDung.getSodienthoai());
        pstm.executeUpdate(); 
        System.out.println("add user success");

	}
	public static void insertHoaDon(Connection conn, int mamon, int soluong, String sodienthoai, String diachi) throws SQLException 
	{
		PreparedStatement pstm = conn.prepareStatement("INSERT INTO HoaDon (MaMon, SoLuong, NgayThanhToan, SoDienThoai, DiaChi) VALUES  (?, ?, GETDATE(), ?, ?);");
		pstm.setInt(1, mamon);
		pstm.setInt(2, soluong);
		pstm.setString(3, sodienthoai);
		pstm.setString(4, diachi);
        pstm.executeUpdate(); 
        System.out.println("add bill success");

	}
	public static void deleteKhachHang(Connection conn, int idMon, String SoDienThoai) throws SQLException 
	{
		PreparedStatement pstm = conn.prepareStatement("DELETE FROM GioHang where MaMon=? and SoDienThoai=?;");
		pstm.setInt(1, idMon);
		System.out.println(idMon);
		pstm.setString(2, SoDienThoai);
        pstm.executeUpdate(); 
        System.out.println("Delete mon success");

	}
	public static void insertGioHang(Connection conn, String sdt, int id, int soluong) throws SQLException 
	{
		PreparedStatement pstm = conn.prepareStatement("INSERT INTO GioHang (SoDienThoai, MaMon, SoLuong) VALUES  (?, ?, ?);");
		pstm.setString(1, sdt);
		pstm.setInt(2, id);
		pstm.setInt(3, soluong);
        pstm.executeUpdate(); 
        System.out.println("update gio hang thanh cong");
	}
	public static List<giohang> GioHang(Connection conn, String sdt) throws SQLException {
        String sql = "select b.TenKhach, c.TenMon, a.SoLuong, a.MaMon "
        		+ "from GioHang as a, KhachHang as b, Mon as c "
        		+ "where a.SoDienThoai = ? and a.SoDienThoai=b.SoDienThoai and a.MaMon=c.MaMon;";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, sdt);
        ResultSet rs = pstm.executeQuery();
        List<giohang> list = new ArrayList<giohang>();
        while (rs.next()) 
        {
        	String tenkhach = rs.getString("TenKhach");
        	String tenmon = rs.getString("TenMon");
        	int soluong = rs.getInt("SoLuong");
        	int mamon = rs.getInt("MaMon");
        	
        	giohang gio = new giohang(tenkhach,soluong,tenmon, mamon);
            list.add(gio);
        }
        return list;
    }
	public static List<hoadon> HoaDon(Connection conn) throws SQLException {
        String sql = "select*from HoaDon;";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<hoadon> list = new ArrayList<hoadon>();
        while (rs.next()) 
        {
        	int madon = rs.getInt("MaDon");
        	int mamon = rs.getInt("MaMon");
        	int soluong = rs.getInt("SoLuong");
        	String ngaythanhtoan = rs.getString("NgayThanhToan");
        	String sodienthoai = rs.getString("SoDienThoai");
        	String diachi = rs.getString("DiaChi");
        	
        	hoadon bill = new hoadon(madon, mamon, soluong, ngaythanhtoan, sodienthoai, diachi);
            list.add(bill);
        }
        return list;
    }
	public static List<mon> listMon(Connection conn) throws SQLException {
        String sql = "Select MaMon as id, TenMon as tenmon, Gia as gia, LinkAnh as linkanh, MaLoai as maloai from Mon;";
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<mon> list = new ArrayList<mon>();
        while (rs.next()) 
        {
        	int Id = rs.getInt("id");
        	String TenMon = rs.getString("tenmon");
        	int Loai = rs.getInt("maloai");
        	int GiaTien = rs.getInt("gia");
        	String LinkAnh = rs.getString("linkanh");
        	
            mon mon = new mon();
            mon.setId(Id);
            mon.setTenmon(TenMon);
            mon.setMaloai(Loai);
            mon.setGia(GiaTien);
            mon.setLinkanh(LinkAnh);
            
            list.add(mon);
        }
        return list;
    }
	public static List<mon> listAnh(Connection conn) throws SQLException {
        String sql = "Select MaMon, LinkAnh from Mon;";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<mon> list = new ArrayList<mon>();
        while (rs.next()) {
        	int Id = rs.getInt("id");
        	String LinkAnh = rs.getString("linkanh");
        	
            mon mon = new mon();
            mon.setId(Id);
            mon.setLinkanh(LinkAnh);
            
            list.add(mon);
        }
        return list;
    }
}
