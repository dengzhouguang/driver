package com.dzg.driver.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.dzg.driver.entity.ExamName;
import com.dzg.driver.entity.Examing;
import com.dzg.driver.entity.Item;
import com.dzg.driver.entity.User;
import com.dzg.driver.service.ExamNameService;
import com.dzg.driver.service.ExamingService;
import com.dzg.driver.service.ItemService;
import com.dzg.driver.service.UserService;
import com.dzg.driver.util.ExcelExportHelper;

@Controller
@RequestMapping(value = "/")
public class IndexController {
	@Autowired
	private UserService userService;
	@Autowired
	private ItemService itemService;
	@Autowired
	private ExamNameService examNameService;
	@Autowired
	private ExamingService examingService;
    
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signin(@RequestParam(value = "id") String id, @RequestParam(value = "password") String password,
			@RequestParam(value = "remember", defaultValue = "0") String remember, Model model,
			HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		User user = userService.getUserById(id);
		System.out.println("remenber:" + remember);
		if (user == null || !(user.getPassword().equals(password))) {
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script language='javascript'>");
				out.println("alert(\"" + "准考证或密码错误" + " 请重新输入！" + "\");");
				out.println("location.href='/driver';");
				out.println("</script>");
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return "/";
		} else {
			model.addAttribute("user", user);
			Examing examing = examingService.query(user.getId());
			if (examing != null) {
				Cookie cookie4 = new Cookie("time", examing.getTime());
				cookie4.setMaxAge(14 * 24 * 60 * 60);
				response.addCookie(cookie4);
			}
			Cookie cookie = new Cookie("username", user.getUsername());
			Cookie cookie2 = new Cookie("power", String.valueOf(user.getPower()));
			Cookie cookie3 = new Cookie("id", user.getId());
			if (remember.equals("1")) {
				cookie.setMaxAge(14 * 24 * 60 * 60);
			} else {
				cookie.setMaxAge(24 * 60 * 60);// 设置为一天
			}
			cookie.setPath("/");
			response.addCookie(cookie);
			response.addCookie(cookie2);
			response.addCookie(cookie3);
			return "redirect:exam/exam1/1";
		}
	}

