package com.study.web.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.study.web.dao.BoardDAO;
import com.study.web.vo.Board;

@Repository
public class BoardService implements BoardDAO {

	
	@Autowired
	private SqlSession sqlSession;


	   
	@Override
	public List<Board> board_list(){
		List<Board> list = sqlSession.selectList("board_list"); 
		
		return list;
	}
	

	@Override
	public Board board_read(int bNum) throws Exception{
		return sqlSession.selectOne("board_read", bNum);
		
	}
	@Override
	public Board board_mod(int bNum) throws Exception{
		return sqlSession.selectOne("board_read", bNum);
	}
	

	@Override
	public void board_write(Board board) throws Exception {
		sqlSession.insert("board_write", board);
	}
	
	@Override
	public void board_update(Board board) throws Exception {
		sqlSession.update("board_update", board);
	}
	
	@Override
	public void board_delete(int bNum) throws Exception {
		sqlSession.delete("board_delete", bNum);
	}


}
