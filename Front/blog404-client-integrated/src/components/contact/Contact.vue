<template>
  <div class="container">
    <Banner></Banner>
    <Particles></Particles>
    <div class="content">
      <NavigationBackgroundColor></NavigationBackgroundColor>
      <Content></Content>
      <Footer></Footer>
    </div>
  </div>
</template>

<script>
  import Banner from '../template/Banner'
  import Particles from "../template/Particles";
  import NavigationBackgroundColor from '../template/Navigation-Background-Color'
  import Content from './Contact-Content'
  import Footer from '../template/Footer'

  export default {
    name: 'Contact',
    components: {
      Banner,
      Particles,
      NavigationBackgroundColor,
      Content,
      Footer,
    }
  }
</script>

<style scoped>
  /*<Banner>内的<info>*/
  .container >>> .info {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-daily-1.jpg");
  }

  .content{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-daily-3.jpg");
    background-size: 450px;
  }

  /*<NavigationBackgroundColor>内的<background> & <Footer>内的<footer>*/
  .content >>> .background, .content >>> .footer {
    background-color: rgba(115,174,196,0.7);
  }
</style>
