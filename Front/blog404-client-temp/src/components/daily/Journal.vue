<template>
  <div class="container">
    <Banner></Banner>
    <div class="body">
      <navigation></navigation>
      <Content></Content>
      <Footer></Footer>
    </div>
  </div>
</template>

<script>
  import Banner from '../template/Banner'
  import Navigation from './Navigation'
  import Content from './Journal-Content'
  import Footer from '../template/Footer'

  export default {
    name: 'Journal',
    components: {
      Banner,
      Navigation,
      Content,
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
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-daily-2.jpg");
    background-size: 450px;
  }

  .body >>> .footer {
    background-color: #73aec4;
    color: #f9f177;
  }
</style>
