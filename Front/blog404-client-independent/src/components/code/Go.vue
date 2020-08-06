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
  import Content from './Go-Content'
  import Footer from '../template/Footer'

  export default {
    name: 'Go',
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
    background-color: black;
  }

  /*深度选择器*/
  .container >>> .info {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-code-1.jpg");
  }

  .body{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-code-1.jpg");
    background-size: 450px;
  }

  .body >>> .footer {
    background-color: black;
    color: #b0b0b0;
  }
</style>
