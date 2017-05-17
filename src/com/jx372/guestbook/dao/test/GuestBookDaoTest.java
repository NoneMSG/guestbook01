package com.jx372.guestbook.dao.test;

import java.util.List;

import com.jx372.guestbook.dao.GuestBookDao;
import com.jx372.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
		//insert();
		
		delete();
		getList();
	}
	public static void insert(){
		GuestBookVo vo = new GuestBookVo();
		
		vo.setName("ppp");
		vo.setPasswd("1234");
		vo.setRegDate("1990-09-18");
		vo.setMessage("asdasdasdmesggaegerq");
		
		new GuestBookDao().insert(vo);
	}
	public static void getList(){
		GuestBookDao dao = new GuestBookDao();
		List<GuestBookVo> list = dao.getList();
		for(GuestBookVo vo : list){
			System.out.println(vo);
		}
	}
	public static void delete(){
		GuestBookDao dao = new GuestBookDao();
		GuestBookVo vo =new GuestBookVo();
		vo.setNo(1L);
		vo.setPasswd("1234");
		
		dao.delete(vo);
		
	}

}
