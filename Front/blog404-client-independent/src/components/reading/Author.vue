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
  import Content from './Author-Content'
  import Footer from '../template/Footer'

  export default {
    name: 'Author',
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
    background-color: #EBF0E9;
  }

  /*深度选择器*/
  .container >>> .info {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-reading-1.jpg");
  }

  .body{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-reading-1.jpg");
    background-size: 450px;
  }

  .body >>> .author-content {
    background-color: #EBF0E9;
  }

  .body >>> .footer {
    background-color: #72B6A7;
    color: #f3d2ab;
  }
</style>
