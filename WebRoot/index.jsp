<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
    <%
    //声明Connection对象
    Connection con;
    //驱动程序名
    String driver = "com.mysql.jdbc.Driver";
    //URL指向要访问的数据库名mydata
    String url = "jdbc:mysql://127.0.0.1:3306/mysql";
    //MySQL配置时的用户名
    String user = "root";
    //MySQL配置时的密码
    String password = "密码";
    //遍历查询结果集
    try {
        //加载驱动程序
        Class.forName(driver);
        //1.getConnection()方法，连接MySQL数据库！！
        con = DriverManager.getConnection(url,user,password);
        if(!con.isClosed())
        	out.print("Succeeded connecting to the Database!<br>");
        //2.创建statement类对象，用来执行SQL语句！！
        Statement statement = con.createStatement();
        //要执行的SQL语句
        String sql = "select * from user";
        //3.ResultSet类，用来存放获取的结果集！！
        ResultSet rs = statement.executeQuery(sql);
        out.print("-----------------<br>");
        out.print("执行结果如下所示:<br>");  
        out.print("-----------------<br>");  
         
        String job = null;
        String id = null;
        while(rs.next()){
            //获取stuname这列数据
            job = rs.getString("user");


            //输出结果
            out.print(job+"<br>");
        }
        rs.close();
        con.close();
    } catch(ClassNotFoundException e) {   
        //数据库驱动类异常处理
        out.print("Sorry,can`t find the Driver!<br>");   
        e.printStackTrace();   
        } catch(SQLException e) {
        //数据库连接失败异常处理
        e.printStackTrace();  
        }catch (Exception e) {
        // TODO: handle exception
        e.printStackTrace();
    }finally{
    	out.print("数据库数据成功获取！！");
    }
    %>
</body>
</html>
