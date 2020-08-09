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
  import Content from './List-Content'
  import Footer from '../template/Footer'

  export default {
    name: 'List',
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
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-movie-1.jpg");
  }

  .body{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-movie-1.jpg");
    background-size: 450px;
  }

  .body >>> .list-content {
    background-color: #efe9f2;
  }

  .body >>> .footer {
    background-color: #d7afce;
    color: #eae0ee;
  }
</style>
