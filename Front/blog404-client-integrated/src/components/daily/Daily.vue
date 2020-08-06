<!--<template>
  <div class="container">
    <Banner></Banner>
    <div class="body">
      <navigation></navigation>
      <router-view></router-view>
      <Footer></Footer>
    </div>
  </div>
</template>-->


<template>
  <div class="content">
    <el-container>
      <el-header>
        <Navigation></Navigation>
      </el-header>
      <el-main>
        <router-view></router-view> <!--路由出口 -->
      </el-main>
      <el-footer>
        <Footer></Footer>
      </el-footer>
    </el-container>
  </div>
</template>

<script>
  import Banner from '../template/Banner'
  import Navigation from './Navigation'
  import Content1 from './Content-Kittens'
  import Content2 from './Content-Journal'
  import Content3 from './Content-Travel'
  import Footer from '../template/Footer'

  export default {
    name: 'Daily',
    components: {
      Banner,
      Navigation,
      Content1,
      Content2,
      Content3,
      Footer,
    }
  }
</script>
<style scoped>
  .container{
    background-color: #f1f5f6;
  }

  /*深度选择器*/
  .container >>> .info {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-daily-1.jpg");
  }

  .body{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-daily-3.jpg");
    background-size: 450px;
  }

  .body >>> .footer {
    background-color: #73aec4;
    color: #f9f177;
  }
</style>
