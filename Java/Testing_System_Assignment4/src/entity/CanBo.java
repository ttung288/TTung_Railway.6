package entity;

public class CanBo {
	
	private int tuoi;
	private String ten;	
	private String gioitinh;
	private String diachi;
	public CanBo(int tuoi, String ten, String gioitinh, String diachi) {
		super();
		this.tuoi = tuoi;
		this.ten = ten;
		this.gioitinh = gioitinh;
		this.diachi = diachi;
	}
	public CanBo() {
		super();
	}
	public int getTuoi() {
		return tuoi;
	}
	public void setTuoi(int tuoi) {
		this.tuoi = tuoi;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getGioitinh() {
		return gioitinh;
	}
	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	
	
	
	@Override
	public String toString() {
		return "CanBo [tuoi=" + tuoi + ", ten=" + ten + ", gioitinh=" + gioitinh + ", diachi=" + diachi + "]";
	}
	
	
	
}