	@RequestMapping(value = "/register")
	public String register(HttpServletRequest request) {
		return "register";
	}
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request) {
		return "login";
	}
	@RequestMapping(value = "/checkregister")
	public void checkRegister(@RequestParam(value = "id") String id, @RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password, @RequestParam(value = "rucaptcha") String rucaptcha,
			Model model, HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String vcode = (String) session.getAttribute("vcode");
		if (!vcode.equals(rucaptcha)) {
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script language='javascript'>");
				out.println("alert(\"" + "验证码错误" + " 请重新输入！" + "\");");
				out.println("location.href='/driver/register';");
				out.println("</script>");
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		if ((userService.getUserById(id) == null) && (userService.getUserByUsername(username) == null)) {
			User user = new User();
			user.setId(id);
			user.setUsername(username);
			user.setPassword(password);
			user.setScore(-1);
			user.setPower(0);
			userService.saveUser(user);
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script language='javascript'>");
				out.println("alert(\"" + "用户创建成功！" + "\");");
				out.println("location.href='/driver';");
				out.println("</script>");
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script language='javascript'>");
				out.println("alert(\"" + "账户名或用户名已存在" + " 请重新输入！" + "\");");
				out.println("location.href='/driver/register';");
				out.println("</script>");
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		;
	}

	@RequestMapping(value = "/")
	public String index() {
		return "redirect:exam/exam1/1";
	}

	@RequestMapping(value = "simulation")
	public String simulation(Map<String, List<ExamName>> map) {
		List<ExamName> jiaxiao = examNameService.getExamNames("驾校模拟");
		List<ExamName> jiaogui = examNameService.getExamNames("交规理论");
		List<ExamName> jiazhao = examNameService.getExamNames("驾照模拟");
		List<ExamName> jiashizheng = examNameService.getExamNames("驾驶证");
		List<ExamName> jidongche = examNameService.getExamNames("机动车驾驶人");
		List<ExamName> jiaxiaoyidiantong = examNameService.getExamNames("驾校一点通");
		List<ExamName> jiakaobaodian = examNameService.getExamNames("驾考宝典");
		List<ExamName> yuanbei = examNameService.getExamNames("元贝驾考");
		List<ExamName> jiashiyuan = examNameService.getExamNames("驾驶员考试");
		List<ExamName> list = examNameService.getExamNames(1);
		map.put("jx", jiaxiao);
		map.put("jg", jiaogui);
		map.put("jz", jiazhao);
		map.put("jsz", jiashizheng);
		map.put("jdc", jidongche);
		map.put("jxydt", jiaxiaoyidiantong);
		map.put("jkbd", jiakaobaodian);
		map.put("yb", yuanbei);
		map.put("jsy", jiashiyuan);
		map.put("list", list);
		System.out.println(jiaxiao.size() + ":" + jiaogui.size() + ":" + "\r\n" + jiazhao.size() + ":"
				+ jiashizheng.size() + ":" + "\r\n" + jidongche.size() + ":" + jiaxiaoyidiantong.size() + ":" + "\r\n"
				+ jiakaobaodian.size() + ":" + yuanbei.size() + ":" + "\r\n" + jiashiyuan.size() + ":" + list.size()
				+ ":" + "\r\n");
		return "simulation";
	}

	@RequestMapping(value = "simulationlist")
	public String simulationList(@RequestParam(value = "page", required = false) Integer page, Model model) {
		if (page == null) {
			page = 1;
		}
		List<ExamName> list = examNameService.getExamNames(page);
		Integer maxPage = examNameService.getMaxPage();
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		model.addAttribute("max", maxPage);
		return "simulationlist";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(@RequestParam(value = "name") String name, Model model) {
/*		try {
			name = new String(name.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}*/
		System.out.println(name);
		List<Item> list = itemService.getItems(name);
		int i = 0;
		for (Item item : list) {
			System.out.println(item.getC() + i);
			i++;
		}
		model.addAttribute("list", list);
		model.addAttribute("name", name);
		System.out.println(list.size() + "");
		return "test";
	}

	@RequestMapping(value = "/exam")
	public String getExam(@RequestParam(value = "id", required = false) String id, Model model,
			HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username")) {
				User user = userService.getUserByUsername(cookie.getValue());
				if (user.getScore() >= 0) {
					try {
						response.setCharacterEncoding("UTF-8");
						response.setContentType("text/html;charset=utf-8");
						PrintWriter writer = response.getWriter();
						writer.append("<Script Language=\"JavaScript\"> alert(\"您已经考过试了！！！！分数为:" + user.getScore()
								+ "\");" + "location.href='/driver/simulation';" + " </Script> ");
						writer.flush();
						writer.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
					return "error";
				}
				Examing exam = examingService.query(user.getId());
				if (exam != null) {
					id = exam.getExamId();
				}
				String name = null;
				if (id.equals("1")) {
					name = "2017驾驶员科目四（一）";
				} else if (id.equals("2")) {
					name = "2017驾驶员科目四（二）";
				} else if (id.equals("3")) {
					name = "2017驾驶员科目四（三）";
				} else if (id.equals("4")) {
					name = "2017驾驶员科目四（四）";
				} else {
					try {
						response.setCharacterEncoding("UTF-8");
						response.setContentType("text/html;charset=utf-8");
						PrintWriter writer = response.getWriter();
						writer.append("<Script Language=\"JavaScript\"> alert(\"请先选择考试试卷！\");"
								+ "location.href='/driver/simulation';" + " </Script> ");
						writer.flush();
						writer.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				List<Item> list = itemService.getItems(name);
				model.addAttribute("list", list);
				model.addAttribute("name", name);
				if (exam == null) {
					Date date = new Date();
					Cookie time = new Cookie("time", String.valueOf(date.getTime()));
					time.setMaxAge(30 * 60);
					for (Cookie c : cookies) {
						if (c.getName().equals("time")) {
							c.setValue(null);
							c.setMaxAge(0);// 立即销毁cookie
							c.setPath("/");
							response.addCookie(c);
							break;
						}
					}
					response.addCookie(time);
					Examing examing = new Examing();
					examing.setExamId(id);
					examing.setId(user.getId());
					examing.setTime(String.valueOf(date.getTime()));
					examingService.saveExaming(examing);
					return "redirect:exam?id=" + id;
				}
				return "exam";
			}
		}
		return "login";
	}

	@RequestMapping(value = "/exit")
	public String exit(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					cookie.setValue(null);
					cookie.setMaxAge(0);// 立即销毁cookie
					cookie.setPath("/");
					response.addCookie(cookie);
					break;
				}
			}
		}
		return "login";
	}

	@RequestMapping(value = "/Captcha")
	public void getCaptcha(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("image/jpeg");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		HttpSession session = request.getSession();
		int width = 140, height = 50;
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		Random random = new Random();
		g.setColor(getRandColor(200, 250));
		g.fillRect(0, 0, width, height);
		g.setFont(new Font("Times New Roman", Font.PLAIN, 36));
		g.setColor(getRandColor(160, 200));
		g.drawRect(0, 0, width - 1, height - 1);
		g.setColor(getRandColor(160, 200));
		for (int i = 0; i < 155; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			g.drawLine(x, y, x + xl, y + yl);
		}
		String sRand = "";
		for (int i = 0; i < 4; i++) {
			String rand = String.valueOf(random.nextInt(10));
			sRand += rand;
			g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));
			g.drawString(rand, 20 * i + 14, 40);
		}
		session.setAttribute("vcode", sRand);
		g.dispose();
		try {
			ImageIO.write(image, "JPEG", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "count")
	public String count(Model model) {
		List<User> list = userService.getUsers();
		List<Double> numList = new ArrayList<Double>();
		Double num0 = 0.0;
		Double num1 = 0.0;
		Double num2 = 0.0;
		Double num3 = 0.0;
		Double num4 = 0.0;
		Double num5 = 0.0;
		Double num6 = 0.0;
		Double num7 = 0.0;
		Double num8 = 0.0;
		Double num9 = 0.0;
		Double num10 = 0.0;
		for (User user : list) {
			int score = user.getScore();
			if (score > 90) {
				num10++;
			} else if (score > 80) {
				num9++;
			} else if (score > 70) {
				num8++;
			} else if (score > 60) {
				num7++;
			} else if (score > 50) {
				num6++;
			} else if (score > 40) {
				num5++;
			} else if (score > 30) {
				num4++;
			} else if (score > 20) {
				num3++;
			} else if (score > 10) {
				num2++;
			} else if (score >= 0) {
				num1++;
			} else {
				num0++;
			}
		}
		model.addAttribute("num0", num0);
		numList.add(num1);
		numList.add(num2);
		numList.add(num3);
		numList.add(num4);
		numList.add(num5);
		numList.add(num6);
		numList.add(num7);
		numList.add(num8);
		numList.add(num9);
		numList.add(num10);
		model.addAttribute("list", numList);
		model.addAttribute("size", list.size());
		return "count";
	}

	@RequestMapping(value = "modify")
	public String modify(HttpServletRequest request, Model model) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					User user = userService.getUserByUsername(cookie.getValue());
					model.addAttribute("user", user);
					return "modify";
				}
			}
		}
		return "login";
	}

	@RequestMapping(value = "checkmodify", method = RequestMethod.POST)
	public void checkModify(@RequestParam(value = "id") String id, @RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password, @RequestParam(value = "rucaptcha") String rucaptcha,
			HttpServletRequest request, HttpServletResponse response) {
		String vcode = (String) request.getSession().getAttribute("vcode");
		System.out.println(id + ";" + rucaptcha + ";" + vcode);
		PrintWriter out;
		String oldUserString = null;
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		if (!rucaptcha.equals(vcode)) {
			try {
				out = response.getWriter();
				out.println("<script language='javascript'>");
				out.println("alert(\"" + "验证码错误" + " 请重新输入！" + "\");");
				out.println("location.href='/driver/modify';");
				out.println("</script>");
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					oldUserString = cookie.getValue();
					break;
				}
			}
		}
		String oldId = userService.getUserByUsername(oldUserString).getId();
		User user = new User();
		user.setId(id);
		user.setUsername(username);
		user.setPassword(password);
		System.out.println(user);
		if (!oldId.equals(id)) {
			examingService.updataIdById(id, oldId);
		}
		userService.update(user, oldUserString);
		try {
			out = response.getWriter();
			out.println("<script language='javascript'>");
			out.println("alert(\"" + "修改完，请重新登录！" + "\");");
			out.println("location.href='/driver/exit';");
			out.println("</script>");
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@RequestMapping(value = "/user")
	@ResponseBody
	public String getUser(@RequestParam(value = "id", required = false) String id,
			@RequestParam(value = "username", required = false) String username) {
		if (username != null) {
			User user = userService.getUserByUsername(username);
			if (user != null) {
				return "1";
			} else {
				return "0";
			}
		}
		if (id != null) {
			User user = userService.getUserById(id);
			if (user != null) {
				return "1";
			} else {
				return "0";
			}
		}
		return "0";
	}

	@RequestMapping(value = "list")
	public String list(Model model) {
		List<User> list = userService.getUsers();
		model.addAttribute("list", list);
		return "list";
	}

	@RequestMapping(value = "/checkScore", method = RequestMethod.GET)
	@ResponseBody
	public String checkScore(@RequestParam(value = "list") List<String> list, HttpServletRequest request,
			HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username")) {
				User user = userService.getUserByUsername(cookie.getValue());
				if (user.getScore() >= 0) {
					try {
						response.setCharacterEncoding("UTF-8");
						response.setContentType("text/html;charset=utf-8");
						PrintWriter writer = response.getWriter();
						writer.append("<Script Language=\"JavaScript\"> alert(\"您已经考过试了！！！！分数为:" + user.getScore()
								+ "\");" + "location.href='/driver/simulation';" + " </Script> ");
						writer.flush();
						writer.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				Examing examing = examingService.query(user.getId());
				String name = null;
				switch (examing.getExamId()) {
				case "1":
					name = "2017驾驶员科目四（一）";
					break;
				case "2":
					name = "2017驾驶员科目四（二）";
					break;
				case "3":
					name = "2017驾驶员科目四（三）";
					break;
				case "4":
					name = "2017驾驶员科目四（四）";
					break;
				}

				List<Item> lists = itemService.getItems(name);
				int score = 0;
				for (int i = 0; i < lists.size(); i++) {
					if (list.get(i).equals(lists.get(i).getTa())) {
						score++;
					}
					list.set(i, lists.get(i).getTa());
				}
				boolean found = false;
				long time = 0;
				for (int i = 0; i < cookies.length; i++) {
					if (cookies[i].getName().equals("time")) {
						time = Long.valueOf(cookies[i].getValue());
						found = true;
					}
				}
				if (found) {
					Date date = new Date();
					long currentlong = date.getTime();
					User currentUser = userService.getUserById(user.getId());
					if (currentlong > (time + 30 * 60 * 1000)) {
						if (currentUser.getScore() < 0) {
							currentUser.setScore(0);
							userService.addScore(currentUser.getId(), String.valueOf(currentUser.getScore()));
						}
					} else {
						if (currentUser.getScore() < 0) {
							if (list.size() > 80) {
								currentUser.setScore(score);
							} else {
								currentUser.setScore(score * 2);
							}
							userService.addScore(currentUser.getId(), String.valueOf(currentUser.getScore()));
							examingService.delete(user.getId());
						}
					}
				}
				return JSON.toJSONString(list);
			}
		}
		return "403";
	}

	@RequestMapping(value = "/excel")
	public String excel(HttpServletRequest request, HttpServletResponse response) {
		ExcelExportHelper helper = new ExcelExportHelper();
		String[] header = { "准考证", "用户名", "分数" };
		List<User> list = userService.getUsers();
		helper.exportExcelAndSave(header, list, "成绩总表", request.getContextPath(), "excel");
		return "excel";
	}

	@RequestMapping(value = "/examing", method = RequestMethod.GET)
	public void examing(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		String username = null;
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username")) {
				username = cookie.getValue();
			}
		}
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = null;
		try {
			writer = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		User user = userService.getUserByUsername(username);
		Examing examing = examingService.query(user.getId());
		if (examing == null && user.getScore() < 0) {
			System.out.println("2");
			writer.write("2");
			writer.flush();
			writer.close();
		} else {
			System.out.println("1");
			writer.write("1");
			writer.flush();
			writer.close();
		}
	}

	public Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}

}
