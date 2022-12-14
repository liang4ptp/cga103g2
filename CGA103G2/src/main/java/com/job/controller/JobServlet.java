package com.job.controller;

import java.io.*;
import java.time.LocalDateTime;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.apache.naming.java.javaURLContextFactory;

import com.emp.model.EmpService;
import com.emp.model.EmpVO;
import com.job.model.JobDAO;
import com.job.model.JobService;
import com.job.model.JobVO;

@WebServlet("/back-end/job/JobServlet.do")
public class JobServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");

		// ----- ----- ----- getAll start ----- ----- -----
		if ("getAll".equals(action)) {
			/*************************** 開始查詢資料 ****************************************/
			JobDAO dao = new JobDAO();
			List<JobVO> list = dao.getAll();

			/*************************** 查詢完成,準備轉交(Send the Success view) *************/
			HttpSession session = req.getSession();
			session.setAttribute("list", list); // 資料庫取出的list物件,存入session
			// Send the Success view
			String url = "/back-end/job/jobDetail.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交listAllEmp2_getFromSession.jsp
			successView.forward(req, res);
			return;
		}
		// ----- ----- ----- getAll end ----- ----- -----

		// ----- ----- ----- getOne_For_Display start ----- ----- -----
		if ("getOne_For_Display".equals(action)) { // 來自select_page.jsp的請求

			Map<String,String> errorMsgs = new LinkedHashMap<String,String>();
			req.setAttribute("errorMsgs", errorMsgs);

			/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
			String str = req.getParameter("jobID");
			if (str == null || (str.trim()).length() == 0) {
				errorMsgs.put("jobID","請輸入職務編號");
			}

			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/job/jobDetail.jsp");
				failureView.forward(req, res);
				return;// 程式中斷
			}

			Integer jobID = null;
			try {
				jobID = Integer.valueOf(str);
			} catch (Exception e) {
				errorMsgs.put("jobID","職務編號格式不正確");
			}
			// Send the use back to the form, if there were errors
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/job/jobDetail.jsp");
				failureView.forward(req, res);
				return;// 程式中斷
			}

			/*************************** 2.開始查詢資料 *****************************************/
			JobService jobSvc = new JobService();
			JobVO jobVO = jobSvc.getOneJob(jobID);
			if (jobVO == null) {
				errorMsgs.put("jobID","查無資料");
			}
			// Send the use back to the form, if there were errors
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/job/jobDetail.jsp");
				failureView.forward(req, res);
				return;// 程式中斷
			}

			/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
			req.setAttribute("jobVO", jobVO); // 資料庫取出的empVO物件,存入req
			String url = "/back-end/job/jobDetailOne.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneEmp.jsp
			successView.forward(req, res);
		}
		// ----- ----- ----- getOne_For_Display end ----- ----- -----

		// ----- ----- ----- insert start ----- ----- -----
		if ("insert".equals(action)) { // 來自addFunction.jsp的請求
			Map<String,String> errorMsgs = new LinkedHashMap<String,String>();
			req.setAttribute("errorMsgs", errorMsgs);

			/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
			String jobName = req.getParameter("jobName");
			String jobNamReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
			
			//----- 此段去查詢資料庫是否有重複的jobName職位資料 start-----
			JobService jobSvc = new JobService();
			JobVO jobVO = jobSvc.getJobNameCheck(jobName); 
			//----- 此段去查詢資料庫是否有重複的jobName職位資料 end -----
			
			if (jobName == null || jobName.trim().length() == 0) {
				errorMsgs.put("jobName","職位名字: 請勿空白");
			}
			else if (!jobName.trim().matches(jobNamReg)) { // 以下練習正則(規)表示式(regular-expression)
			errorMsgs.put("jobName","職稱: 只能是中、英文字母、數字和_ , 且長度必需在2到10之間");
			}
			else if(jobVO != null) {
				errorMsgs.put("jobName","職位重複,請重新輸入");
			}
			
			jobVO = new JobVO();
			jobVO.setJobName(jobName);

			if (!errorMsgs.isEmpty()) {
				req.setAttribute("jobVO", jobVO); // 含有輸入格式錯誤的empVO物件,也存入req
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/job/jobAdd.jsp");
				failureView.forward(req, res);
				return;
			}

			/*************************** 2.開始新增資料 ***************************************/
			jobSvc = new JobService();
			jobVO = jobSvc.addJob(jobName);

			/*************************** 3.新增完成,準備轉交(Send the Success view) ***********/
			req.setAttribute("jobVO", jobVO);
			String url = "/back-end/job/jobAddSuccess.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllJob.jsp
			successView.forward(req, res);
		}
		// ----- ----- ----- insert end ----- ----- -----

		// ----- ----- ----- getOne_For_Update start ----- ----- -----
		if ("getOne_For_Update".equals(action)) { // 來自Jobloyee_detail.jsp的請求
			Map<String, String> errorMsgs = new LinkedHashMap<String, String>();
			req.setAttribute("errorMsgs", errorMsgs);
			/*************************** 1.接收請求參數 ****************************************/
			Integer jobID = Integer.valueOf(req.getParameter("jobID"));
			/*************************** 2.開始查詢資料 ****************************************/
			JobService jobSvc = new JobService();
			JobVO jobVO = jobSvc.getOneJob(jobID);
			/*************************** 3.查詢完成,準備轉交(Send the Success view) ************/
			String param = "?jobID=" + jobVO.getJobID() + "&jobName=" + jobVO.getJobName();
			String url = "/back-end/job/jobEdit.jsp" + param;
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);
		}
		// ----- ----- ----- getOne_For_Update end ----- ----- -----

		// ----- ----- ----- update start ----- ----- -----
		if ("update".equals(action)) { // 來自update_emp_input.jsp的請求
			Map<String, String> errorMsgs = new LinkedHashMap<String, String>();
			req.setAttribute("errorMsgs", errorMsgs);

			/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
			Integer jobID = Integer.valueOf(req.getParameter("jobID").trim());

			String jobName = req.getParameter("jobName");
			String jobNameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
			if (jobName == null || jobName.trim().length() == 0) {
				errorMsgs.put("jobName", "職稱請勿空白");
			} else if (!jobName.trim().matches(jobNameReg)) { // 以下練習正則(規)表示式(regular-expression)
				errorMsgs.put("jobName", "職稱只能是中、英文字母、數字和_ , 且長度必需在2到10之間");
			}

			

			JobVO jobVO = new JobVO();
			jobVO.setJobID(jobID);
			jobVO.setJobName(jobName);


			// Send the use back to the form, if there were errors
			if (!errorMsgs.isEmpty()) {
				req.setAttribute("jobVO", jobVO); // 含有輸入格式錯誤的empVO物件,也存入req
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/job/jobEdit.jsp");
				failureView.forward(req, res);
				return; // 程式中斷
			}

			/*************************** 2.開始修改資料 *****************************************/
			JobService jobSvc = new JobService();
			jobVO = jobSvc.updateJob(jobID, jobName);
			/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
			req.setAttribute("jobVO", jobVO); // 資料庫update成功後,正確的的empVO物件,存入req
			String url = "/back-end/job/jobEditSuccess.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneEmp.jsp
			successView.forward(req, res);
		}
		// ----- ----- ----- update end ----- ----- -----

		// ----- ----- ----- delete start ----- ----- -----
		if ("delete".equals(action)) { // 來自listAllEmp.jsp

			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);

			/*************************** 1.接收請求參數 ***************************************/
			Integer jobID = Integer.valueOf(req.getParameter("jobID"));

			/*************************** 2.開始刪除資料 ***************************************/
			JobService jobSvc = new JobService();
			jobSvc.deleteJob(jobID);

			/*************************** 3.刪除完成,準備轉交(Send the Success view) ***********/
			String url = "/back-end/job/jobDeleteSuccess.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
			successView.forward(req, res);
		}
		// ----- ----- ----- delete end ----- ----- -----
	}
}