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
      <div class="container-content">
        <div class="menu">
          <router-view></router-view>
          <el-menu
            :default-active="$route.path"
            class="el-menu-demo"
            router
            mode="horizontal"
            @select="handleSelect"
            background-color="#73aec4"
            text-color="#f9f177"
            active-text-color="white">
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
            <el-submenu index="6">
              <template slot="title">READING</template>
              <el-menu-item index="/NOTE">NOTE</el-menu-item>
              <el-menu-item index="/AUTHOR">AUTHOR</el-menu-item>
            </el-submenu>
            <el-submenu index="7">
              <template slot="title">DAILY</template>
              <el-menu-item index="/JOURNAL">JOURNAL</el-menu-item>
              <el-menu-item index="/KITTENS">KITTENS</el-menu-item>
              <el-menu-item index="/TRAVEL">TRAVEL</el-menu-item>
            </el-submenu>
            <el-menu-item index="/CONTACT">CONTACT</el-menu-item>
          </el-menu>
        </div>
        <div class="content">
          <el-timeline>
            <el-timeline-item timestamp="2020-08-04" placement="top" color="#83A0B9">
              <el-card>
                <img class="content-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-1.jpg">
                <p class="content-desc">和平饭店</p>
                <el-divider></el-divider>
                <p class="content-tag">Commit by Lemon 2020-08-04 20:46</p>
              </el-card>
              <el-card>
                <h3>服装是流动的建筑</h3>
                <p class="content-desc">一切具有创造性的人类活动最终目的形式便是建筑。所有实体艺术要彰显品格都往建筑上靠，所有非实体艺术则往诗歌和神话上靠。因为认识创造形式，而时间造就认识。越古早的，越可能是包容的、高蹈的。</p>
                <el-divider></el-divider>
                <p class="content-tag">Commit by Lemon 2020-08-04 12:06</p>
              </el-card>
            </el-timeline-item>
            <el-timeline-item timestamp="2020-06-16" placement="top">
              <el-card>
                <img class="content-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/journal/journal-Lemon-1.jpg">
                <p class="content-desc">少贴标签，世界还由不得你定义。</p>
                <el-divider></el-divider>
                <p class="content-tag">Commit by Lemon 2020-06-16 3:42</p>
              </el-card>
            </el-timeline-item>
          </el-timeline>
        </div>
        <el-footer height="30px">分页</el-footer>
      </div>
    </el-container>
  </div>
</template>

<script>
  export default {
    name: 'Journal',
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
    background-color: #f1f5f6;
  }

  .el-header {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-daily-1.jpg");
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
    margin: 0 auto 20px auto;
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

  .container-content{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-daily-2.jpg");
    background-size: 450px;
  }

  .menu{
    background-color: #73aec4;
    opacity: 70%;
    display:flex;
    justify-content:center;
  }

  .content{
    margin-top: 10px;
  }

  .el-timeline-item{
    margin-left: 16%;
  }

  .el-card{
    width: 747px;
    padding-left: 30px;
    padding-top: 10px;
    margin-bottom: 10px;
  }

  h3{
    margin-top: 0px;
  }

  .content-pic{
    width: 677px;
  }

  .content-tag{
    font-size: 10px;
    color: darkgray;
  }

  .el-footer {
    background-color: #73aec4;
    color: #f9f177;
    text-align: center;
    line-height: 30px;
    /*
        position: fixed;
    */
    bottom: 0px;
    width: 100%;
    opacity: 70%;
  }
</style>
