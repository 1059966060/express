#express是一个快递后台管理系统

##1.功能描述：该项目实现了快递员管理包裹的功能和管理员管理快递员的功能，使快递包裹管理和快递员管理更加高效
	功能列表：
	快递员
	（1）快递员登陆功能
	（2）创建包裹功能
	（3）包裹跟踪功能
	（4）快递员包裹查询功能（添加包裹网点信息功能）
	（5）快递员信息查询功能
	管理员
	（1）管理员登陆功能
	（2）添加快递员功能
	（3）查询快递员功能（重置密码功能）
	（4）管理员查询包裹功能
	其中快递员的功能管理员皆能使用，管理员功能快递员无法使用

##2.开发环境
	开发工具：eclipse  tomcat9.0
	开发环境：windows10  JDK 8.5

##3.项目结构简介

    |-- doc                           sql语句
    |-- src
    |   |-- applicationContext.xml
    |   |-- mybatis-config.xml
    |   |-- bean
    |   |   |-- Admit.java             管理员类
    |   |   |-- ExpressMan.java        快递员类
    |   |   |-- Packages.java          包裹类
    |   |   |-- PackageState.java      包裹状态类
    |   |   |-- User.java
    |   |-- controller
    |   |   |-- AdmitController.java         管理员业务
    |   |   |-- BaseController.java          统一异常处理
    |   |   |-- ExpressManController.java    快递员业务
    |   |   |-- LoginController.java         登陆业务
    |   |-- dao
    |   |   |-- AdmitDao.java          管理员数据访问类
    |   |   |-- ExpressManDao.java     快递员数据访问类
    |   |-- interceptor
    |   |   |-- LoginInterceptor.java    拦截控制器
    |   |-- mybatis
    |   |   |-- AdmitMapper.xml          管理员SQL映射文件
    |   |   |-- ExpressManMapper.xml    快递员SQL映射文件
    |   |-- service
    |   |   |-- AdmitService.java
    |   |   |-- AdmitServiceImpl.java    管理员service实体类
    |   |   |-- ExpressManService.java
    |   |   |-- ExpressManServiceImpl.java   快递员service实体类
    |   |-- until
    |       |-- Time.java                  工具类
    |-- WebContent
        |-- css               css文件
        |-- js
        |-- META-INF
        |   |-- MANIFEST.MF
        |-- WEB-INF
            |-- springmvc-servlet.xml      springmvc配置文件
            |-- web.xml                    web配置文件
            |-- jsp
            |   |-- left.jsp
            |   |-- login.jsp
            |   |-- main.jsp
            |   |-- right.jsp
            |   |-- top.jsp
            |   |-- welcome.jsp
            |   |-- admin                   管理员功能页面
            |   |   |-- add_courier.jsp
            |   |   |-- courier_info.jsp
            |   |   |-- package_info.jsp
            |   |   |-- query_courier.jsp
            |   |   |-- query_package.jsp
            |   |-- courier                 快递员功能页面
            |   |   |-- add_package.jsp
            |   |   |-- my_info.jsp
            |   |   |-- package_info.jsp
            |   |   |-- package_info_track.jsp
            |   |   |-- query_package.jsp
            |   |-- exception                异常处理
            |       |-- 400.jsp              400异常页面
            |       |-- error.jsp            未知错误页面
            |       |-- my-error.jsp         自定义错误页面
            |       |-- sql-error.jsp        数据库错误页面
            |-- lib                              依赖包


##4.业务介绍
页面及描述:
>admin:
>>1.add_courier.jsp: 添加快递员页面
>>2.courier_info.jsp: 快递员详情页面
>>3.package_info.jsp: 包裹详情页面
>>4.query_courier.jsp: 查询快递员页面
>>5.query_package.jsp: 查询包裹页面

>courier:
>>1.add_package.jsp: 添加包裹页面
>>2.my_info.jsp: 个人信息页面
>>3.package_info_track.jsp: 包裹跟踪页面
>>4.package_info.jsp: 包裹详情页面
>>5.query_package.jsp: 包裹查询页面

>1.login.jsp: 实现管理员和快递员的登陆
>2.main.jsp: 项目主页面
>3.left.jsp: 主页面左边功能模块
>4.righr.jsp: 主页面右边功能模块
>5.top.jsp: 主页面顶部模块
>6.welcome.jsp: 欢迎页面

##5.作者列表
Mis_ren

##6.联系方式
1059966060@qq.com


