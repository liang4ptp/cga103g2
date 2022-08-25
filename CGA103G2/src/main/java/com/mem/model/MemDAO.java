package com.mem.model;

import java.util.*;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.mem.model.MemVO;

import java.sql.*;
import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class MemDAO implements MemDAO_interface {

	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/cga103g2");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

private static final String INSERTSTMT = "INSERT INTO members (memId,memName,memAccount,memPassword,memGender,memPhone,memEmail,memAddress,memBirthday,memPermission) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";
private static final String GETALLSTMT = "SELECT memid, memname, memaccount, mempassword, memgender, memphone, mememail, memaddress, membirthday, mempermission FROM members order by memid";
private static final String GETONESTMT = "SELECT memid, memname, memaccount, mempassword, memgender, memphone, mememail, memaddress, membirthday, mempermission FROM members  where memid = ?";
private static final String DELETE = "DELETE FROM members where memid = ?";
private static final String UPDATE = "UPDATE members set memname=?, memaccount=?, mempassword=?, memgender=?, memphone=?, mememail=?, memaddress=?, membirthday=?, mempermission=? where memid = ?";


@Override
public void insert(MemVO memVO) {
	Connection con =null;
	PreparedStatement pstmt = null;
	
	try {
		con = ds.getConnection();
		pstmt = con.prepareStatement(INSERTSTMT);
	
		pstmt.setInt(1, memVO.getMemId());
		pstmt.setString(2, memVO.getMemName());
		pstmt.setString(3, memVO.getMemAccount());
		pstmt.setString(4, memVO.getMemPassword());
		pstmt.setInt(5, memVO.getMemGender());
		pstmt.setString(6, memVO.getMemPhone());
		pstmt.setString(7, memVO.getMemEmail());
		pstmt.setString(8, memVO.getMemAddress());
		pstmt.setDate(9, memVO.getMemBirthday());
		pstmt.setInt(10, memVO.getMemPermission());

		pstmt.executeUpdate();
		
	} catch (SQLException se) {
		throw new RuntimeException("A database error occured. " + se.getMessage());
		// Clean up JDBC resources
	} finally {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException se) {
				se.printStackTrace(System.err);
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace(System.err);
			}
		}
	}

}


@Override
public void update(MemVO memVO) {

	Connection con = null;
	PreparedStatement pstmt = null;

	try {
		con = ds.getConnection();
		pstmt = con.prepareStatement(UPDATE);
		
		pstmt.setString(1, memVO.getMemName());
		pstmt.setString(2, memVO.getMemAccount());
		pstmt.setString(3, memVO.getMemPassword());
		pstmt.setInt(4, memVO.getMemGender());
		pstmt.setString(5, memVO.getMemPhone());
		pstmt.setString(6, memVO.getMemEmail());
		pstmt.setString(7, memVO.getMemAddress());
		pstmt.setDate(8, memVO.getMemBirthday());
		pstmt.setInt(9, memVO.getMemPermission());
		pstmt.setInt(10, memVO.getMemId());
		pstmt.executeUpdate();
		
	} catch (SQLException se) {
		throw new RuntimeException("A database error occured. " + se.getMessage());
		// Clean up JDBC resources
	} finally {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException se) {
				se.printStackTrace(System.err);
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace(System.err);
			}
		}
	}

}

	


@Override
public void delete(Integer memid) {
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		con = ds.getConnection();
		pstmt = con.prepareStatement(DELETE);
		
		pstmt.setInt(1, memid);

		pstmt.executeUpdate();
		
	} catch (SQLException se) {
		throw new RuntimeException("A database error occured. " + se.getMessage());
		// Clean up JDBC resources
	} finally {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException se) {
				se.printStackTrace(System.err);
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace(System.err);
			}
		}
	}

}



@Override
public MemVO findByPrimaryKey(Integer memid) {
	MemVO memVO = null;
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		con = ds.getConnection();
		pstmt = con.prepareStatement(GETONESTMT);
		
		pstmt.setInt(1, memid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			memVO = new MemVO();
			
//			pstmt.setInt(1, memVO.getMemid());
			memVO.setMemId(rs.getInt("memid"));
//			pstmt.setString(2, memVO.getMemname());
			memVO.setMemName(rs.getString("memname"));
//			pstmt.setString(3, memVO.getMemaccount());
			memVO.setMemAccount(rs.getString("memaccount"));
//			pstmt.setString(4, memVO.getMempassword());
			memVO.setMemPassword(rs.getString("mempassword"));
//			pstmt.setInt(5, memVO.getMemgender());
			memVO.setMemGender(rs.getInt("memgender"));
//			pstmt.setInt(6, memVO.getMemphone());
			memVO.setMemPhone(rs.getString("memphone"));
//			pstmt.setString(7, memVO.getMememail());
			memVO.setMemEmail(rs.getString("mememail"));
//			pstmt.setString(8, memVO.getMemaddress());
			memVO.setMemAddress(rs.getString("memaddress"));
//			pstmt.setDate(9, memVO.getMembirthday());
			memVO.setMemBirthday(rs.getDate("membirthday"));
//			pstmt.setInt(10, memVO.getMempermission());
			memVO.setMemPermission(rs.getInt("mempermission"));
		}
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return memVO;
	}



