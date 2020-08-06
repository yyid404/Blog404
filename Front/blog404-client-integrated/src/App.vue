<!--
<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
  #app{
    height: 100%;
    width: 100%;
    margin: 0px;
    padding: 0px;
    top: 0px;
    left: 0px;
    border: hidden;
    position: absolute;
  }
</style>
-->



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
  import Banner from './components/template/Banner'
  import Navigation from './components/daily/Navigation'
  import Content1 from './components/daily/Content-Kittens'
  import Content2 from './components/Content-Journal'
  import Content3 from './components/Content-Travel'
  import Footer from './components/template/Footer'

  export default {
    name: 'App',
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
  .el-header,
  .el-footer {
    background-color: #b3c0d1;
    color: #333;
    text-align: center;
    height: 100px;
    padding: 0px;
  }

  .el-main {
    background-color: #e9eef3;
    color: #333;
    text-align: center;
    line-height: 160px;
  }

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
