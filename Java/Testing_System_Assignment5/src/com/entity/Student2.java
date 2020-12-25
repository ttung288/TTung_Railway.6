package com.entity;

public class Student2 extends Person {
	
	private String maSv;
	private float diemTB;
	private String email;
	public String getMaSv() {
		return maSv;
	}
	public void setMaSv(String maSv) {
		this.maSv = maSv;
	}
	public float getDiemTB() {
		return diemTB;
	}
	public void setDiemTB(float diemTB) {
		this.diemTB = diemTB;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Student2(String maSv, float diemTB, String email) {
		super();
		this.maSv = maSv;
		this.diemTB = diemTB;
		this.email = email;
	}
	public Student2() {
		super();
	}
	@Override
	public String toString() {
		return "Student2 [maSv=" + maSv + ", diemTB=" + diemTB + ", email=" + email + ", getTen()=" + getTen()
				+ ", getGioiTinh()=" + getGioiTinh() + ", getNgaySinh()=" + getNgaySinh() + ", getDiaChi()="
				+ getDiaChi() + "]";
	}
	
	
	
}
