<template>
  <div class="container">
    <Banner></Banner>
    <Particles></Particles>
    <div class="content">
      <NavigationBackgroundColor></NavigationBackgroundColor>
      <router-view></router-view>
      <Footer></Footer>
    </div>
  </div>
</template>

<script>
  import Banner from '../template/Banner'
  import Particles from "../template/Particles";
  import NavigationBackgroundColor from '../template/Navigation-Background-Color'
  import Footer from '../template/Footer'

  export default {
    name: 'Code',
    components: {
      Banner,
      Particles,
      NavigationBackgroundColor,
      Footer,
    }
  }
</script>

<style scoped>
  /*深度选择器 .info为<Banner>内的<info>*/
  .container >>> .info {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-code-1.jpg");
  }

  .content{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-code-1.jpg");
    background-size: 450px;
  }

  /*<NavigationBackgroundColor>内的<background> & <Footer>内的<footer>*/
  .content >>> .background, .content >>> .footer {
    background-color: rgba(0,0,0,0.7);
  }
</style>
