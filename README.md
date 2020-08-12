# Blog404

## 简介

​		前后端分离型个人博客系统，有前台展示页面和后台管理系统。集摄影、电影、音乐、学习笔记、日记等模块为一体，可用于知识管理、影像收藏、作品展示、生活记录。解决LeetCode、Instagram、LOFTER、豆瓣电影、豆瓣音乐、豆瓣读书、微博等平台功能分散，本地主机存储无法按需展示的问题，旨在打造一站式资料收藏陈列系统。

### 效果图

### 在线Demo

在线演示地址：xxxxxxxxxxxxxxxxxxxxxxxxx

测试用管理员账号密码：

## 版本与技术栈

### 前端

- Vue+ElementUI+Axios实现的前台展示页面，各模块色系独立，样式统一。

    项目根目录：Blog404/Front/Blog404-Client-ElementUI

    开发笔记详见：Blog404/resources/docs/前端 - 前台博客页面

- Vue+Axios实现的前台展示页面，各模块样式独立。

    项目根目录：Blog404/Front/Blog404-Client-Independent

    开发笔记详见：Blog404/resources/docs/前端 - 后台管理系统

### 后端

- Spring Boot+MyBatis Plus+Redis+RocketMQ+Shiro实现的后台管理系统。

    项目根目录：Blog404/End/Blog404-SpringBoot

    开发笔记详见：Blog404/resources/docs/后端 - Spring Boot版

- Spring Cloud+Oracle+Redis+Kafka+Shiro实现的后台管理系统，微服务型。

    项目根目录：Blog404/End/Blog404-SpringCloud

    开发笔记详见：Blog404/resources/docs/后端 - Spring Cloud版

## 运行

### 前端

在前端项目根目录下运行Git Bash，执行下列指令，浏览器将自动打开项目。

```vue
cnpm install
npm run dev
```

- 运行端口号在config/index.js文件内修改。

- 后端交互URL在src/utils/request.js文件内修改。

### 后端

- Spring Boot+MyBatis Plus+Redis+RocketMQ+Shiro实现的后台管理系统。

    项目根目录：Blog404/End/Blog404-SpringBoot

    - 启动端口号在/*          */文件内修改

    - 修改数据库连接

        /*          */文件内修改

    - 启动Redis

        ```
        
        ```

    - 启动RocketMQ

        ```
        
        ```

    - 启动Spring Boot启动类

        /*          */

- Spring Cloud+Oracle+Redis+Kafka+Shiro实现的后台管理系统，微服务型。

    项目根目录：Blog404/End/Blog404-SpringCloud

    - 启动端口号分别在各模块的/*          */文件内修改

    - 修改数据库连接

        /*          */文件内修改

    - 启动Redis

        ```
        
        ```

    - 启动Kafka

        ```
        
        ```

    - 启动各模块启动类

        /*          */

### 数据库

数据库文件目录：Blog404/resources/databases

数据库中执行.sql文件，导入数据库。

含原始.xlsx文件，便于修改内容。修改后可在Navicat中将.xlsx导入成数据记录。

## 模块与功能

### 前台展示页面

模块：HOME / CODE / PHOTOGRAPH / MOVIE / MUSIC / READING / DAILY / CONTACT

#### HOME

首页。

- 支持自动播放背景音乐，可暂停。/*     音量调节已隐藏待开放，待实现切歌     */
- 有头部导航栏、右上角估计迷你可全屏展开网格导航栏。
- 背景图片走马灯切换，hover时显示切换键。
- banner位置有鼠标粒子特效，不遮挡信息。
- 鼠标点击有爱心上浮特效。

#### CODE

模块：Java / Go / Front-End / Algorithm

代码、题解、笔记。

- 支持代码高亮显示。

- 支持关键词搜索、按标签分类。
- 已登录用户可进行文章收藏，留言讨论。
- 支持文章分页显示，默认按后台设置的优先级排序，可按时间顺序排序。

#### PHOTOGRAPH

##### Favorite

##### Album

##### Timeline

##### Photographer

#### MOVIE

##### Director

##### List

#### MUSIC

##### Artist

##### PlayList

#### READING

##### Note

##### Author

#### DAILY

##### Journal

##### Kittens

##### Travel

##### Collection

一些常用网站的收藏

#### CONTACT

### 后台管理系统

## 数据库设计

## 接口设计






