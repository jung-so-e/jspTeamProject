package com.sulzip.app.admin;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;
import com.sulzip.app.Execute;
import com.sulzip.app.admin.dao.AdminDAO;
import com.sulzip.app.admin.vo.UserListVO;
import com.sulzip.app.user.dto.UserDTO;

public class AdminUserController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		UserListVO userListVO = new UserListVO();
		UserDTO userDTO = new UserDTO();
		
		
		
//		List<UserDTO> userList = req.getParameterValues("userIds");
//		String[] userList = req.getParameterValues("userIds");
		
		List<UserListVO> userList = adminDAO.userList();
		
		req.setAttribute("userList", userList);
		
		
		
		req.getRequestDispatcher("/app/admin/adminuser.jsp").forward(req, resp);
		
	}

}














