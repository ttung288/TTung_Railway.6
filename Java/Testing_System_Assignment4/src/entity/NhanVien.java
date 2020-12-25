package entity;

public class NhanVien extends CanBo {

	private String CongViec;

	public NhanVien(int tuoi, String ten, String gioitinh, String diachi, String congViec) {
		super(tuoi, ten, gioitinh, diachi);
		CongViec = congViec;
	}

	public NhanVien(int tuoi, String ten, String gioitinh, String diachi) {
		super(tuoi, ten, gioitinh, diachi);
	}
	
	
}
