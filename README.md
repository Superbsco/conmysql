# conmysql
简单的ConnectMySQL例子

简单连接腾讯云服务器的mysql

附上详细教程：http://www.hspweb.cn/%E6%9C%AC%E5%9C%B0%E8%BF%9C%E7%A8%8B%E8%BF%9E%E6%8E%A5%E8%85%BE%E8%AE%AF%E4%BA%91%E6%9C%8D%E5%8A%A1%E5%99%A8ubuntu%E7%9A%84mysql/

测试查询mysql的用户，
查询结果，

可以选择写在servlet然后控制台输出
也可以在网页输出。

记得改动数据库地址和数据库，还有数据库用户密码

```java
 //URL指向要访问的数据库名mydata
 
 String url = "jdbc:mysql://127.0.0.1:3306/mysql";
 
 //MySQL配置时的用户名
 
 String user = "root";
 
 //MySQL配置时的密码
 
 String password = "密码";
 ```
