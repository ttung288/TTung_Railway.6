package backend;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import entity.CanBo;

public class QLCB {
	
	ArrayList<CanBo> danhsachcanbo = new ArrayList<CanBo>();
	
	public void themMoiCanbo() {
		// TODO Auto-generated method stub

		Scanner scanner = new Scanner(System.in);
		CanBo canBo1 = new CanBo();
		System.out.println("Nhập tên cán bộ: ");
		canBo1.setTen(scanner.nextLine());
		
		System.out.println("Nhập tuổi cán bộ: ");
		canBo1.setTuoi(scanner.nextInt());
		scanner.nextLine();
		
		System.out.println("Nhập giới tính cán bộ :");		
		canBo1.setGioitinh(scanner.nextLine());
		
		danhsachcanbo.add(canBo1);
		
	}
	
	public void hienThiDanhSachCanbo() {
		// TODO Auto-generated method stub
		for (CanBo canBo : danhsachcanbo) {
			System.out.println(canBo.toString());
		}
		
	}
	public void xoaCanbo() {
		// TODO Auto-generated method stub
		Scanner scanner = new Scanner(System.in);
		System.out.println("Nhập tên cán bộ muốn xóa: ");
		String name = scanner.nextLine();
		
	
		for(int i = 0; i < danhsachcanbo.size();) {
			if(danhsachcanbo.get(i).getTen().equals(name)) {
				danhsachcanbo.remove(i);	
			}else {
				i++;
			}
		}
		
//		for (CanBo canBo : danhsachcanbo) {
//			if(canBo.getTen().equals(name)) {
//				danhsachcanbo.remove(canBo);
//				break;
//			}
//		
	}	
		
		
}
	
	


