package com.hk.main;

import java.util.List;

import com.hk.daos.HkDao;
import com.hk.dtos.HkDto;

public class HkMain {

	public static void main(String[] args) {
		HkDao dao=new HkDao();
		List<HkDto> list=dao.getAllBoard();
		
		for (int i = 0; i < list.size(); i++) {
			HkDto dto=list.get(i); //[dto,dto,dto.......]
			System.out.println(dto);
		}
	}

}