@Override
public List<MemVO> getAll() {
	List<MemVO> list = new ArrayList<MemVO>();
	MemVO memVO = null;
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		con = ds.getConnection();
		pstmt = con.prepareStatement(GETALLSTMT);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			// empVO 也稱為 Domain objects
			memVO = new MemVO();
			
			memVO.setMemId(rs.getInt("memid"));
			memVO.setMemName(rs.getString("memname"));
			memVO.setMemAccount(rs.getString("memaccount"));
			memVO.setMemPassword(rs.getString("mempassword"));
			memVO.setMemGender(rs.getInt("memgender"));
			memVO.setMemPhone(rs.getString("memphone"));
			memVO.setMemEmail(rs.getString("mememail"));
			memVO.setMemAddress(rs.getString("memaddress"));
			memVO.setMemBirthday(rs.getDate("membirthday"));
			memVO.setMemPermission(rs.getInt("mempermission"));
			list.add(memVO); // Store the row in the list
}
	} catch (SQLException se) {
		throw new RuntimeException("A database error occured. " + se.getMessage());
		// Clean up JDBC resources
	} finally {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException se) {
				se.printStackTrace(System.err);
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException se) {
				se.printStackTrace(System.err);
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace(System.err);
			}
		}
	}
	return list;

}	

public static void main(String[] args) {

	MemJDBCDAO dao = new MemJDBCDAO();
	// 新增  done
//	MemVO memVO1 = new MemVO();
//	memVO1.setMemId(12);
//	memVO1.setMemName("LEO");
//	memVO1.setMemAccount ("1qwewqewqe");
//	memVO1.setMemPassword("qwewqewqe");
//	memVO1.setMemGender(0);
//	memVO1.setMemPhone("987654321");
//	memVO1.setMemEmail("as@as.com");
//	memVO1.setMemAddress("市區路巷弄");
//	memVO1.setMemBirthday(new Date(System.currentTimeMillis()));
//	memVO1.setMemPermission(1);
//	dao.insert(memVO1);
//	
	
	
	// 修改  done
//	MemVO memVO2 = new MemVO();
//	memVO2.setMemId(9);
//	memVO2.setMemName("Ooo");
//	memVO2.setMemAccount ("wowowo");
//	memVO2.setMemPassword("123");
//	memVO2.setMemGender(1);
//	memVO2.setMemPhone("987654323");
//	memVO2.setMemEmail("a2s@as.com");
//	memVO2.setMemAddress("市區路巷弄");
//	memVO2.setMemBirthday(new Date(System.currentTimeMillis()));
//	memVO2.setMemPermission(1);
//	dao.update(memVO2);
	
	
	
	
	//刪除  done
//	dao.delete(10);
	
	
	// 單筆查詢  done
//	MemVO memVO3 = dao.findByPrimaryKey(11);
//	System.out.print(memVO3.getMemid() + ",");
//	System.out.print(memVO3.getMemname() + ",");
//	System.out.print(memVO3.getMemaccount() + ",");
//	System.out.print(memVO3.getMempassword() + ",");
//	System.out.print(memVO3.getMempermission() + ",");
//	System.out.print(memVO3.getMemphone() + ",");
//	System.out.println(memVO3.getMemaddress() + ",");
//	System.out.println(memVO3.getMememail() + ",");
//	System.out.println(memVO3.getMembirthday()+ ",");
//	System.out.println(memVO3.getMempermission()+ ",");
//	System.out.println("---------------------");
	
	
	// 多筆查詢  done
//	List<MemVO> list = dao.getAll();
//	for (MemVO aMem : list) {
//		System.out.print(aMem.getMemId() + ",");
//		System.out.print(aMem.getMemName() + ",");
//		System.out.print(aMem.getMemAccount() + ",");
//		System.out.print(aMem.getMemPassword() + ",");
//		System.out.print(aMem.getMemPermission() + ",");
//		System.out.print(aMem.getMemPhone() + ",");
//		System.out.println(aMem.getMemAddress() + ",");
//		System.out.println(aMem.getMemEmail() + ",");
//		System.out.println(aMem.getMemBirthday()+ ",");
//		System.out.println(aMem.getMemPermission()+ ",");
//		System.out.println("---------------------");
//	}
}

}
