package com.emp.model;

import java.util.*;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import java.sql.*;

public class EmpDAO implements EmpDAO_interface {
//	共用DataSource
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/cga103g2");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private static final String LOGIN_STMT = "SELECT emp_account,emp_password from employee where emp_account = ? and emp_password = ?";
	private static final String INSERT_STMT = "INSERT INTO employee ( emp_name, emp_account,emp_password,emp_permission,emp_phone,emp_address,emp_job,emp_hiredate) VALUES (?,?,?,?,?,?,?,?);";
	private static final String GET_ALL_STMT = "SELECT emp_id, emp_name, emp_account,emp_password,emp_permission,emp_phone,emp_address,emp_job,emp_hiredate FROM employee order by emp_id";
	private static final String GET_ONE_STMT = "SELECT emp_id, emp_name, emp_account,emp_password,emp_permission,emp_phone,emp_address,emp_job,emp_hiredate FROM employee where emp_id = ?";
	private static final String DELETE = "DELETE FROM employee where emp_id = ?";
	private static final String UPDATE = "UPDATE employee set emp_name=?, emp_account=?, emp_password=?, emp_permission=?, emp_phone=?, emp_address=?, emp_job=?,emp_hiredate=? where emp_id = ?";
	
	@Override
	public boolean loginAdmin(EmpLoginVO admin) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		int res = 0;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(LOGIN_STMT);
			
			pstmt.setString(1, admin.getEmp_account());
			pstmt.setString(2, admin.getEmp_password());

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				res = 1;
			}
			pstmt.close();
			rs.close();
			if (res == 1) {
				return true;
			}
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
		}
		return false;
	}
	
	@Override
	public void insert(EmpVO empVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);
			
//			pstmt.setInt(1,empVO.getEmp_id());
			pstmt.setString(1, empVO.getEmp_name());
			pstmt.setString(2, empVO.getEmp_account());
			pstmt.setString(3, empVO.getEmp_password());
			pstmt.setInt(4, empVO.getEmp_permission());
			pstmt.setString(5, empVO.getEmp_phone());
			pstmt.setString(6, empVO.getEmp_address());
			pstmt.setInt(7, empVO.getEmp_job());
			pstmt.setObject(8, empVO.getEmp_hiredate());

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
	public void update(EmpVO empVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setString(1, empVO.getEmp_name());
			pstmt.setString(2, empVO.getEmp_account());
			pstmt.setString(3, empVO.getEmp_password());
			pstmt.setInt(4, empVO.getEmp_permission());
			pstmt.setString(5, empVO.getEmp_phone());
			pstmt.setString(6, empVO.getEmp_address());
			pstmt.setInt(7, empVO.getEmp_job());
			
			pstmt.setObject(8, empVO.getEmp_hiredate());
			
			pstmt.setInt(9, empVO.getEmp_id());

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
	public void delete(Integer emp_id) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);

			pstmt.setInt(1, emp_id);

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
	public EmpVO findByPrimaryKey(Integer emp_id) {

		EmpVO empVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);
			
			pstmt.setInt(1, emp_id);
			
			rs = pstmt.executeQuery();
//			System.out.println(rs);
			while (rs.next()) {
				// empVo 也稱為 Domain objects
				empVO = new EmpVO();

				empVO.setEmp_id(rs.getInt("emp_id"));
				empVO.setEmp_name(rs.getString("emp_name"));
				empVO.setEmp_account(rs.getString("emp_account"));
				empVO.setEmp_password(rs.getString("emp_password"));
				empVO.setEmp_permission(rs.getInt("emp_permission"));
				empVO.setEmp_phone(rs.getString("emp_phone"));
				empVO.setEmp_address(rs.getString("emp_address"));
				empVO.setEmp_job(rs.getInt("emp_job"));
				empVO.setEmp_hiredate( rs.getDate("emp_hiredate"));
//				empVO.setEmp_hiredate( rs.getObject("emp_hiredate",LocalDateTime.class));
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
		return empVO;
	}

	@Override
	public List<EmpVO> getAll() {
		List<EmpVO> list = new ArrayList<EmpVO>();
		EmpVO empVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// empVO 也稱為 Domain objects
				empVO = new EmpVO();

				empVO.setEmp_id(rs.getInt("emp_id"));
				empVO.setEmp_name(rs.getString("emp_name"));
				empVO.setEmp_account(rs.getString("emp_account"));
				empVO.setEmp_password(rs.getString("emp_password"));
				empVO.setEmp_permission(rs.getInt("emp_permission"));
				empVO.setEmp_phone(rs.getString("emp_phone"));
				empVO.setEmp_address(rs.getString("emp_address"));
				empVO.setEmp_job(rs.getInt("emp_job"));
				empVO.setEmp_hiredate( rs.getDate("emp_hiredate"));
				list.add(empVO); 
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

}