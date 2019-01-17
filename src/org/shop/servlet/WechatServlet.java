package org.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.shop.dao.HwDao;
import org.shop.pojo.Hw;
import org.shop.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.google.gson.Gson;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class Wechatservlet
 */
@Controller
@WebServlet("/WechatServlet")
public class WechatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Autowired
	private HwDao hd;
 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WechatServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //�����������
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
		
		
		
		String flag = request.getParameter("flag");

        /* ������Ӧͷ����ajax������� */
        response.setHeader("Access-Control-Allow-Origin", "*");
        /* �Ǻű�ʾ���е��������󶼿��Խ��ܣ� */
        response.setHeader("Access-Control-Allow-Methods", "GET,POST");
         if(flag.equals("addUser"))
         {
             User user = new User();
             //��ȡ΢��С����get�Ĳ���ֵ����ӡ
             user.setId(Integer.parseInt(request.getParameter("id")));
             user.setName(request.getParameter("name"));
             user.setPassword(request.getParameter("password"));
             user.setSex(Integer.parseInt(request.getParameter("sex")));
             user.setYear(request.getParameter("year"));
             user.setDate(new Date(System.currentTimeMillis()));
             user.setPhone(request.getParameter("phone"));
             user.setT1(0);
             user.setT2(0);
             user.setT3("");
             user.setT4("");
             //ת��json����
             Map<String, Object> result = new HashMap<String, Object>();
             result.put("data", user);
             result.put("msg", "��̨���յ�");
             //ʹ��Gson����Ҫ����gson-2.8.0.jar
             String json = new Gson().toJson(result);

             //����ֵ��΢��С����
             Writer out = response.getWriter();
             out.write(json);
             out.flush();
         }
         else if(flag.equals("test"))
         {
        	 Map<String, Object> result = new HashMap<String, Object>();
             result.put("status", true);
             result.put("msg", "��̨���յ�");
             //ʹ��Gson����Ҫ����gson-2.8.0.jar
             String json = new Gson().toJson(result);

             //����ֵ��΢��С����
             Writer out = response.getWriter();
             out.write(json);
             out.flush();
         }
         else if (flag.equals("addGood"))
         {
        	 
         }
         else if(flag.equals("queryGoods"))
         {
        	 
        	 System.out.println("here i am");
        	 List<Hw> lists = hd.queryGoods();
        	 JSONArray object = new JSONArray();
        	 object.add(lists);
        	 PrintWriter writer = response.getWriter();
        	 writer.print(object);
         }
  

      

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
