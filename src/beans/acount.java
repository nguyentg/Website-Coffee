package beans;

public class acount {
	private String sodienthoai;
	private String tenkhach;
	private String matkhau;
	public acount()
	{
	}
	
	public acount(String sodienthoai, String matkhau)
	{
		super();
		this.setSodienthoai(sodienthoai);
		this.setMatkhau(matkhau);
	}
	
	public acount(String sodienthoai, String tenkhach, String matkhau)
	{
		super();
		this.setSodienthoai(sodienthoai);
		this.setMatkhau(tenkhach);
		this.setTenkhach(matkhau);
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

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	
}

