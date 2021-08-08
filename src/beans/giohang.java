package beans;

public class giohang {
	private String sodienthoai;
	private int mamon;
	private int soluong;
	private String tenkhach;
	private String tenmon;
	public giohang()
	{
	}
	public giohang(String sodienthoai, int mamon, int soluong)
	{
		super();
		this.setSodienthoai(sodienthoai);
		this.setMamon(mamon);
		this.setSoluong(soluong);
	}
	public giohang(String tenkhach, int soluong, String tenmon, int mamon)
	{
		super();
		this.setTenkhach(tenkhach);
		this.setTenmon(tenmon);
		this.setSoluong(soluong);
		this.setMamon(mamon);
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
	public String getSodienthoai() {
		return sodienthoai;
	}
	public void setSodienthoai(String sodienthoai) {
		this.sodienthoai = sodienthoai;
	}
	public String getTenkhach() {
		return tenkhach;
	}
	public void setTenkhach(String tenkhach) {
		this.tenkhach = tenkhach;
	}
	public String getTenmon() {
		return tenmon;
	}
	public void setTenmon(String tenmon) {
		this.tenmon = tenmon;
	}
}
