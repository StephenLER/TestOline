# SUFE在线考试系统
## 运行环境和安装说明
### 前端：文件夹exam_vue
（1）安装Node.js，可以通过官网 https://nodejs.org/ 下载并安装最新版本\
（2）打开终端（命令行界面），进入前端代码所在目录\
（3）执行 npm install 命令安装项目依赖\
（4）执行 npm run dev 启动前端服务器\
（5）在浏览器中访问 http://localhost:8088 或者根据终端输出的地址进行访问，即可查看运行效果
### 后端：文件夹springboot
（1）安装Java JDK和Apache Maven\
（2）配置Java和Maven环境变量\
（3）安装MySQL，设置密码，创建数据库exam\
（4）使用 `mysql` 命令行工具执行exam.sql\
（5）在springboot > src > main > resources > application.properties中将本地数据库密码更改为安装MySQL时设置的密码\
（6）打开终端，进入springboot文件夹所在目录 \
（7）执行 mvn spring-boot:run 启动后端服务器