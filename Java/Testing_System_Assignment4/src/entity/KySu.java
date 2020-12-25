package entity;

public class KySu extends CanBo {
	
	private String NganhDaoTao;

	public KySu(int tuoi, String ten, String gioitinh, String diachi, String nganhDaoTao) {
		super(tuoi, ten, gioitinh, diachi);
		NganhDaoTao = nganhDaoTao;
	}

	public KySu(int tuoi, String ten, String gioitinh, String diachi) {
		super(tuoi, ten, gioitinh, diachi);
	}
	
	
}
