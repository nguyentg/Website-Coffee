package beans;

public class mon {
	private int id;
	private String tenmon;
	private int gia;
	private String linkanh;
	private int maloai;
	public mon()
	{
	} 
	public mon(int id, String tenmon, int gia, String linkanh, int maloai)
	{	
		super();
		this.setId(id);
		this.setTenmon(tenmon);
		this.setGia(gia);
		this.setLinkanh(linkanh);
		this.setMaloai(maloai);
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenmon() {
		return tenmon;
	}
	public void setTenmon(String tenmon) {
		this.tenmon = tenmon;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getLinkanh() {
		return linkanh;
	}
	public void setLinkanh(String linkanh) {
		this.linkanh = linkanh;
	}
	public int getMaloai() {
		return maloai;
	}
	public void setMaloai(int maloai) {
		this.maloai = maloai;
	} 
}
