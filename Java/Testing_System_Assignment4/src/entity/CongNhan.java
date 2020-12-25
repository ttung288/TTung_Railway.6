package entity;

public class CongNhan extends CanBo {

	private int bac;

	public CongNhan(int tuoi, String ten, String gioitinh, String diachi, int bac) {
		super(tuoi, ten, gioitinh, diachi);
		this.bac = bac;
	}

	public CongNhan(int tuoi, String ten, String gioitinh, String diachi) {
		super(tuoi, ten, gioitinh, diachi);
	}
	
	
}
