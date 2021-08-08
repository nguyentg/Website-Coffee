package beans;

public class hoadon {
	private int madon;
	private int mamon;
	private int soluong;
	private String ngaythanhtoan;
	private String sodienthoai;
	private String diachi;
	public hoadon()
	{
	}
	public hoadon(int madon, int mamon, int soluong, String ngaythanhtoan, String sodienthoai, String diachi)
	{
		super();
		this.setMadon(madon);
		this.setMamon(mamon);
		this.setSoluong(soluong);
		this.setNgaythanhtoan(ngaythanhtoan);
		this.setSodienthoai(sodienthoai);
		this.setDiachi(diachi);
	}
	public int getMadon() {
		return madon;
	}
	public void setMadon(int madon) {
		this.madon = madon;
	}
	public int getMamon() {
		return mamon;
	}
	public void setMamon(int mamon) {
		this.mamon = mamon;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getNgaythanhtoan() {
		return ngaythanhtoan;
	}
	public void setNgaythanhtoan(String ngaythanhtoan) {
		this.ngaythanhtoan = ngaythanhtoan;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getSodienthoai() {
		return sodienthoai;
	}
	public void setSodienthoai(String sodienthoai) {
		this.sodienthoai = sodienthoai;
	}
}
