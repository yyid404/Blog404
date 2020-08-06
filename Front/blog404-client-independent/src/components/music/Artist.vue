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
  import Content from './Artist-Content'
  import Footer from '../template/Footer'

  export default {
    name: 'Artist',
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
    background-color: #efe9f2;
  }

  /*深度选择器*/
  .container >>> .info {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-music-1.jpg");
  }

  .body{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-music-1.jpg");
    background-size: 450px;
  }

  .body >>> .artist-content {
    background-color: #efe9f2;
  }

  .body >>> .footer {
    background-color: #9e93b6;
    color: #F4D0D8;
  }
</style>
