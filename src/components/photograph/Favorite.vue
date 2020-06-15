<template>
  <div class="container">
    <el-container>
      <el-header height="191px">
        <div class="info">
          <div class="margin-top">
          </div>
          <el-row class="demo-avatar demo-basic">
            <el-col :span="12">
              <div class="demo-basic&#45;&#45;circle">
                <div class="block"><el-avatar shape="square" :size="100" :src="squareUrl"></el-avatar></div>
                <div class="block" v-for="size in sizeList" :key="size">
                  <el-avatar shape="square" :size="size" :src="squareUrl"></el-avatar>
                </div>
              </div>
            </el-col>
          </el-row>
          <div class="nickname">
            鱼
          </div>
          <div class="introduce">
            404 Not Found
          </div>
        </div>
      </el-header>
      <div class="menu">
        <router-view></router-view>
        <el-menu
          :default-active="$route.path"
          class="el-menu-demo"
          router
          mode="horizontal"
          @select="handleSelect"
          background-color="black"
          text-color="grey"
          active-text-color="whitesmoke">
          <el-menu-item index="/Home">HOME</el-menu-item>
          <el-submenu index="2">
            <template slot="title">PHOTOGRAPH</template>
            <el-menu-item index="/Favorite">FAVORITE</el-menu-item>
            <el-menu-item index="/Album">ALBUM</el-menu-item>
            <el-menu-item index="/Timeline">TIMELINE</el-menu-item>
            <el-menu-item index="/Photographer">PHOTOGRAPHER</el-menu-item>
          </el-submenu>
          <el-submenu index="3">
            <template slot="title">MUSIC</template>
            <el-menu-item index="/ARTIST">ARTIST</el-menu-item>
            <el-menu-item index="/PLAYLIST">PLAYLIST</el-menu-item>
          </el-submenu>
          <el-submenu index="4">
            <template slot="title">MOVIE</template>
            <el-menu-item index="/DIRECTOR">DIRECTOR</el-menu-item>
            <el-menu-item index="/LIST">LIST</el-menu-item>
          </el-submenu>
          <el-submenu index="5">
            <template slot="title">CODE</template>
            <el-menu-item index="/Java">Java</el-menu-item>
            <el-menu-item index="/Go">Go</el-menu-item>
            <el-menu-item index="/Front-End">Front-End</el-menu-item>
            <el-menu-item index="/ALGORITHM">ALGORITHM</el-menu-item>
          </el-submenu>
          <el-menu-item index="/DAILY">DAILY</el-menu-item>
          <el-menu-item index="/ABOUT">ABOUT</el-menu-item>
          <el-menu-item index="/CONTACT">CONTACT</el-menu-item>
        </el-menu>
      </div>
      <div class="content">
        <el-row :gutter="5">
          <el-col :span="8">
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-1.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-2.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-3.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-4.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-5.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-6.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-7.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-8.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-9.jpg"></div>
          </el-col>
          <el-col :span="8">
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-10.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-11.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-12.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-13.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-14.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-15.jpg"></div>
          </el-col>
          <el-col :span="8">
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-16.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-17.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-18.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-19.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-20.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-21.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-22.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-23.jpg"></div>
            <div class="img"><img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-24.jpg"></div>
          </el-col>
        </el-row>
      </div>
      <el-footer height="30px">分页</el-footer>
    </el-container>
  </div>
</template>
<script>
  export default {
    name: 'Favorite',
    data () {
      return {
        circleUrl: "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png",
        squareUrl: "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-avatar-Lemon.jpg",
        activeIndex2: '1'
      }
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
  }
</script>

<style scoped>
  .container{
    background-color: black;
  }

  .el-header {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/background-banner-1.jpg");
    background-size: auto 100%;
    line-height: 0px;
  }

  .margin-top{
    height: 20px;
  }

  .el-row {
    margin-bottom: 20px;
  }

  .demo-avatar{
    width: 100px;
    margin: 0 auto 10px auto;
  }
  .nickname{
    color: whitesmoke;
    text-align: center;
    height: 25px;
  }
  .introduce{
    font-size: 12px;
    color: whitesmoke;
    text-align: center;
  }

  .menu{
    background-color: black;
    opacity: 100%;
    display:flex;
    justify-content:center;
  }

  .content{
    margin-left: 20px;
    margin-right: 20px;
  }

  img{
    width: 100%;
    margin-bottom: 1px;

  }

  .el-footer {
    background-color: black;
    color: white;
    text-align: center;
    line-height: 30px;
/*
    position: fixed;
*/
    bottom: 0px;
    width: 100%;
  }
</style>
